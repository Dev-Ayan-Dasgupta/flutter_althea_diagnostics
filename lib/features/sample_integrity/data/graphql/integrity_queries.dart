class IntegrityQueries {
  IntegrityQueries._();

  static const String calculateIntegrityScore = r'''
    mutation CalculateIntegrityScore($sampleId: ID!) {
      calculateIntegrityScore(sampleId: $sampleId) {
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
    }
  ''';

  static const String getIntegrityScore = r'''
    query GetIntegrityScore($sampleId: ID!) {
      integrityScore(sampleId: $sampleId) {
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
    }
  ''';

  static const String assessPreAnalyticalRisk = r'''
    mutation AssessPreAnalyticalRisk(
      $sampleId: ID!
      $collectionData: CollectionDataInput!
    ) {
      assessPreAnalyticalRisk(
        sampleId: $sampleId
        collectionData: $collectionData
      ) {
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
    }
  ''';

  static const String watchIntegrityScore = r'''
    subscription WatchIntegrityScore($sampleId: ID!) {
      integrityScoreUpdated(sampleId: $sampleId) {
        overallScore
        level
        calculatedAt
        recommendation
      }
    }
  ''';
}
