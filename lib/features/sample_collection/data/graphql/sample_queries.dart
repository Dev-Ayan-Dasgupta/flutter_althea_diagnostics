class SampleQueries {
  SampleQueries._();

  static const String getSamples = r'''
    query GetSamples(
      $status: SampleStatus
      $startDate: DateTime
      $endDate: DateTime
      $page: Int!
      $limit: Int!
    ) {
      samples(
        status: $status
        startDate: $startDate
        endDate: $endDate
        page: $page
        limit: $limit
      ) {
        edges {
          node {
            id
            vialId
            patientAbhaId
            patientName
            orderId
            testIds
            status
            collectionTime
            integrityScore {
              overallScore
              level
              calculatedAt
              factors {
                transitDelayScore
                temperatureComplianceScore
                handoverScore
                conditionScore
                timelinessScore
              }
              alerts {
                severity
                message
                type
                timestamp
              }
              recommendation
              requiresRecollection
            }
            chainOfCustody {
              id
              eventType
              actorId
              actorName
              actorRole
              timestamp
              location {
                latitude
                longitude
                accuracy
              }
              eventHash
              previousEventHash
              metadata {
                temperature
                humidity
                deviceId
                biometricSuccess
                barcodeValue
              }
              notes
            }
            phlebotomistId
            phlebotomistName
            labId
            labName
            reachedLabTime
            processingStartTime
            processingEndTime
            coldChainData {
              sampleId
              compliance {
                compliancePercentage
                breachCount
                maxDeviation
              }
              smartBagId
              isManualLogging
            }
            biometricVerification {
              verificationId
              patientDeviceId
              phlebotomistDeviceId
              timestamp
              success
              proximityDistance
              signalStrength
              failureReason
            }
            preAnalyticalRisk {
              riskScore
              riskLevel
              assessedAt
              recommendation
              requiresRecollection
              sampleViabilityProbability
            }
            condition {
              isHemolyzed
              isClotted
              isLipemic
              isIcteric
              volumeStatus
              containerIntegrity
              notes
            }
            notes
            imageUrls
            createdAt
            updatedAt
          }
          cursor
        }
        pageInfo {
          hasNextPage
          hasPreviousPage
          startCursor
          endCursor
        }
        totalCount
      }
    }
  ''';

  static const String getSampleById = r'''
    query GetSampleById($id: ID!) {
      sample(id: $id) {
        id
        vialId
        patientAbhaId
        patientName
        orderId
        testIds
        status
        collectionTime
        integrityScore {
          overallScore
          level
          calculatedAt
          factors {
            transitDelayScore
            temperatureComplianceScore
            handoverScore
            conditionScore
            timelinessScore
            transitDelayMinutes
            maxTemperatureDeviation
            numberOfHandovers
            totalTransitTime
          }
          alerts {
            severity
            message
            type
            timestamp
            metadata
          }
          recommendation
          requiresRecollection
        }
        chainOfCustody {
          id
          eventType
          actorId
          actorName
          actorRole
          timestamp
          location {
            latitude
            longitude
            altitude
            accuracy
            timestamp
          }
          eventHash
          previousEventHash
          metadata {
            temperature
            humidity
            deviceId
            appVersion
            bleDeviceId
            biometricSuccess
            barcodeValue
            additionalData
          }
          notes
        }
        phlebotomistId
        phlebotomistName
        labId
        labName
        reachedLabTime
        processingStartTime
        processingEndTime
        coldChainData {
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
        biometricVerification {
          verificationId
          patientDeviceId
          phlebotomistDeviceId
          timestamp
          success
          proximityDistance
          signalStrength
          failureReason
          attemptCount
          location {
            latitude
            longitude
          }
        }
        preAnalyticalRisk {
          riskScore
          riskLevel
          factors {
            type
            impact
            description
            detected
            metadata
          }
          assessedAt
          recommendation
          requiresRecollection
          sampleViabilityProbability
        }
        condition {
          isHemolyzed
          isClotted
          isLipemic
          isIcteric
          volumeStatus
          containerIntegrity
          notes
        }
        notes
        imageUrls
        createdAt
        updatedAt
      }
    }
  ''';

  static const String getSampleByVialId = r'''
    query GetSampleByVialId($vialId: String!) {
      sampleByVialId(vialId: $vialId) {
        id
        vialId
        patientAbhaId
        patientName
        orderId
        testIds
        status
        collectionTime
        phlebotomistId
        phlebotomistName
        createdAt
      }
    }
  ''';

  static const String watchSample = r'''
    subscription WatchSample($sampleId: ID!) {
      sampleUpdated(sampleId: $sampleId) {
        id
        vialId
        patientAbhaId
        patientName
        status
        collectionTime
        integrityScore {
          overallScore
          level
          calculatedAt
        }
        reachedLabTime
        processingStartTime
        processingEndTime
        updatedAt
      }
    }
  ''';

  static const String watchSamples = r'''
    subscription WatchSamples($status: SampleStatus) {
      samplesUpdated(status: $status) {
        id
        vialId
        patientName
        status
        collectionTime
        integrityScore {
          overallScore
          level
        }
        updatedAt
      }
    }
  ''';
}
