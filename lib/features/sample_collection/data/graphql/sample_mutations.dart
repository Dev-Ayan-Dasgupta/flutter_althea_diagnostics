class SampleMutations {
  SampleMutations._();

  static const String updateSampleStatus = r'''
    mutation UpdateSampleStatus(
      $sampleId: ID!
      $status: SampleStatusInput!
      $notes: String
    ) {
      updateSampleStatus(
        sampleId: $sampleId
        status: $status
        notes: $notes
      ) {
        id
        status
        updatedAt
      }
    }
  ''';

  static const String addChainOfCustodyEvent = r'''
    mutation AddChainOfCustodyEvent(
      $sampleId: ID!
      $eventType: SampleEventType!
      $location: GeoLocationInput!
      $metadata: EventMetadataInput
      $notes: String
    ) {
      addChainOfCustodyEvent(
        sampleId: $sampleId
        eventType: $eventType
        location: $location
        metadata: $metadata
        notes: $notes
      ) {
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
    }
  ''';

  static const String updateSampleCondition = r'''
    mutation UpdateSampleCondition(
      $sampleId: ID!
      $condition: SampleConditionInput!
    ) {
      updateSampleCondition(
        sampleId: $sampleId
        condition: $condition
      ) {
        id
        condition {
          isHemolyzed
          isClotted
          isLipemic
          isIcteric
          volumeStatus
          containerIntegrity
          notes
        }
        updatedAt
      }
    }
  ''';

  static const String verifyBiometricHandshake = r'''
    mutation VerifyBiometricHandshake(
      $sampleId: ID!
      $patientDeviceId: String!
      $phlebotomistDeviceId: String!
      $proximityDistance: Float!
      $signalStrength: Int!
      $location: GeoLocationInput!
    ) {
      verifyBiometricHandshake(
        sampleId: $sampleId
        patientDeviceId: $patientDeviceId
        phlebotomistDeviceId: $phlebotomistDeviceId
        proximityDistance: $proximityDistance
        signalStrength: $signalStrength
        location: $location
      ) {
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
    }
  ''';

  static const String scanBarcode = r'''
    mutation ScanBarcode(
      $vialId: String!
      $phlebotomistId: ID!
      $location: GeoLocationInput!
    ) {
      scanBarcode(
        vialId: $vialId
        phlebotomistId: $phlebotomistId
        location: $location
      ) {
        id
        vialId
        status
        phlebotomistId
        phlebotomistName
        updatedAt
      }
    }
  ''';

  static const String markAsCollected = r'''
    mutation MarkAsCollected(
      $sampleId: ID!
      $collectionTime: DateTime!
      $location: GeoLocationInput!
      $imageUrls: [String!]
      $notes: String
    ) {
      markAsCollected(
        sampleId: $sampleId
        collectionTime: $collectionTime
        location: $location
        imageUrls: $imageUrls
        notes: $notes
      ) {
        id
        status
        collectionTime
        imageUrls
        notes
        updatedAt
      }
    }
  ''';

  static const String markAsReachedLab = r'''
    mutation MarkAsReachedLab(
      $sampleId: ID!
      $arrivalTime: DateTime!
      $location: GeoLocationInput!
    ) {
      markAsReachedLab(
        sampleId: $sampleId
        arrivalTime: $arrivalTime
        location: $location
      ) {
        id
        status
        reachedLabTime
        updatedAt
      }
    }
  ''';

  static const String rejectSample = r'''
    mutation RejectSample(
      $sampleId: ID!
      $reason: String!
      $requiresRecollection: Boolean!
      $imageUrls: [String!]
    ) {
      rejectSample(
        sampleId: $sampleId
        reason: $reason
        requiresRecollection: $requiresRecollection
        imageUrls: $imageUrls
      ) {
        id
        status
        notes
        updatedAt
      }
    }
  ''';

  static const String uploadSampleImages = r'''
    mutation UploadSampleImages(
      $sampleId: ID!
      $images: [Upload!]!
    ) {
      uploadSampleImages(
        sampleId: $sampleId
        images: $images
      ) {
        urls
      }
    }
  ''';
}
