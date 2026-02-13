class DashboardQueries {
  DashboardQueries._();

  static const String getLabPulse = r'''
    query GetLabPulse {
      labPulse {
        samplesInTransit
        samplesProcessing
        samplesCompleted
        samplesRejected
        tatAlerts {
          sampleId
          testName
          remainingMinutes
          severity
          deadline
        }
        capacity {
          currentLoad
          maxCapacity
          utilizationPercentage
          availableAnalyzers
          totalAnalyzers
        }
        trends {
          timestamp
          inTransit
          processing
        }
        timestamp
      }
    }
  ''';

  static const String getPhlebotomists = r'''
    query GetPhlebotomists($status: PhlebotomistStatus) {
      phlebotomists(status: $status) {
        id
        name
        phoneNumber
        email
        status
        currentLocation {
          latitude
          longitude
          accuracy
        }
        activeSamplesCount
        batteryLevel
        smartBagTemperature
        deviceId
        avatarUrl
        certifications
        stats {
          totalCollections
          todayCollections
          averageCollectionTime
          successRate
          rejectionCount
          averageIntegrityScore
        }
        lastActiveAt
        shiftStartTime
        shiftEndTime
      }
    }
  ''';

  static const String getPhlebotomistById = r'''
    query GetPhlebotomistById($id: ID!) {
      phlebotomist(id: $id) {
        id
        name
        phoneNumber
        email
        status
        currentLocation {
          latitude
          longitude
          altitude
          accuracy
          timestamp
        }
        activeSamplesCount
        batteryLevel
        smartBagTemperature
        deviceId
        avatarUrl
        certifications
        stats {
          totalCollections
          todayCollections
          averageCollectionTime
          successRate
          rejectionCount
          averageIntegrityScore
        }
        lastActiveAt
        shiftStartTime
        shiftEndTime
      }
    }
  ''';

  static const String watchLabPulse = r'''
    subscription WatchLabPulse {
      labPulseUpdated {
        samplesInTransit
        samplesProcessing
        samplesCompleted
        samplesRejected
        tatAlerts {
          sampleId
          testName
          remainingMinutes
          severity
          deadline
        }
        capacity {
          currentLoad
          maxCapacity
          utilizationPercentage
          availableAnalyzers
          totalAnalyzers
        }
        trends {
          timestamp
          inTransit
          processing
        }
        timestamp
      }
    }
  ''';

  static const String watchPhlebotomists = r'''
    subscription WatchPhlebotomists {
      phlebotomistsUpdated {
        id
        name
        status
        currentLocation {
          latitude
          longitude
          accuracy
        }
        activeSamplesCount
        batteryLevel
        smartBagTemperature
      }
    }
  ''';
}
