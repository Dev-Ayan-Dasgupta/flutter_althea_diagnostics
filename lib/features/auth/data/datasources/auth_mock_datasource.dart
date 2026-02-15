import 'package:flutter/foundation.dart';
import '../../../../core/constants/permissions.dart';
import '../../../auth/domain/entities/user.dart';

class MockAuthDataSource {
  // Mock user database
  static final Map<String, MockUser> _mockUsers = {
    // Phlebotomist accounts
    'phlebotomist@altheacare.com': MockUser(
      email: 'phlebotomist@altheacare.com',
      password: 'phlebotomist123',
      user: User(
        id: 'phlebotomist-001',
        name: 'Rajesh Kumar',
        email: 'phlebotomist@altheacare.com',
        phoneNumber: '+91 98765 43210',
        avatarUrl: null,
        role: UserRole.phlebotomist,
        labId: 'lab-001',
        labName: 'AltheaCare Diagnostics - Mumbai',
        permissions: AppPermissions.getPermissionsForRole(
          UserRole.phlebotomist,
        ).toList(),
        createdAt: DateTime.now().subtract(const Duration(days: 180)),
        lastLoginAt: DateTime.now(),
        phlebotomistStatus: PhlebotomistStatus.active,
        currentBalance: 25840.50,
        totalCollections: 342,
        averageRating: 4.7,
        certifications: ['Certified Phlebotomist', 'Cold Chain Handler'],
        vehicleNumber: 'MH-02-AB-1234',
        isAvailableForCollection: true,
      ),
    ),

    // Lab Admin accounts
    'admin@altheacare.com': MockUser(
      email: 'admin@altheacare.com',
      password: 'admin123',
      user: User(
        id: 'admin-001',
        name: 'Dr. Priya Sharma',
        email: 'admin@altheacare.com',
        phoneNumber: '+91 98765 12345',
        avatarUrl: null,
        role: UserRole.labAdmin,
        labId: 'lab-001',
        labName: 'AltheaCare Diagnostics - Mumbai',
        permissions: AppPermissions.getPermissionsForRole(
          UserRole.labAdmin,
        ).toList(),
        createdAt: DateTime.now().subtract(const Duration(days: 365)),
        lastLoginAt: DateTime.now(),
        managedLabIds: ['lab-001', 'lab-002'],
        staffCount: 24,
        licenseNumber: 'LAB-MH-2023-001',
      ),
    ),

    // Lab Technician accounts
    'technician@altheacare.com': MockUser(
      email: 'technician@altheacare.com',
      password: 'technician123',
      user: User(
        id: 'technician-001',
        name: 'Amit Patel',
        email: 'technician@altheacare.com',
        phoneNumber: '+91 98765 67890',
        avatarUrl: null,
        role: UserRole.labTechnician,
        labId: 'lab-001',
        labName: 'AltheaCare Diagnostics - Mumbai',
        permissions: AppPermissions.getPermissionsForRole(
          UserRole.labTechnician,
        ).toList(),
        createdAt: DateTime.now().subtract(const Duration(days: 90)),
        lastLoginAt: DateTime.now(),
      ),
    ),

    // Quick test accounts (easier to remember)
    'test@test.com': MockUser(
      email: 'test@test.com',
      password: 'test123',
      user: User(
        id: 'test-phlebotomist',
        name: 'Test Phlebotomist',
        email: 'test@test.com',
        role: UserRole.phlebotomist,
        labId: 'lab-test',
        labName: 'Test Lab',
        permissions: AppPermissions.getPermissionsForRole(
          UserRole.phlebotomist,
        ).toList(),
        createdAt: DateTime.now(),
        phlebotomistStatus: PhlebotomistStatus.active,
        currentBalance: 15000.0,
        totalCollections: 150,
        averageRating: 4.5,
        isAvailableForCollection: true,
      ),
    ),
  };

  // OTP database (for mock OTP verification)
  static final Map<String, String> _mockOTPs = {
    '+91 98765 43210': '123456',
    '+91 98765 12345': '123456',
    '+91 98765 67890': '123456',
  };

  Future<User> login(String email, String password) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    final mockUser = _mockUsers[email.toLowerCase()];

    if (mockUser == null) {
      throw Exception('User not found');
    }

    if (mockUser.password != password) {
      throw Exception('Invalid password');
    }

    // Update last login
    mockUser.user = mockUser.user.copyWith(lastLoginAt: DateTime.now());

    debugPrint(
      '✅ Mock Login Successful: ${mockUser.user.name} (${mockUser.user.role.name})',
    );

    return mockUser.user;
  }

  Future<bool> verifyOTP(String phoneNumber, String otp) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    final expectedOTP = _mockOTPs[phoneNumber];

    if (expectedOTP == null) {
      throw Exception('Phone number not registered');
    }

    if (expectedOTP != otp) {
      throw Exception('Invalid OTP');
    }

    debugPrint('✅ Mock OTP Verified: $phoneNumber');

    return true;
  }

  Future<String> sendOTP(String phoneNumber) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    // Generate random 6-digit OTP (but for testing, we'll use 123456)
    final otp = '123456';
    _mockOTPs[phoneNumber] = otp;

    debugPrint('📱 Mock OTP Sent to $phoneNumber: $otp');

    return otp;
  }

  Future<void> logout() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    debugPrint('👋 Mock Logout');
  }
}

class MockUser {
  final String email;
  final String password;
  User user;

  MockUser({required this.email, required this.password, required this.user});
}
