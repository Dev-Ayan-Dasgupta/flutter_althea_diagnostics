class AuthQueries {
  AuthQueries._();

  static const String login = r'''
    mutation Login($email: String!, $password: String!) {
      login(email: $email, password: $password) {
        accessToken
        refreshToken
        tokenType
        expiresIn
        issuedAt
        user {
          id
          name
          email
          phoneNumber
          avatarUrl
          role
          labId
          labName
          permissions
          createdAt
          lastLoginAt
        }
      }
    }
  ''';

  static const String sendOtp = r'''
    mutation SendOtp($phoneNumber: String!) {
      sendOtp(phoneNumber: $phoneNumber) {
        requestId
        expiresIn
      }
    }
  ''';

  static const String verifyOtp = r'''
    mutation VerifyOtp($phoneNumber: String!, $otp: String!) {
      verifyOtp(phoneNumber: $phoneNumber, otp: $otp) {
        accessToken
        refreshToken
        tokenType
        expiresIn
        issuedAt
        user {
          id
          name
          email
          phoneNumber
          avatarUrl
          role
          labId
          labName
          permissions
          createdAt
          lastLoginAt
        }
      }
    }
  ''';

  static const String refreshToken = r'''
    mutation RefreshToken($refreshToken: String!) {
      refreshToken(refreshToken: $refreshToken) {
        accessToken
        refreshToken
        tokenType
        expiresIn
        issuedAt
      }
    }
  ''';

  static const String getCurrentUser = r'''
    query GetCurrentUser {
      currentUser {
        id
        name
        email
        phoneNumber
        avatarUrl
        role
        labId
        labName
        permissions
        createdAt
        lastLoginAt
      }
    }
  ''';

  static const String logout = r'''
    mutation Logout {
      logout {
        success
      }
    }
  ''';

  static const String watchAuthState = r'''
    subscription WatchAuthState {
      authStateChanged {
        id
        name
        email
        role
      }
    }
  ''';
}
