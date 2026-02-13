class DashboardMutations {
  DashboardMutations._();

  static const String updatePhlebotomistLocation = r'''
    mutation UpdatePhlebotomistLocation(
      $phlebotomistId: ID!
      $location: GeoLocationInput!
    ) {
      updatePhlebotomistLocation(
        phlebotomistId: $phlebotomistId
        location: $location
      ) {
        id
        currentLocation {
          latitude
          longitude
          accuracy
          timestamp
        }
      }
    }
  ''';

  static const String updatePhlebotomistStatus = r'''
    mutation UpdatePhlebotomistStatus(
      $phlebotomistId: ID!
      $status: PhlebotomistStatus!
    ) {
      updatePhlebotomistStatus(
        phlebotomistId: $phlebotomistId
        status: $status
      ) {
        id
        status
      }
    }
  ''';

  static const String assignPhlebotomist = r'''
    mutation AssignPhlebotomist(
      $sampleId: ID!
      $phlebotomistId: ID!
    ) {
      assignPhlebotomist(
        sampleId: $sampleId
        phlebotomistId: $phlebotomistId
      ) {
        success
        message
      }
    }
  ''';

  static const String autoAssignPhlebotomist = r'''
    mutation AutoAssignPhlebotomist(
      $sampleId: ID!
      $patientLocation: GeoLocationInput!
      $isPriority: Boolean
    ) {
      autoAssignPhlebotomist(
        sampleId: $sampleId
        patientLocation: $patientLocation
        isPriority: $isPriority
      ) {
        id
        name
        phoneNumber
        currentLocation {
          latitude
          longitude
        }
        activeSamplesCount
      }
    }
  ''';
}
