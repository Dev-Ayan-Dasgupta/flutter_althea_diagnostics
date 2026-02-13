import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

enum TransactionType { earning, withdrawal, bonus, penalty, refund }

enum TransactionStatus { pending, completed, failed, cancelled }

enum WithdrawalStatus { pending, processing, completed, rejected }

@freezed
abstract class Wallet with _$Wallet {
  const factory Wallet({
    required String userId,
    required double balance,
    required double totalEarnings,
    required double totalWithdrawals,
    required double pendingAmount,
    required List<Transaction> recentTransactions,
    required DateTime lastUpdated,
    BankAccount? linkedBankAccount,
    UpiAccount? linkedUpiAccount,
  }) = _Wallet;
}

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required TransactionType type,
    required double amount,
    required TransactionStatus status,
    required DateTime timestamp,
    required String description,
    String? sampleId,
    String? referenceId,
    Map<String, dynamic>? metadata,
  }) = _Transaction;
}

@freezed
abstract class WithdrawalRequest with _$WithdrawalRequest {
  const factory WithdrawalRequest({
    required String id,
    required String userId,
    required double amount,
    required WithdrawalStatus status,
    required DateTime requestedAt,
    DateTime? processedAt,
    required WithdrawalMethod method,
    String? bankAccountId,
    String? upiId,
    String? rejectionReason,
    String? transactionId,
  }) = _WithdrawalRequest;
}

enum WithdrawalMethod { bankTransfer, upi }

@freezed
abstract class BankAccount with _$BankAccount {
  const factory BankAccount({
    required String id,
    required String accountHolderName,
    required String accountNumber,
    required String ifscCode,
    required String bankName,
    required bool isVerified,
  }) = _BankAccount;
}

@freezed
abstract class UpiAccount with _$UpiAccount {
  const factory UpiAccount({
    required String id,
    required String upiId,
    required String name,
    required bool isVerified,
  }) = _UpiAccount;
}

@freezed
abstract class Earnings with _$Earnings {
  const factory Earnings({
    required double today,
    required double thisWeek,
    required double thisMonth,
    required int samplesCollectedToday,
    required int samplesCollectedThisWeek,
    required int samplesCollectedThisMonth,
    required double averagePerSample,
    required List<DailyEarning> last7Days,
  }) = _Earnings;
}

@freezed
abstract class DailyEarning with _$DailyEarning {
  const factory DailyEarning({
    required DateTime date,
    required double amount,
    required int samplesCount,
  }) = _DailyEarning;
}
