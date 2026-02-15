# Staff Management Features Implementation

This document describes the implementation of staff management, permissions, wallet, and payout features for the Flutter Althea Diagnostics application.

## Features Implemented

### 1. Staff Management
- **Staff List Screen** (`StaffManagementScreen`): View all staff members with filtering and search capabilities
- **Staff Detail Screen** (`StaffDetailScreen`): View comprehensive details about a specific staff member
- **Add/Invite Staff**: Dialog to invite new staff members with role selection
- **Edit Staff**: Update staff member details including name, email, phone, role, and status
- **Remove Staff**: Remove staff members with confirmation dialog
- **Status Management**: Toggle staff status (Active, Inactive, Suspended, On Break)

### 2. Permissions Management
- **Permissions Dialog** (`PermissionsDialog`): Comprehensive permission management UI
- **Permission Categories**:
  - Sample Collection (collect samples, view history, scan barcodes)
  - Lab Operations (process samples, enter results, sign off results, quality control)
  - Analytics (view analytics, export reports)
  - Inventory (manage inventory, order supplies)
  - Cold Chain (monitor cold chain, manage equipment)
  - Staff Management (view staff, manage staff, manage permissions)
  - Financial (view wallet, request payout, manage payouts)

### 3. Navigation
- **Routes Added**:
  - `/staff-management` - Staff management screen
  - `/staff-management/:id` - Staff detail screen
  - `/wallet` - Wallet screen for viewing earnings and requesting payouts
  - `/payout-management` - Payout management screen for admins

- **Navigation Extensions**:
  - `goToStaffManagement()` - Navigate to staff management
  - `goToWallet()` - Navigate to wallet screen
  - `goToPayoutManagement()` - Navigate to payout management

### 4. Dashboard Integration
The dashboard now includes quick access cards for:
- **Manage Staff** (visible to Lab Admin and Platform Admin)
- **My Wallet** (visible to staff with wallet access)
- **Manage Payouts** (visible to Lab Admin and Platform Admin)

## File Structure

```
lib/
├── features/
│   ├── staff/
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   │   ├── staff_management_screen.dart (updated)
│   │   │   │   └── staff_detail_screen.dart (new)
│   │   │   └── widgets/
│   │   │       ├── edit_staff_dialog.dart (new)
│   │   │       └── permissions_dialog.dart (new)
│   │   └── domain/
│   │       └── entities/
│   │           └── staff.dart (existing)
│   ├── wallet/
│   │   └── presentation/
│   │       └── screens/
│   │           ├── wallet_screen.dart (existing)
│   │           └── payout_management_screen.dart (existing)
│   └── dashboard/
│       └── presentation/
│           └── screens/
│               └── dashboard_screen.dart (updated)
└── core/
    ├── config/
    │   └── routes/
    │       └── app_router.dart (updated)
    └── utils/
        └── navigation_extensions.dart (updated)
```

## Usage

### For Master Admin (Lab Owner)

1. **Access Staff Management**:
   - From the dashboard, tap on the "Manage Staff" card
   - Or navigate directly to `/staff-management`

2. **Add New Staff**:
   - Tap the "Invite Staff" floating action button
   - Enter email, phone number, and select role
   - Tap "Send Invite" to send invitation

3. **View Staff Details**:
   - Tap on any staff member card in the list
   - View comprehensive information about the staff member

4. **Edit Staff Member**:
   - Open staff details screen
   - Tap the edit icon in the header
   - Update details and tap "Save Changes"

5. **Manage Permissions**:
   - Open staff details screen
   - Tap "Manage Permissions" button
   - Select/deselect permissions by category
   - Tap "Save Changes"

6. **Remove Staff Member**:
   - Open staff details screen
   - Scroll to the "Danger Zone" section
   - Tap "Remove Staff Member"
   - Confirm the action

7. **Manage Payouts**:
   - From the dashboard, tap on "Manage Payouts" card
   - View pending withdrawal requests
   - Approve or reject requests with reasons

### For Staff Members

1. **Access Wallet**:
   - From the dashboard, tap on "My Wallet" card
   - View current balance and earnings
   - Request withdrawals

2. **View Permissions**:
   - Permissions are enforced throughout the app
   - Only accessible features are shown based on assigned permissions

## Permission System

The permission system uses a granular approach with permissions grouped into categories:

```dart
class StaffPermission {
  final String id;          // Unique identifier
  final String name;        // Display name
  final String description; // Brief description
  final String category;    // Permission category
}
```

### Permission Categories

1. **Sample Collection**: Controls access to sample collection features
2. **Lab Operations**: Controls access to lab processing and result entry
3. **Analytics**: Controls access to reports and analytics
4. **Inventory**: Controls inventory management capabilities
5. **Cold Chain**: Controls cold chain monitoring and management
6. **Staff Management**: Controls staff-related operations
7. **Financial**: Controls wallet and payout operations

## Security Considerations

1. **Role-Based Access**:
   - Staff management features are only visible to Lab Admin and Platform Admin
   - Wallet features are only visible to staff with wallet access

2. **Permission Checks**:
   - Permissions are checked on the server side (TODO: implement)
   - UI hides/shows features based on user role and permissions

3. **Confirmation Dialogs**:
   - Critical actions (remove staff, reject payouts) require confirmation
   - Clear warning messages explain the consequences

## Future Enhancements

1. **Backend Integration**:
   - Connect to actual GraphQL/REST APIs for CRUD operations
   - Implement real-time updates for staff status changes
   - Implement permission enforcement on the backend

2. **Advanced Features**:
   - Audit log for permission changes
   - Bulk staff operations
   - Staff performance metrics
   - Advanced filtering and sorting options

3. **Notifications**:
   - Notify staff when permissions change
   - Notify admins when new staff registers
   - Alert admins for pending payout requests

4. **Analytics**:
   - Staff performance dashboard
   - Payout analytics and trends
   - Permission usage statistics

## Testing

To test the implementation:

1. Build and run the application
2. Login as a Lab Admin or Platform Admin user
3. Navigate to the dashboard
4. Test each feature:
   - Add new staff (invite)
   - View staff list and details
   - Edit staff information
   - Manage permissions
   - Remove staff
   - Access wallet screen
   - Access payout management screen

## Notes

- The implementation uses mock data providers for now
- Backend integration is marked with `// TODO:` comments
- All UI components follow the existing design system
- The code maintains consistency with the existing codebase structure
