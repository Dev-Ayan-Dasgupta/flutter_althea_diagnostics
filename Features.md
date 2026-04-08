# AltheaCare Diagnostic Partner App — Feature Documentation

## Table of Contents

1. [What This App Does](#1-what-this-app-does)
2. [Architecture Overview](#2-architecture-overview)
3. [User Roles & Permissions](#3-user-roles--permissions)
4. [Core Infrastructure](#4-core-infrastructure)
5. [Feature: Onboarding](#5-feature-onboarding)
6. [Feature: Authentication](#6-feature-authentication)
7. [Feature: Dashboard (Lab Pulse)](#7-feature-dashboard-lab-pulse)
8. [Feature: Sample Collection](#8-feature-sample-collection)
9. [Feature: Sample Integrity](#9-feature-sample-integrity)
10. [Feature: Cold Chain Monitoring](#10-feature-cold-chain-monitoring)
11. [Feature: Result Entry](#11-feature-result-entry)
12. [Feature: Orders & Tracking](#12-feature-orders--tracking)
13. [Feature: Analytics](#13-feature-analytics)
14. [Feature: Performance Dashboard](#14-feature-performance-dashboard)
15. [Feature: Staff Management](#15-feature-staff-management)
16. [Feature: Wallet & Earnings](#16-feature-wallet--earnings)
17. [Feature: Search & Filtering](#17-feature-search--filtering)
18. [Feature: Notifications](#18-feature-notifications)
19. [Feature: Profile & Settings](#19-feature-profile--settings)
20. [Feature: Offline Sync](#20-feature-offline-sync)
21. [Cross-Feature Data Flow](#21-cross-feature-data-flow)
22. [Shared Widget Library](#22-shared-widget-library)

---

## 1. What This App Does

**AltheaCare Diagnostic Partner App** (`flutter_althea_diagnostics`) is a medical-grade mobile application for diagnostic laboratory operations in India. It connects phlebotomists (blood/sample collection professionals), lab technicians, pathologists, and lab administrators on a single platform.

The app's primary purpose is to:

- **Track biological samples end-to-end**, from a patient's home through transit, lab processing, and final result delivery.
- **Ensure sample quality** with real-time integrity scoring, cold chain temperature monitoring, and pre-analytical risk assessment.
- **Streamline lab workflows** by providing role-specific dashboards that surface actionable alerts, TAT (Turn-Around-Time) countdowns, capacity metrics, and analytics.
- **Maintain an immutable audit trail** (chain of custody) for every sample event using cryptographic hashing.
- **Integrate with India's ABHA health standard** by pushing signed lab results to the national Ayushman Bharat Health Account registry.
- **Operate offline**, queuing all actions locally and syncing automatically when connectivity is restored.

---

## 2. Architecture Overview

The app follows **Clean Architecture** with three distinct layers per feature:

```
lib/
├── core/                    # Shared infrastructure
│   ├── config/              # Theme, routing, design tokens
│   ├── constants/           # API URLs, app-wide constants
│   ├── domain/              # Base UseCase and Repository interfaces
│   ├── errors/              # Failure types (Freezed union)
│   ├── network/             # GraphQL client (HTTP + WebSocket)
│   ├── presentation/        # Shared screens (profile, settings, etc.)
│   │   └── widgets/         # Shared widget library (50+ widgets)
│   ├── providers/           # Cross-feature providers
│   ├── services/            # Connectivity, local notifications
│   └── sync/                # Offline queue & background sync
│       ├── models/          # SyncItem (Hive-backed)
│       └── services/        # SyncQueueService, BackgroundSyncService
└── features/                # One folder per bounded context
    ├── auth/
    ├── analytics/
    ├── cold_chain/
    ├── dashboard/
    ├── notifications/
    ├── onboarding/
    ├── orders/
    ├── performance/
    ├── result_entry/
    ├── sample_collection/
    ├── sample_integrity/
    ├── search/
    ├── staff/
    └── wallet/
```

Each feature folder contains:

| Layer | Purpose |
|---|---|
| `domain/entities/` | Immutable data classes (Freezed) |
| `domain/repositories/` | Abstract repository contracts |
| `domain/usecases/` | Single-responsibility business logic |
| `data/models/` | JSON-serializable DTO models with `toEntity()` / `fromEntity()` |
| `data/datasources/` | Remote (GraphQL) and local (Hive) data sources |
| `data/repositories/` | Concrete repository implementations |
| `presentation/providers/` | Riverpod providers wiring use cases to UI |
| `presentation/screens/` | Full-page widgets |

**State Management**: Flutter Riverpod with code generation (`riverpod_annotation`, `riverpod_generator`). Providers are either `AsyncNotifier` (for async data + mutation) or `StreamProvider` (for real-time subscriptions).

**Backend**: GraphQL over HTTP for queries/mutations; WebSocket (`graphql_flutter`) for live subscriptions (lab pulse, telemetry, sample status updates).

**Local Persistence**: Hive for structured offline data; `flutter_secure_storage` for auth tokens; `shared_preferences` for lightweight flags.

**Navigation**: `go_router` with a `ShellRoute` for the persistent bottom navigation bar (Dashboard → Samples → Integrity → Settings), and top-level routes for full-screen flows (scanner, cold chain, result entry, etc.).

---

## 3. User Roles & Permissions

### Entity: `User` (`lib/features/auth/domain/entities/user.dart`)

```
User
├── id, name, email, phoneNumber, avatarUrl
├── role: UserRole              (enum — see below)
├── labId, labName
├── permissions: List<String>   (granular permission strings)
├── createdAt, lastLoginAt
│
├── [Phlebotomist fields]
│   ├── phlebotomistStatus: PhlebotomistStatus (active/inactive/suspended/onBreak)
│   ├── currentBalance: double
│   ├── totalCollections: int
│   ├── averageRating: double
│   ├── certifications: List<String>
│   ├── vehicleNumber: String
│   └── isAvailableForCollection: bool
│
└── [Lab Admin fields]
    ├── managedLabIds: List<String>
    ├── staffCount: int
    └── licenseNumber: String
```

### `UserRole` enum

| Role | Key Capabilities |
|---|---|
| `phlebotomist` | Collect samples, scan barcodes, biometric verification, wallet access |
| `labAdmin` | Manage staff, approve payouts, view analytics, access all lab data |
| `labTechnician` | Process samples in the lab |
| `pathologist` | Sign off lab results, view clinical interpretation |
| `platformAdmin` | Full system access, manage multiple labs |

Role-based helpers on `User`:

- `isPhlebotomist`, `isLabAdmin`, `isLabTechnician`, `isPathologist`, `isPlatformAdmin`
- `hasWallet` → only phlebotomists
- `canManageStaff` → lab admin or platform admin
- `canCollectSamples` → phlebotomist
- `canProcessSamples` → lab technician or pathologist
- `canSignOffResults` → pathologist only

### Permission System

Permissions are stored as a `List<String>` on `User` and checked at runtime via `hasPermissionProvider` (a Riverpod `Provider.family<bool, String>`). The 20+ granular permissions are grouped in 7 categories:

1. **Sample Collection** — collect, scan barcode, biometric verify
2. **Lab Operations** — process, view results, sign off
3. **Analytics** — view analytics, export reports
4. **Inventory** — manage reagents, equipment
5. **Cold Chain** — view, log temperature
6. **Staff Management** — invite, remove, edit permissions
7. **Financial** — view wallet, request payout, approve payout

---

## 4. Core Infrastructure

### GraphQL Client (`core/network/graphql_client.dart`)

`GraphQLService` is a singleton that initializes:
- An `HttpLink` for queries and mutations (URL from `ApiConstants.graphqlUrl`)
- A `WebSocketLink` for subscriptions (`ApiConstants.graphqlWsUrl`) with auto-reconnect
- An `AuthLink` that injects `Authorization: Bearer <token>` from `FlutterSecureStorage` on every request
- A `GraphQLCache` backed by a Hive store for response caching

The combined `Link` uses `Link.split` to route subscription requests through WebSocket and all others through HTTP.

### Connectivity Service (`core/services/connectivity_service.dart`)

`ConnectivityService` is a singleton that:
- Polls network state at startup via `connectivity_plus`
- Streams `bool` (true = online) to `connectionStatusProvider`
- Triggers the background sync service whenever connectivity is restored

### Local Notification Service (`core/services/local_notification_service.dart`)

`LocalNotificationService` wraps `flutter_local_notifications` to display push alerts for TAT deadlines, cold chain breaches, and sample status changes. Priority levels map to Android `Importance` and iOS alert styles.

### App Shell & Navigation (`core/config/routes/`)

`AppShell` renders the persistent scaffold. On **mobile** it uses a `NavigationBar` (bottom); on **tablet/desktop** it uses a `NavigationRail` (side). Four tabs are always visible in the shell:

| Index | Route | Tab |
|---|---|---|
| 0 | `/` | Dashboard |
| 1 | `/samples` | Samples |
| 2 | `/integrity` | Integrity |
| 3 | `/settings` | Settings |

Full-screen routes (scanner, cold chain, result entry, wallet, staff, etc.) are pushed outside the shell, so the bottom bar is hidden.

**Authentication guard** in `routerProvider`:
1. If onboarding not completed → redirect to `/onboarding`
2. If onboarding done but not authenticated → redirect to `/login`
3. If authenticated on auth route → redirect to `/` (dashboard)

### Responsive Layout (`core/utils/responsive_helper.dart`)

`ResponsiveHelper.getDeviceType(context)` returns `DeviceType.mobile`, `.tablet`, or `.desktop`. All key screens branch on this value to adjust grid columns, spacing, and navigation patterns. Page transitions are `SlideTransition` on mobile and `NoTransitionPage` on larger screens.

---

## 5. Feature: Onboarding

**Purpose**: First-run experience that introduces the app's four key pillars to new users and requests necessary device permissions.

### Screens

- `OnboardingScreen` — 4-page `PageView` with swipe support, skip and next buttons
- `PermissionsScreen` — requests location, camera, notifications, and Bluetooth permissions

### Data Flow

1. `OnboardingScreen` renders an internal list of `_OnboardingData` objects (title, description, icon, gradient, feature bullet points). No repository or network call is involved.
2. On completion the screen writes `onboarding_completed = true` to `SharedPreferences`.
3. `routerProvider` reads this flag on every navigation check, ensuring the onboarding flow is never shown again.
4. `PermissionsScreen` calls `permission_handler` to request each platform permission individually.

### Widgets Used

- `OnboardingPage` (shared widget) — renders a single page card with icon, gradient background, title, description, and a `features` bullet list
- `PageIndicator` — animated dot indicator tracking current page
- `AppButton` — primary CTA button

---

## 6. Feature: Authentication

**Purpose**: Secure login via email/password or phone number + OTP. Manages JWT session lifecycle.

### Entities

| Entity | Key Fields |
|---|---|
| `User` | Full user profile (see Section 3) |
| `AuthToken` | `accessToken`, `refreshToken`, `tokenType`, `expiresIn`, `issuedAt`; computed `expiresAt` and `willExpireSoon` helpers |

### Data Models

`UserModel` / `AuthTokenModel` (Freezed + JSON serializable):
- `UserModel.fromEntity()` / `fromDomain()` convert `User` → model for serialization
- `UserModelX.toEntity()` performs case-insensitive `UserRole` enum parsing

### Use Cases

| Use Case | Input | Output |
|---|---|---|
| `Login` | email + password | `Either<Failure, User>` |
| `SendOtp` | phone number | `Either<Failure, void>` |
| `VerifyOtp` | phone + OTP | `Either<Failure, User>` |
| `GetCurrentUser` | — | `Either<Failure, User?>` |
| `Logout` | — | `Either<Failure, void>` |

### Providers

- `authRepositoryProvider` — switches between `MockAuthRepositoryImpl` (flag `useMockAuth = true`) and `AuthRepositoryImpl` backed by `AuthRemoteDataSourceImpl` (GraphQL) + `AuthLocalDataSourceImpl` (secure storage)
- `authProvider` (`AsyncNotifier<User?>`) — central auth state; `build()` restores session from storage; exposes `login()`, `loginWithOtp()`, `logout()`, `refresh()` methods
- `currentUserProvider` — convenience `Provider<User?>` selecting from `authProvider`

### Screens & Widgets

**`LoginScreen`**:
- Two modes toggled with `_isEmailLogin`:
  - Email + password form
  - Phone number input → `context.goToOtpVerification(phone: ...)`
- Animated `FadeTransition` + `SlideTransition` on load
- Calls `ref.read(authProvider.notifier).login(email, password)` or `sendOtp(phone)`
- On success, `routerProvider` redirect fires and navigates to `/`
- Widgets: `AppInputField`, `AppButton`

**`OtpVerificationScreen`**:
- Receives `phoneNumber` via query parameter
- `PinCodeFields` for 6-digit OTP input
- Calls `authProvider.notifier.loginWithOtp(phone, otp)`
- Countdown resend timer

### Data Flow

```
LoginScreen
  → authProvider.login(email, password)
    → LoginUseCase.call(params)
      → AuthRepository.login()
        → AuthRemoteDataSource.login() [GraphQL mutation]
        → AuthLocalDataSource.saveToken() [FlutterSecureStorage]
        → AuthLocalDataSource.saveUser()  [FlutterSecureStorage / SharedPreferences]
      ← Either<Failure, User>
    ← User stored in authProvider state
  → routerProvider redirect → DashboardScreen
```

---

## 7. Feature: Dashboard (Lab Pulse)

**Purpose**: The app's home screen. Shows a real-time snapshot of the entire lab pipeline — sample counts, TAT countdown alerts, capacity, and trend charts — tailored to the logged-in user's role.

### Entities

#### `LabPulse` (`features/dashboard/domain/entities/lab_pulse.dart`)

```
LabPulse
├── samplesInTransit: int
├── samplesProcessing: int
├── samplesCompleted: int
├── samplesRejected: int
├── tatAlerts: List<TatAlert>
│   └── TatAlert { sampleId, testName, remainingMinutes, severity, deadline }
│       severity: TatSeverity (normal / amber / critical)
├── capacity: LabCapacity
│   └── { currentLoad, maxCapacity, utilizationPercentage, availableAnalyzers, totalAnalyzers }
├── trends: List<SampleTrendData>
│   └── { timestamp, inTransit, processing }
└── timestamp: DateTime
```

#### `Phlebotomist` (`features/dashboard/domain/entities/phlebotomist.dart`)

```
Phlebotomist
├── id, name, phoneNumber, email
├── status: PhlebotomistStatus (available / assigned / inTransit / collecting / returning / offline)
├── currentLocation: GeoLocation?
├── activeSamplesCount: int
├── batteryLevel: double
├── smartBagTemperature: double?
├── deviceId: String?
├── certifications: List<String>
├── stats: PhlebotomistStats
│   └── { totalCollections, todayCollections, averageCollectionTime, successRate, rejectionCount, averageIntegrityScore }
└── shiftStartTime / shiftEndTime: DateTime?
```

### Use Cases

| Use Case | Description |
|---|---|
| `GetLabPulse` | Single fetch of current lab pulse snapshot |
| `WatchLabPulse` | Streams real-time LabPulse updates via GraphQL subscription |
| `AutoAssignPhlebotomist` | Assigns nearest available phlebotomist to an order |

### Providers

- `labPulseProvider` (`AsyncNotifier<LabPulse>`) — fetches on build, exposes `refresh()`
- `watchLabPulse` (`StreamProvider<LabPulse>`) — subscribes to real-time updates
- `dashboardRouteProvider` — computes the correct route for the logged-in role

### Screen: `DashboardScreen`

Renders as a `CustomScrollView` inside a gradient scaffold:

1. **App Bar** — greeting with the user's name (gradient text), animated refresh button (rotates during refresh), avatar (initial of name, navigates to `/profile`), notification bell (badge dot when unread).

2. **Stats Row** — four `StatsCard` widgets sourced from `LabPulse`:
   - Samples In Transit
   - Samples Processing
   - Completed Today
   - Rejected

3. **TAT Alerts** — a horizontal scroll of `AlertCard` widgets, each coloured by `TatSeverity` (green / amber / red). Tapping navigates to the sample detail.

4. **Lab Capacity** — a `MiniChart` (mini bar chart) of current load vs. max capacity, plus `availableAnalyzers / totalAnalyzers`.

5. **Trend Chart** — a `MiniChart` time-series of `SampleTrendData` showing transit vs. processing trends.

6. **Quick Access Cards** (role-gated):
   - "Scan Sample" → `/scan-barcode`
   - "View Analytics" → `AnalyticsDashboardScreen`
   - "Manage Staff" (Lab Admin / Platform Admin only) → `/staff-management`
   - "My Wallet" (users with `hasWallet`) → `/wallet`
   - "Manage Payouts" (Lab Admin / Platform Admin only) → `/payout-management`

**Refresh**: `_handleRefresh` calls `ref.read(labPulseProvider.notifier).refresh()` and animates the refresh button via `AnimationController`.

**Responsive layout**: On tablet/desktop, stats and TAT alerts render in a wider grid.

---

## 8. Feature: Sample Collection

**Purpose**: Full lifecycle management of a biological sample — from barcode scan or manual entry through physical collection and handover to the lab.

### Entities

#### `Sample` (`features/sample_collection/domain/entities/sample.dart`)

```
Sample
├── id, vialId
├── patientAbhaId, patientName, orderId
├── testIds: List<String>
├── status: SampleStatus         (union type — see below)
├── collectionTime: DateTime
├── integrityScore: SampleIntegrityScore
├── chainOfCustody: List<SampleEvent>
├── phlebotomistId?, phlebotomistName?
├── labId?, labName?
├── reachedLabTime?, processingStartTime?, processingEndTime?
├── coldChainData: ColdChainData?
├── biometricVerification: BiometricVerification?
├── preAnalyticalRisk: PreAnalyticalRiskAssessment?
├── condition: SampleCondition?
│   └── { isHemolyzed, isClotted, isLipemic, isIcteric, volumeStatus, containerIntegrity, notes }
├── notes: String?
├── imageUrls: List<String>
└── createdAt, updatedAt
```

#### `SampleStatus` — sealed union (Freezed)

| Variant | Extra Fields |
|---|---|
| `requested` | — |
| `assigned` | `phlebotomistId` |
| `inTransit` | `startTime`, `currentLocation: GeoLocation` |
| `reachedLab` | `arrivalTime` |
| `processing` | `startTime` |
| `completed` | `completionTime`, `resultId` |
| `rejected` | `reason`, `rejectedAt`, `requiresRecollection` |
| `cancelled` | `reason`, `cancelledAt` |

#### `SampleEvent` — immutable audit trail entry

```
SampleEvent
├── id, sampleId
├── eventType: SampleEventType (18 variants — collected, biometricVerified, barcodeScanned, transitStarted, etc.)
├── actorId, actorName, actorRole: ActorRole (phlebotomist / labTechnician / pathologist / labManager / system)
├── timestamp: DateTime
├── location: GeoLocation
├── eventHash: String           ← SHA hash of event content; links to previousEventHash for chain integrity
├── previousEventHash: String?
└── metadata: EventMetadata?    ← optional: temperature, deviceId, bleDeviceId, barcodeValue, etc.
```

#### `BiometricVerification` — Bluetooth proximity handshake

```
BiometricVerification
├── verificationId, patientDeviceId, phlebotomistDeviceId
├── timestamp, success: bool
├── proximityDistance: double (metres)
├── signalStrength: int (RSSI)
├── failureReason?, attemptCount?, location?
```

### Use Cases

| Use Case | Input | Output |
|---|---|---|
| `GetSamples` | `SampleFilter` | `Either<Failure, List<Sample>>` |
| `GetSampleById` | `sampleId` | `Either<Failure, Sample>` |
| `ScanBarcode` | `barcodeValue` | `Either<Failure, Sample>` |
| `VerifyBiometricHandshake` | sampleId, device IDs, proximity, RSSI, location | `Either<Failure, BiometricVerification>` |
| `MarkSampleAsCollected` | sampleId, collectionData | `Either<Failure, Sample>` |
| `WatchSample` | `sampleId` | `Stream<Either<Failure, Sample>>` (live updates) |

### Providers

- `samplesProvider(SampleFilter?)` (`AsyncNotifier<List<Sample>>`) — paginated list with `loadMore()`
- `sampleProvider(sampleId)` (`AsyncNotifier<Sample>`) — single sample with `refresh()`
- `scanBarcodeUseCaseProvider`, `verifyBiometricHandshakeUseCaseProvider`, etc. — use case providers wired by `riverpod_annotation`

### Screens & Widgets

**`SamplesListScreen`**:
- Horizontal `FilterChipCustom` row: All / In Transit / Processing / Completed / Rejected
- Infinite-scroll `ListView` via `ScrollController` — triggers `samplesProvider.notifier.loadMore()` at 200 px from bottom
- Each item rendered by `SampleListItem` (shared widget) — shows vialId, patient name, status badge, integrity score
- Floating action button (scan barcode) — animated with `AnimationController`, hides on scroll down
- Search icon → pushes `SearchScreen`

**`BarcodeScannerScreen`**:
- Full-screen `MobileScanner` with custom `ScannerOverlay` widget (animated corner lines)
- Torch toggle button
- On successful scan: calls `scanBarcodeUseCaseProvider`, vibrates (`vibration` package), shows `ScanSuccessAnimation` overlay, then navigates to `SampleDetailScreen(sampleId: ...)`
- On failure: shows error snackbar and resets
- Handles app lifecycle pauses (stops/starts camera via `WidgetsBindingObserver`)

**`ManualBarcodeEntryScreen`**:
- `AppInputField` with barcode format validation
- Submit → same flow as scanner

**`SampleDetailScreen`**:
- Three-tab layout (`TabController`):
  1. **Overview** — `InfoRow` widgets for patient name, ABHA ID, order ID, lab, phlebotomist, collection time; `StatusBadge` for current status
  2. **Chain of Custody** — `ListView` of `TimelineItem` widgets, one per `SampleEvent` sorted by timestamp. Each item shows actor, role, event type, timestamp, and location
  3. **Integrity** — `SampleIntegrityScore` metrics: overall score gauge, factor breakdown, `IntegrityAlert` list
- Header action buttons: **Collect** → `/collect-sample/:id`, **Cold Chain** → `/cold-chain/:id`, **Results** → `/results/entry/:sampleId`

**`SampleCollectionScreen`**:
- Guides the phlebotomist through the collection workflow for a specific sample (stub; core logic wired to `MarkSampleAsCollected` use case)

### Data Flow

```
SamplesListScreen
  → ref.watch(samplesProvider())
    → GetSamplesUseCase.call(filter)
      → SampleRepositoryImpl
        [online]  → SampleRemoteDataSource.getSamples() [GraphQL query]
        [offline] → SampleLocalDataSource.getCachedSamples() [Hive]
      ← List<Sample>
  ← renders SampleListItem per sample

Tap on sample → SampleDetailScreen(sampleId)
  → ref.watch(sampleProvider(id)) → GetSampleByIdUseCase → repository → GraphQL
  → WatchSample subscription streams real-time status updates
```

---

## 9. Feature: Sample Integrity

**Purpose**: Compute and display a 0–100 integrity score for every sample, and assess pre-analytical risk factors that may invalidate test results.

### Entities

#### `SampleIntegrityScore` (`features/sample_integrity/domain/entities/sample_integrity_score.dart`)

```
SampleIntegrityScore
├── overallScore: double (0–100)
├── level: IntegrityLevel (high: 80–100 / medium: 50–79 / low: 0–49)
├── calculatedAt: DateTime
├── factors: IntegrityFactors
│   ├── transitDelayScore (0–100)
│   ├── temperatureComplianceScore (0–100)
│   ├── handoverScore (0–100)
│   ├── conditionScore (0–100)
│   ├── timelinessScore (0–100)
│   ├── transitDelayMinutes?, maxTemperatureDeviation?
│   ├── numberOfHandovers?, totalTransitTime?
├── alerts: List<IntegrityAlert>
│   └── IntegrityAlert { severity: AlertSeverity, message, type: AlertType, timestamp }
│       AlertType: temperatureBreach / delayExceeded / multipleHandovers / containerCompromised /
│                  barcodeDiscrepancy / biometricFailed / preAnalyticalRisk
├── recommendation: String?
└── requiresRecollection: bool?
```

#### `PreAnalyticalRiskAssessment` (`features/sample_integrity/domain/entities/pre_analytical_risk.dart`)

```
PreAnalyticalRiskAssessment
├── riskScore: double (0–100)
├── riskLevel: RiskLevel (low / moderate / high / critical)
├── factors: List<RiskFactor>
│   └── RiskFactor { type: RiskFactorType, impact: double, description, detected?, metadata? }
│       RiskFactorType: hemolysisRisk / clottingRisk / transportDelayDegradation /
│                       incorrectTubeType / underfillOverfill / prolongedTimeToCentrifuge /
│                       excessiveAgitation / temperatureExposure / collectionTechniqueIssue /
│                       patientPreparationIssue
├── assessedAt: DateTime
├── recommendation: String?
├── requiresRecollection: bool?
└── sampleViabilityProbability: double?
```

### Use Cases

| Use Case | Input | Output |
|---|---|---|
| `GetIntegrityScore` | `sampleId` | `Either<Failure, SampleIntegrityScore>` |
| `CalculateIntegrityScore` | `sampleId` | `Either<Failure, SampleIntegrityScore>` — triggers recalculation server-side |
| `AssessPreAnalyticalRisk` | `sampleId`, `collectionData: Map` | `Either<Failure, PreAnalyticalRiskAssessment>` |

### Providers

- `integrityScoreProvider(sampleId)` — `AsyncNotifier<SampleIntegrityScore>`
- `preAnalyticalRiskProvider(sampleId)` — `AsyncNotifier<PreAnalyticalRiskAssessment>`

### Screens & Widgets

**`IntegrityDashboardScreen`**: Overview of all samples' integrity levels (high/medium/low distribution), breach counts, and samples flagged as requiring recollection.

**Shared widgets used across features**:
- `StatusBadge` — colour-coded pill for integrity levels (green / amber / red)
- `AlertCard` — displays an `IntegrityAlert` with icon, severity colour, and message

### How Integrity Score Is Embedded in `Sample`

The `Sample` entity includes an `integrityScore: SampleIntegrityScore` field. This is populated from the GraphQL response (joined server-side) so every screen that fetches a `Sample` automatically has its score without a separate API call. The score is also recomputed on demand via `CalculateIntegrityScore` (e.g. after a cold chain event or condition update).

---

## 10. Feature: Cold Chain Monitoring

**Purpose**: Track the temperature and physical conditions of a sample's storage bag throughout transit to prevent quality degradation.

### Entities

#### `ColdChainData` (`features/cold_chain/domain/entities/cold_chain_data.dart`)

```
ColdChainData
├── sampleId: String
├── readings: List<TelemetryReading>
│   └── TelemetryReading { timestamp, temperature (°C), humidity?, shockDetected?, tiltDetected?,
│                          lidOpenDetected?, batteryLevel?, location: GeoLocation?, deviceId? }
├── compliance: ColdChainCompliance
│   ├── compliancePercentage: double (0–100)
│   ├── totalReadings, compliantReadings, breachCount: int
│   ├── breaches: List<TemperatureBreach>
│   │   └── { startTime, endTime, peakTemperature, durationSeconds, severity: BreachSeverity }
│   │       BreachSeverity: minor (<2°C / <5 min) / moderate (2–4°C or 5–15 min) / severe (>4°C or >15 min)
│   ├── maxDeviation: double
│   ├── totalExposureDuration: int (seconds)
│   └── cumulativeStress: CumulativeThermalStress
│       └── { stressIndex: double (0–100), predictedDegradation (%), recommendation? }
├── monitoringStartTime: DateTime
├── monitoringEndTime?: DateTime
├── smartBagId?: String          ← BLE device identifier
└── isManualLogging?: bool
```

### Use Cases

| Use Case | Input | Output |
|---|---|---|
| `GetColdChainData` | `sampleId` | `Either<Failure, ColdChainData>` |
| `LogTemperature` | sampleId, temperature, humidity?, location | `Either<Failure, TelemetryReading>` |
| `WatchTelemetry` | `sampleId` | `Stream<Either<Failure, TelemetryReading>>` — WebSocket subscription |

### Providers

- `coldChainProvider(sampleId)` (`AsyncNotifier<ColdChainData>`) — fetches on build, exposes `refresh()` and `logTemperature()`
- `watchTelemetryProvider(sampleId)` (`StreamProvider<TelemetryReading>`) — live sensor stream

### Screens & Widgets

**`ColdChainMonitorScreen`** (parametrised by `sampleId`):

- **Header** — back button, "Cold Chain — Temperature Monitoring" title, `LiveIndicator` toggle for enabling/disabling the real-time subscription
- **Temperature Gauge** — `TemperatureGauge` widget (circular arc gauge from 0°C to 40°C, colour-coded safe zone 2–8°C) centred on the latest `TelemetryReading.temperature`. Also shows humidity, battery level, and shock status as metric tiles
- **Compliance Card** — `compliancePercentage` badge (green ≥ 95%, red otherwise), total readings, breach count, max deviation
- **Two-tab `TabBarView`**:
  - **Temperature History** — `TemperatureChart` widget (line chart via `syncfusion_flutter_charts`) with min/max guide lines at 2°C and 8°C, all historical `TelemetryReading` points plotted
  - **Breaches** — `BreachCard` list showing each `TemperatureBreach` with severity icon, peak temperature, duration, and start/end times; empty state with a green check icon if no breaches

- **FAB** → navigates to `ColdChainLogScreen` (manual reading entry)

**`ColdChainLogScreen`** — form for manually logging a temperature reading when BLE is unavailable (populated with current GPS location).

### BLE Integration

The app is wired to `flutter_blue_plus` for Bluetooth Low Energy. The `smartBagId` on `ColdChainData` represents the BLE peripheral. `WatchTelemetry` is backed by a GraphQL subscription but the data originates from a smart bag IoT device that pushes readings to the backend.

### Data Flow

```
ColdChainMonitorScreen
  → ref.watch(coldChainProvider(sampleId))
    → GetColdChainDataUseCase → ColdChainRepository → ColdChainRemoteDataSource [GraphQL]
  → LiveIndicator toggled on
    → watchTelemetryProvider(sampleId) [WebSocket subscription]
      → each new TelemetryReading arrives → provider appends to readings list → UI rebuilds
  → Tap "+ Log" FAB → ColdChainLogScreen
    → LogTemperatureUseCase → GraphQL mutation
    [offline] → SyncQueueService enqueues SyncItem(entityType: temperature, data: {...})
```

---

## 11. Feature: Result Entry

**Purpose**: Allow lab technicians and pathologists to enter, review, and officially sign off on diagnostic test results. Includes OCR auto-fill and ABHA integration.

### Entities

#### `LabResult` (`features/result_entry/domain/entities/lab_result.dart`)

```
LabResult
├── id, sampleId, patientAbhaId, orderId
├── testResults: List<TestResult>
│   └── TestResult { testId, testName, loincCode, parameters: List<ParameterResult>,
│                   methodology?, specimenType?, analyzedAt? }
│       └── ParameterResult { parameterId, parameterName, loincCode,
│                             value: ResultValue,     ← union: numeric / text / range / qualitative
│                             unit, referenceRange: ReferenceRange,
│                             flag: ResultFlag,        ← normal/borderlineHigh/borderlineLow/high/low/critical/abnormal
│                             notes?, historicalValues?: List<double>,
│                             requiresDoubleEntry?, verifiedValue?, isVerified? }
│           ReferenceRange { min?, max?, textRange?, ageGroup, gender, condition? }
├── status: ResultStatus    (pending → inProgress → pendingReview → reviewed → signedOff → dispatched)
├── pathologistId?, pathologistName?
├── clinicalInterpretation?: String
├── digitalSignature?: String
├── signedOffAt?: DateTime
├── pdfUrl?: String
├── pushedToAbha?: bool
└── abhaPushTime?: DateTime
```

### Use Cases

| Use Case | Input | Output |
|---|---|---|
| `UpdateParameterResult` | resultId, parameterId, value | `Either<Failure, ParameterResult>` |
| `ScanResultSheet` | imagePath, testId | `Either<Failure, List<ParameterResult>>` — OCR auto-fill |
| `SignOffResult` | resultId, pathologistId, digitalSignature | `Either<Failure, LabResult>` |
| `PushToAbha` | resultId, patientAbhaId | `Either<Failure, void>` |

### Screen: `ResultEntryScreen` (parametrised by `sampleId`)

- Displays all `TestResult`s for the sample as expandable cards
- Each `ParameterResult` row shows: name, LOINC code, input field (numeric or qualitative), unit, reference range, and a `ResultFlag` badge (coloured by severity)
- Parameters flagged `requiresDoubleEntry = true` show a second "verify value" field; entry is locked until both values match
- **Historical sparkline** — `historicalValues` renders a miniature `MiniChart` inline per parameter
- **OCR Button** — launches camera/image picker → `ScanResultSheetUseCase` uses `google_mlkit_text_recognition` to extract values and pre-fills parameter fields
- **Sign Off** (pathologist only) — prompts for digital signature, calls `SignOffResultUseCase`
- **Push to ABHA** — calls `PushToAbhaUseCase`; status reflected by `pushedToAbha` flag
- **Generate PDF** — uses `pdf` + `printing` packages to create a formatted report

### Data Flow

```
ResultEntryScreen(sampleId)
  → Fetch LabResult for sample → LabResultRepository → GraphQL
  → User enters values → UpdateParameterResultUseCase per field change
  → Pathologist taps Sign Off
    → SignOffResultUseCase(resultId, pathologistId, digitalSignature)
    ← LabResult with status = signedOff, signedOffAt set
  → Tap Push to ABHA
    → PushToAbhaUseCase(resultId, patientAbhaId)
    ← LabResult.pushedToAbha = true, abhaPushTime set
```

---

## 12. Feature: Orders & Tracking

**Purpose**: Real-time order management for phlebotomist dispatch and en-route tracking to patient location.

### Entities

#### `CollectionOrder` (`features/orders/domain/entities/order.dart`)

```
CollectionOrder
├── id, patientId, patientName, patientPhone, patientAddress
├── patientLocation: GeoLocation
├── testIds, testNames: List<String>
├── status: OrderStatus
│   (pending → accepted → onTheWay → arrived → collectionInProgress → collectionCompleted → inTransit → delivered / cancelled)
├── requestedAt, acceptedAt?, startedAt?, arrivedAt?, collectionStartedAt?,
│   collectionCompletedAt?, deliveredAt?: DateTime
├── assignedPhlebotomistId?, assignedPhlebotomistName?
├── phlebotomistCurrentLocation?: GeoLocation
├── distanceToPatient?: double
├── estimatedArrivalMinutes?: int
├── cancellationReason?, sampleId?, notes?
└── collectionFee?: double
```

`OrderAuthentication` — QR code or OTP verification at patient's door, including timestamp and GPS confirmation.

`OrderTracking` — snapshot of phlebotomist location at a point in time (for backend telemetry).

### Screen: `OrderTrackingScreen` (parametrised by `order`)

- Full-screen `GoogleMap`:
  - Phlebotomist pin at `_currentPosition` (live GPS via `geolocator`)
  - Patient pin at `order.patientLocation`
  - `Polyline` route between them (via `flutter_polyline_points`)
- `_startLocationTracking()` subscribes to `Geolocator.getPositionStream()` (10-metre filter, high accuracy) and streams updates to the backend
- Status panel at the bottom: order status chip, estimated arrival, action buttons (arrived, start collection, etc.)
- **Patient Authentication Sheet** (`PatientAuthenticationSheet`): launched when phlebotomist marks arrival. Supports QR scan or OTP entry to verify patient identity before collection begins
- Camera auto-pauses when app goes to background (lifecycle observer)

### `OrdersListScreen`

- Paginated list of `CollectionOrder`s with filter chips (pending / in progress / completed)
- Each item rendered by `OrderCard` (shared widget) — shows patient name, distance, status, ETA
- Tap → `OrderTrackingScreen`

---

## 13. Feature: Analytics

**Purpose**: Summarised performance and quality reporting for lab administrators and platform admins.

### Entities

```
AnalyticsData
├── summary: AnalyticsSummary
│   └── { totalSamples, completedSamples, rejectedSamples, inTransitSamples,
│          completionRate, rejectionRate, averageTAT, tatBreaches }
├── trends: List<TrendData>
│   └── { date, samples, completed, rejected, avgTat }
├── byCategory: List<CategoryData>
│   └── { category, count, percentage, color }
├── performance: PerformanceMetrics
│   └── { tatCompliance, coldChainCompliance, integrityScoreAvg, totalBreaches, criticalAlerts }
├── quality: QualityMetrics
│   └── { preAnalyticalQuality, collectionQuality, transportQuality, qualityIncidents }
└── generatedAt: String
```

`ReportType`: `daily` / `weekly` / `monthly` / `custom`
`ReportFormat`: `pdf` / `excel` / `csv`

### Screen: `AnalyticsDashboardScreen`

- **Date filter chips** — Daily / Weekly / Monthly / Custom (date picker TODO), wired to `selectedReportTypeProvider`
- **Three-tab `TabBarView`** (managed by `TabController`):
  1. **Overview** — `MetricCard` grid showing summary numbers; `BarChartWidget` (from `fl_chart`) for trend data
  2. **Performance** — TAT compliance gauge, cold chain compliance, integrity score average, breach/alert counts
  3. **Quality** — pre-analytical, collection, and transport quality scores; incident count
- **Export button** (header right) — opens an export options sheet to choose `ReportFormat`; generates PDF via `pdf` + `printing`, or CSV/Excel

**`LabAdminAnalyticsScreen`** — extended view for lab admins with per-phlebotomist breakdowns and multi-lab comparisons.

### Widgets Used

- `MetricCard` — key figure with label, trend indicator, and optional mini chart
- `BarChartWidget` — wraps `fl_chart` `BarChart` with AltheaCare theming
- `PieChartWidget` — wraps `fl_chart` `PieChart` for category distribution
- `FilterChipCustom` — date range selector chips

---

## 14. Feature: Performance Dashboard

**Purpose**: Personal performance view for phlebotomists — stats, achievements, ratings.

### Entity: `PhlebotomistPerformance` (`features/performance/domain/entities/performance.dart`)

```
PhlebotomistPerformance
├── userId: String
├── stats: PerformanceStats
│   └── { totalCollections, successfulCollections, rejectedSamples, successRate,
│          averageIntegrityScore, averageRating, totalRatings,
│          tatComplianceRate, coldChainComplianceRate,
│          streakDays, bonusesEarned }
├── ratings: List<Rating>
│   └── { id, sampleId, stars (1–5), comment?, reviewerName, timestamp }
├── achievements: List<Achievement>
│   └── { id, title, description, icon, unlockedAt, tier: AchievementTier }
│       AchievementTier: bronze / silver / gold / platinum
├── quality: QualityMetrics
│   └── { integrityScoreAvg, collectionQuality, documentationQuality, punctualityScore, qualityIncidents }
└── lastUpdated: DateTime
```

### Screen: `PerformanceDashboardScreen`

- **Three-tab layout**:
  1. **Stats** — `PerformanceStatCard` widgets for key numbers; streak counter; bonuses earned
  2. **Ratings** — scrollable list of `ReviewCard` widgets (star rating, patient comment, date via `timeago`)
  3. **Achievements** — `AchievementBadge` widgets displayed as a wrap grid; locked achievements shown greyed out
- `RatingDisplay` widget — average star rating with count label
- Insights button (header right) — TODO: opens a personalized recommendation sheet

---

## 15. Feature: Staff Management

**Purpose**: Enables Lab Admins and Platform Admins to manage their workforce — invite new staff, view profiles, edit roles, manage permissions, and remove members.

### Entities

#### `StaffMember` (`features/staff/domain/entities/staff.dart`)

```
StaffMember
├── id, name, email, phoneNumber
├── role: UserRole, status: PhlebotomistStatus
├── labId, joinedAt: DateTime
├── avatarUrl?, certifications?: List<String>
├── currentBalance?, totalCollections?, averageRating?
├── isOnline: bool, lastActiveAt?
```

#### `StaffInvitation`

```
StaffInvitation
├── id, labId, labName
├── invitedEmail, invitedPhoneNumber
├── roleOffered: UserRole
├── status: InvitationStatus (pending / accepted / rejected / expired)
├── createdAt, expiresAt?, acceptedAt?
└── invitedBy?: String
```

#### `StaffFilters`

Filter state: role, status, isOnline, searchQuery.

### Screen: `StaffManagementScreen`

- **Search bar** (`SearchBarCustom` widget) with live text-based filter applied client-side
- **Filter icon** badge showing active filter count → opens `StaffFilterSheet` bottom sheet (role, status, online toggles)
- **"Invite Staff" FAB** → `InviteStaffDialog`:
  - Email / phone number input
  - Role selection (`RoleSelector` widget — visual role picker)
  - Sends invitation; backend creates a `StaffInvitation` record
- Staff list of `StaffCard` widgets (shared) — avatar, name, role badge, online indicator, collection count, rating
- Tap → `StaffDetailScreen`

### Screen: `StaffDetailScreen`

- Full profile: avatar, name, role, status, join date, certifications
- **Edit Staff** button → `EditStaffDialog` (name, phone, email fields; role change)
- **Manage Permissions** button → `PermissionsDialog`:
  - 7 category groups displayed as expandable sections
  - Each permission has a toggle switch
  - 20+ granular permissions mapped by category (see Section 3)
- **Remove Staff** button → confirmation `AlertDialog` → API call to deactivate
- Stats summary: total collections, average rating, current balance

### Filters Applied Client-Side

`_applyFilters(staffList, filters)` filters the in-memory `staffListProvider` list by role, status, and online state. Server-side filtering can be added by passing the `StaffFilters` object to the API layer.

---

## 16. Feature: Wallet & Earnings

**Purpose**: Phlebotomists track earnings from sample collections, request withdrawals, and link bank/UPI accounts.

### Entities

```
Wallet
├── userId, balance, totalEarnings, totalWithdrawals, pendingAmount
├── recentTransactions: List<Transaction>
│   └── Transaction { id, type: TransactionType, amount, status: TransactionStatus,
│                     timestamp, description, sampleId?, referenceId? }
│       TransactionType: earning / withdrawal / bonus / penalty / refund
│       TransactionStatus: pending / completed / failed / cancelled
├── linkedBankAccount?: BankAccount
│   └── { id, accountHolderName, accountNumber, ifscCode, bankName, isVerified }
└── linkedUpiAccount?: UpiAccount
    └── { id, upiId, name, isVerified }

Earnings
├── today, thisWeek, thisMonth: double
├── samplesCollectedToday, thisWeek, thisMonth: int
├── averagePerSample: double
└── last7Days: List<DailyEarning>
    └── { date, amount, samplesCount }

WithdrawalRequest
├── id, userId, amount
├── status: WithdrawalStatus (pending / processing / completed / rejected)
├── requestedAt, processedAt?
├── method: WithdrawalMethod (bankTransfer / upi)
├── bankAccountId?, upiId?
├── rejectionReason?, transactionId?
```

### Screen: `WalletScreen`

- **`WalletCard`** widget at top — large balance display with gradient card, pending amount, total earnings
- **`EarningsCard`** widget — today / this week / this month earnings with sample counts
- **Daily earnings chart** — `BarChartWidget` for `last7Days`
- **Two-tab `TabBarView`**:
  1. **Transactions** — `TransactionItem` list per `Transaction` (icon by type, formatted amount, relative time via `timeago`, status chip)
  2. **Withdraw** — current balance reminder, `WithdrawalRequestCard` list for past requests; "New Withdrawal" opens `WithdrawalSheet` bottom sheet:
     - Method selector (bank transfer / UPI)
     - Amount input (validated ≤ balance)
     - Confirmation step

### Screen: `PayoutManagementScreen`

For Lab Admins / Platform Admins to review and approve or reject pending `WithdrawalRequest`s submitted by phlebotomists. Each request shows user name, amount, method, requested date; approve / reject action buttons.

---

## 17. Feature: Search & Filtering

**Purpose**: Unified full-text and multi-criteria search across all samples.

### Entities

#### `SampleFilter`

```
SampleFilter
├── searchQuery?: String
├── status?: SampleStatus
├── startDate?, endDate?: DateTime
├── integrityLevel?: IntegrityLevel
├── phlebotomistId?, labId?: String
├── hasTatBreach?, hasColdChainBreach?: bool
├── minIntegrityScore?, maxIntegrityScore?: double
└── testIds?: List<String>

Extensions:
  .isEmpty   → bool (all fields null/empty)
  .activeFilterCount → int (number of non-null active criteria)
```

#### `SearchHistoryItem`

```
SearchHistoryItem { id, query, timestamp, type: SearchType (text / barcode / filter) }
```

### Screen: `SearchScreen`

- `SearchBarCustom` widget with real-time `_onSearchChanged` updating `searchQueryProvider` and `sampleFilterProvider.searchQuery`
- **Scan shortcut** icon in search bar → `context.goToScanBarcode()` (barcode search)
- **Filter icon** with `activeFilterCount` badge → `AdvancedFilterSheet` bottom sheet:
  - Status multi-select
  - Date range pickers (start / end)
  - Integrity level chips
  - TAT breach / cold chain breach toggles
  - Integrity score range slider
  - Test ID input
  - "Apply" → updates `sampleFilterProvider`
- **`RecentSearches`** widget (visible when search field is empty) — list of last 10 `SearchHistoryItem`s; tap to restore query
- **Results** — `SampleListItem` list sourced from `samplesProvider(filter)`; empty state if no matches

### Provider Interactions

```
searchQueryProvider (String)  ──┐
sampleFilterProvider (SampleFilter) ──► samplesProvider(filter) ──► GetSamplesUseCase
```

Both providers update in `_onSearchChanged` and `_onFilterTap` callbacks; `samplesProvider` re-fetches whenever its family parameter changes.

---

## 18. Feature: Notifications

**Purpose**: Surface TAT alerts, cold chain breaches, sample status updates, and system messages in a prioritised feed.

### Entity: `AppNotification`

```
AppNotification
├── id, title, message
├── type: NotificationType (tatAlert / sampleStatus / coldChainBreach / systemAlert / general)
├── priority: NotificationPriority (low / medium / high / critical)
├── timestamp: DateTime
├── isRead: bool
├── imageUrl?, actionUrl?
└── metadata?: Map<String, dynamic>
```

### Screen: `NotificationsScreen`

- **Filter chip row**: All / TAT Alerts / Samples / Cold Chain / System — filters the `notificationsProvider` list in-memory
- **"Mark all as read"** and **"Clear All"** actions (with confirm dialog for clear)
- `NotificationItem` list widget per notification — icon by type, priority colour strip (red for critical, orange for high, etc.), title, truncated message, relative timestamp via `timeago`
- Tap on notification → navigates to `actionUrl` if present (e.g. sample detail)

### Local Notifications

`LocalNotificationService` shows system-level push notifications via `flutter_local_notifications`. Notification channels are configured with importance mapped from `NotificationPriority`:

| Priority | Android Importance | iOS |
|---|---|---|
| critical | max (heads-up) | critical alert sound |
| high | high | alert + sound |
| medium | default | alert |
| low | min | silent |

---

## 19. Feature: Profile & Settings

### Profile (`core/presentation/screens/profile_screen.dart`)

- Reads `currentUserProvider` to display:
  - `ProfileHeader` widget — avatar (initials if no URL), name, email, phone
  - Role badge — colour-coded pill per `UserRole`
  - Lab affiliation
  - Certifications list
  - Account creation date, last login
- Edit profile button (TODO: modal sheet for updating name/avatar)

### Settings (`core/presentation/screens/settings_screen.dart`)

Sectioned list using `SettingsSectionHeader` and `SettingsListItem` widgets:

| Section | Items |
|---|---|
| **Appearance** | Dark / Light mode toggle (writes to `themeProvider`) |
| **Sync** | Navigate to `SyncSettingsScreen` |
| **About** | App version (from `package_info_plus`), Help Center (WebView), Privacy Policy |
| **Account** | Logout (confirm dialog → `authProvider.notifier.logout()` → navigate to `/login`) |

**`SyncSettingsScreen`**: Configure sync interval, view pending queue size, trigger manual sync.

**`HelpCenterScreen`** / **`AboutScreen`**: WebView (`webview_flutter`) screens loading help documentation URLs.

---

## 20. Feature: Offline Sync

**Purpose**: Ensure the app works without internet connectivity and automatically reconciles local changes with the backend.

### Models & Storage

#### `SyncItem` (`core/sync/models/sync_item.dart`)

```
SyncItem (Hive typeId: 1)
├── id: String (UUID)
├── entityType: SyncEntityType (sample / temperature / chainOfCustody / integrityScore)
├── operation: SyncOperation (create / update / delete)
├── data: Map<String, dynamic>    ← serialised payload
├── status: String                ← pending / inProgress / completed / failed
├── createdAt: String
├── lastAttemptAt?: String
├── retryCount: int (default: 0)
└── error?: String
```

### `SyncQueueService`

Wraps a Hive box (`sync_queue`) to:
- `enqueue(SyncItem)` — persist a new pending item
- `getPendingItems()` — returns all items with `status != completed`
- `updateItemStatus(itemId, status, error?)` — marks progress/failure
- `clearCompleted()` — prunes the queue
- `queueSize` — `Stream<int>` of pending item count (drives the offline badge in app header)

### `BackgroundSyncService`

- Singleton, initialized in `main()` with injected data sources
- **Triggers**: (1) connectivity restored — `ConnectivityService.connectionStatus` stream; (2) periodic timer every 5 minutes
- `syncNow()`:
  1. Guards against concurrent execution (`_isSyncing` flag)
  2. Fetches all pending `SyncItem`s
  3. Processes each via `_syncItem(item)`:
     - `SyncEntityType.sample` → `SampleRemoteDataSource.updateSampleStatus()`
     - `SyncEntityType.temperature` → `ColdChainRemoteDataSource.logTemperature()`
     - `SyncEntityType.chainOfCustody` → `SampleRemoteDataSource.addChainOfCustodyEvent()`
  4. On success → marks `completed`; on failure → increments `retryCount`, marks `failed` after 3 attempts
  5. Emits `SyncProgress` events via a broadcast `StreamController`

### Global Sync UI

In `DiagnosticPartnerApp.builder` (main.dart), two widgets are stacked at the top of every screen:

- `OfflineIndicator` — shown when `connectionStatusProvider` is false OR `syncQueueSizeProvider > 0`. Displays "Offline — N items pending"
- `SyncStatusBanner` — shown when `syncProgressProvider` has a non-null value. Shows a progress bar and retry button that calls `BackgroundSyncService.syncNow()`

### How Offline Data Entry Works (Example: Temperature Log)

```
User logs temperature while offline
  → LogTemperatureUseCase.call(params)
    → ColdChainRepositoryImpl checks ConnectivityService.isOnline
      [offline] → SyncQueueService.enqueue(SyncItem{
                    entityType: temperature,
                    operation: update,
                    data: { sampleId, temperature, humidity, location }
                  })
                → returns Right(TelemetryReading) with local timestamp
  → App resumes connectivity
    → BackgroundSyncService.syncNow() fires
      → reads pending SyncItems
      → _syncTemperatureItem → ColdChainRemoteDataSource.logTemperature()
      → marks item completed
      → SyncStatusBanner shows completion
```

---

## 21. Cross-Feature Data Flow

This section describes how the major features are connected.

### Sample Lifecycle End-to-End

```
[ABHA Patient Portal creates test order]
    │
    ▼
DashboardScreen (Lab Pulse)
  ─ tatAlerts surface the new sample
  ─ Lab Admin uses AutoAssignPhlebotomistUseCase → Phlebotomist.status = assigned
    │
    ▼
Phlebotomist: OrderTrackingScreen
  ─ GPS tracking to patient home
  ─ PatientAuthenticationSheet (QR / OTP)
    │
    ▼
BarcodeScannerScreen
  ─ ScanBarcodeUseCase → fetches Sample by vialId
  ─ SampleEvent(barcodeScanned) appended to chain of custody
    │
    ▼
SampleCollectionScreen
  ─ VerifyBiometricHandshakeUseCase (BLE proximity check)
  ─ SampleEvent(biometricVerified, collected)
  ─ MarkSampleAsCollectedUseCase → Sample.status = inTransit
    │
    ▼ (Transit)
ColdChainMonitorScreen
  ─ WatchTelemetry subscription streams temperature readings
  ─ TemperatureBreach detected → IntegrityAlert added → re-calculates SampleIntegrityScore
    │
    ▼ (Arrives at lab)
SampleDetailScreen (Lab Tab)
  ─ SampleEvent(reachedLab) → status = reachedLab
  ─ AssessPreAnalyticalRiskUseCase runs with collection metadata
  ─ CalculateIntegrityScoreUseCase produces final score
    │
    ▼
ResultEntryScreen
  ─ Lab technician enters values (optionally via OCR ScanResultSheetUseCase)
  ─ UpdateParameterResultUseCase per field
  ─ Pathologist → SignOffResultUseCase → LabResult.status = signedOff
  ─ PushToAbhaUseCase → ABHA registry updated
    │
    ▼
Analytics / Performance Dashboard
  ─ Completed sample rolls into AnalyticsSummary.completedSamples
  ─ Phlebotomist's successRate, averageIntegrityScore, earnings updated
  ─ WalletScreen shows new Transaction(type: earning)
```

### Provider Dependency Graph (Key Cross-Feature Links)

```
authProvider (User?)
  └── currentUserProvider
        ├── DashboardScreen (greeting, role-gated cards)
        ├── routerProvider (authentication guard)
        ├── dashboardRouteProvider (role-specific redirect)
        ├── userPermissionsProvider → hasPermissionProvider
        └── ProfileScreen

labPulseProvider
  └── DashboardScreen
        └── TatAlert.sampleId → SampleDetailScreen

sampleProvider(id)
  ├── SampleDetailScreen
  ├── coldChainProvider(id) [by sampleId]
  └── integrityScoreProvider(id) [by sampleId]

connectionStatusProvider + syncQueueSizeProvider
  └── OfflineIndicator (global overlay)

syncProgressProvider
  └── SyncStatusBanner (global overlay)
```

---

## 22. Shared Widget Library

All shared widgets live in `lib/core/presentation/widgets/`. They are imported via `export.dart` barrel file.

| Widget | Purpose |
|---|---|
| `AppButton` | Primary / secondary / destructive CTA with optional icon and loading state |
| `AppCard` | Surface card with gradient background and shadow |
| `AppInputField` | Themed text field with optional prefix/suffix icons and error text |
| `AlertCard` | Coloured card for integrity or TAT alerts; severity-driven colour |
| `AchievementBadge` | Tier-coloured badge (bronze/silver/gold/platinum) with icon and title |
| `BarChartWidget` | `fl_chart`-backed bar chart with AltheaCare theme |
| `BreachCard` | Temperature breach summary card with severity icon and duration |
| `EarningsCard` | Earnings period card with sample count subtitle |
| `EmptyState` | Centred illustration + message for empty lists |
| `FilterChipCustom` | Toggleable filter pill with optional icon |
| `GradientText` | Text rendered with a `LinearGradient` shader |
| `InfoRow` | Labelled value row (label left, value right) |
| `LiveIndicator` | Animated pulsing red dot labelled "LIVE" when active |
| `MetricCard` | KPI card with headline number, label, and trend indicator |
| `MiniChart` | Small inline sparkline chart |
| `NotificationItem` | Notification list tile with priority colour strip |
| `OfflineIndicator` (a.k.a. `OfflineIndicatorWidget`) | Banner showing offline status and pending queue count |
| `OnboardingPage` | Full onboarding slide with icon, gradient, and feature bullets |
| `OrderCard` | Order list tile with patient, distance, status, ETA |
| `PageIndicator` | Animated dot page indicator for `PageView` |
| `PerformanceStatCard` | Stats card with percentage bar for performance metrics |
| `PieChartWidget` | `fl_chart`-backed pie chart |
| `ProfileHeader` | Avatar (initials fallback) + name, email, phone |
| `ProtectedRoute` | Route guard widget for permission-based screen access |
| `RatingDisplay` | Star rating row with numeric average and review count |
| `RecentSearches` | Scrollable list of past search history items |
| `ReviewCard` | Patient review card with stars, comment, reviewer name, and time |
| `RoleSelector` | Visual role picker (icon grid) used in staff invitation |
| `SampleListItem` | Sample row tile with vialId, status badge, integrity score |
| `ScanSuccessAnimation` | Lottie/animated overlay shown after a successful barcode scan |
| `ScannerOverlay` | Animated targeting frame overlay for camera scanner |
| `SearchBarCustom` | Themed search text field with scan and filter icons |
| `SettingsListItem` | Tappable settings row with leading icon, title, and optional trailing widget |
| `SettingsSectionHeader` | Bold section heading for settings groups |
| `StaffCard` | Staff member list tile with avatar, role badge, online dot |
| `StatsCard` | Dashboard stat card with icon, count, and label |
| `StatusBadge` | Colour-coded pill label for sample status or integrity level |
| `SyncStatusBanner` | Top-of-screen sync progress bar with retry button |
| `TemperatureChart` | Time-series line chart for cold chain temperature history (Syncfusion) |
| `TemperatureGauge` | Circular arc gauge widget for current temperature reading |
| `TimelineItem` | Chain-of-custody event row with icon, actor, and timestamp |
| `TransactionItem` | Wallet transaction row with type icon, amount, and status |
| `WalletCard` | Gradient card showing balance and earnings summary |
| `WithdrawalRequestCard` | Payout request row with status, amount, and method |

---

*This document was generated from source analysis of `flutter_althea_diagnostics` v1.0.0+1.*
