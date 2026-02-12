class ColdChainQueries {
  ColdChainQueries._();

  static const String logTemperature = r'''
    mutation LogTemperature(
      $sampleId: ID!
      $temperature: Float!
      $humidity: Float
      $location: GeoLocationInput!
    ) {
      logTemperature(
        sampleId: $sampleId
        temperature: $temperature
        humidity: $humidity
        location: $location
      ) {
        timestamp
        temperature
        humidity
        location {
          latitude
          longitude
        }
      }
    }
  ''';

  static const String ingestTelemetry = r'''
    mutation IngestTelemetry(
      $sampleId: ID!
      $readings: [TelemetryReadingInput!]!
      $deviceId: String!
    ) {
      ingestTelemetry(
        sampleId: $sampleId
        readings: $readings
        deviceId: $deviceId
      ) {
        success
      }
    }
  ''';

  static const String getColdChainData = r'''
    query GetColdChainData($sampleId: ID!) {
      coldChainData(sampleId: $sampleId) {
        sampleId
        readings {
          timestamp
          temperature
          humidity
          shockDetected
          tiltDetected
          lidOpenDetected
          batteryLevel
          location {
            latitude
            longitude
          }
          deviceId
        }
        compliance {
          compliancePercentage
          totalReadings
          compliantReadings
          breachCount
          breaches {
            startTime
            endTime
            peakTemperature
            durationSeconds
            severity
            notes
          }
          maxDeviation
          totalExposureDuration
          cumulativeStress {
            stressIndex
            predictedDegradation
            recommendation
          }
        }
        monitoringStartTime
        monitoringEndTime
        smartBagId
        isManualLogging
      }
    }
  ''';

  static const String startMonitoring = r'''
    mutation StartMonitoring(
      $sampleId: ID!
      $smartBagId: String
      $isManualLogging: Boolean
    ) {
      startMonitoring(
        sampleId: $sampleId
        smartBagId: $smartBagId
        isManualLogging: $isManualLogging
      ) {
        sampleId
        monitoringStartTime
        smartBagId
        isManualLogging
      }
    }
  ''';

  static const String stopMonitoring = r'''
    mutation StopMonitoring($sampleId: ID!) {
      stopMonitoring(sampleId: $sampleId) {
        sampleId
        monitoringEndTime
      }
    }
  ''';

  static const String watchTelemetry = r'''
    subscription WatchTelemetry($sampleId: ID!) {
      telemetryUpdated(sampleId: $sampleId) {
        timestamp
        temperature
        humidity
        shockDetected
        location {
          latitude
          longitude
        }
      }
    }
  ''';

  static const String watchCompliance = r'''
    subscription WatchCompliance($sampleId: ID!) {
      complianceUpdated(sampleId: $sampleId) {
        compliancePercentage
        breachCount
        maxDeviation
      }
    }
  ''';
}
