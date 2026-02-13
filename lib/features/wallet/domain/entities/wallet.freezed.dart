// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Wallet {

 String get userId; double get balance; double get totalEarnings; double get totalWithdrawals; double get pendingAmount; List<Transaction> get recentTransactions; DateTime get lastUpdated; BankAccount? get linkedBankAccount; UpiAccount? get linkedUpiAccount;
/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletCopyWith<Wallet> get copyWith => _$WalletCopyWithImpl<Wallet>(this as Wallet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wallet&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.totalWithdrawals, totalWithdrawals) || other.totalWithdrawals == totalWithdrawals)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&const DeepCollectionEquality().equals(other.recentTransactions, recentTransactions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.linkedBankAccount, linkedBankAccount) || other.linkedBankAccount == linkedBankAccount)&&(identical(other.linkedUpiAccount, linkedUpiAccount) || other.linkedUpiAccount == linkedUpiAccount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,balance,totalEarnings,totalWithdrawals,pendingAmount,const DeepCollectionEquality().hash(recentTransactions),lastUpdated,linkedBankAccount,linkedUpiAccount);

@override
String toString() {
  return 'Wallet(userId: $userId, balance: $balance, totalEarnings: $totalEarnings, totalWithdrawals: $totalWithdrawals, pendingAmount: $pendingAmount, recentTransactions: $recentTransactions, lastUpdated: $lastUpdated, linkedBankAccount: $linkedBankAccount, linkedUpiAccount: $linkedUpiAccount)';
}


}

/// @nodoc
abstract mixin class $WalletCopyWith<$Res>  {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) _then) = _$WalletCopyWithImpl;
@useResult
$Res call({
 String userId, double balance, double totalEarnings, double totalWithdrawals, double pendingAmount, List<Transaction> recentTransactions, DateTime lastUpdated, BankAccount? linkedBankAccount, UpiAccount? linkedUpiAccount
});


$BankAccountCopyWith<$Res>? get linkedBankAccount;$UpiAccountCopyWith<$Res>? get linkedUpiAccount;

}
/// @nodoc
class _$WalletCopyWithImpl<$Res>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._self, this._then);

  final Wallet _self;
  final $Res Function(Wallet) _then;

/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? balance = null,Object? totalEarnings = null,Object? totalWithdrawals = null,Object? pendingAmount = null,Object? recentTransactions = null,Object? lastUpdated = null,Object? linkedBankAccount = freezed,Object? linkedUpiAccount = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,totalWithdrawals: null == totalWithdrawals ? _self.totalWithdrawals : totalWithdrawals // ignore: cast_nullable_to_non_nullable
as double,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as double,recentTransactions: null == recentTransactions ? _self.recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,linkedBankAccount: freezed == linkedBankAccount ? _self.linkedBankAccount : linkedBankAccount // ignore: cast_nullable_to_non_nullable
as BankAccount?,linkedUpiAccount: freezed == linkedUpiAccount ? _self.linkedUpiAccount : linkedUpiAccount // ignore: cast_nullable_to_non_nullable
as UpiAccount?,
  ));
}
/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountCopyWith<$Res>? get linkedBankAccount {
    if (_self.linkedBankAccount == null) {
    return null;
  }

  return $BankAccountCopyWith<$Res>(_self.linkedBankAccount!, (value) {
    return _then(_self.copyWith(linkedBankAccount: value));
  });
}/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpiAccountCopyWith<$Res>? get linkedUpiAccount {
    if (_self.linkedUpiAccount == null) {
    return null;
  }

  return $UpiAccountCopyWith<$Res>(_self.linkedUpiAccount!, (value) {
    return _then(_self.copyWith(linkedUpiAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [Wallet].
extension WalletPatterns on Wallet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Wallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Wallet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Wallet value)  $default,){
final _that = this;
switch (_that) {
case _Wallet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Wallet value)?  $default,){
final _that = this;
switch (_that) {
case _Wallet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  double balance,  double totalEarnings,  double totalWithdrawals,  double pendingAmount,  List<Transaction> recentTransactions,  DateTime lastUpdated,  BankAccount? linkedBankAccount,  UpiAccount? linkedUpiAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Wallet() when $default != null:
return $default(_that.userId,_that.balance,_that.totalEarnings,_that.totalWithdrawals,_that.pendingAmount,_that.recentTransactions,_that.lastUpdated,_that.linkedBankAccount,_that.linkedUpiAccount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  double balance,  double totalEarnings,  double totalWithdrawals,  double pendingAmount,  List<Transaction> recentTransactions,  DateTime lastUpdated,  BankAccount? linkedBankAccount,  UpiAccount? linkedUpiAccount)  $default,) {final _that = this;
switch (_that) {
case _Wallet():
return $default(_that.userId,_that.balance,_that.totalEarnings,_that.totalWithdrawals,_that.pendingAmount,_that.recentTransactions,_that.lastUpdated,_that.linkedBankAccount,_that.linkedUpiAccount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  double balance,  double totalEarnings,  double totalWithdrawals,  double pendingAmount,  List<Transaction> recentTransactions,  DateTime lastUpdated,  BankAccount? linkedBankAccount,  UpiAccount? linkedUpiAccount)?  $default,) {final _that = this;
switch (_that) {
case _Wallet() when $default != null:
return $default(_that.userId,_that.balance,_that.totalEarnings,_that.totalWithdrawals,_that.pendingAmount,_that.recentTransactions,_that.lastUpdated,_that.linkedBankAccount,_that.linkedUpiAccount);case _:
  return null;

}
}

}

/// @nodoc


class _Wallet implements Wallet {
  const _Wallet({required this.userId, required this.balance, required this.totalEarnings, required this.totalWithdrawals, required this.pendingAmount, required final  List<Transaction> recentTransactions, required this.lastUpdated, this.linkedBankAccount, this.linkedUpiAccount}): _recentTransactions = recentTransactions;
  

@override final  String userId;
@override final  double balance;
@override final  double totalEarnings;
@override final  double totalWithdrawals;
@override final  double pendingAmount;
 final  List<Transaction> _recentTransactions;
@override List<Transaction> get recentTransactions {
  if (_recentTransactions is EqualUnmodifiableListView) return _recentTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentTransactions);
}

@override final  DateTime lastUpdated;
@override final  BankAccount? linkedBankAccount;
@override final  UpiAccount? linkedUpiAccount;

/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletCopyWith<_Wallet> get copyWith => __$WalletCopyWithImpl<_Wallet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wallet&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.totalWithdrawals, totalWithdrawals) || other.totalWithdrawals == totalWithdrawals)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&const DeepCollectionEquality().equals(other._recentTransactions, _recentTransactions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.linkedBankAccount, linkedBankAccount) || other.linkedBankAccount == linkedBankAccount)&&(identical(other.linkedUpiAccount, linkedUpiAccount) || other.linkedUpiAccount == linkedUpiAccount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,balance,totalEarnings,totalWithdrawals,pendingAmount,const DeepCollectionEquality().hash(_recentTransactions),lastUpdated,linkedBankAccount,linkedUpiAccount);

@override
String toString() {
  return 'Wallet(userId: $userId, balance: $balance, totalEarnings: $totalEarnings, totalWithdrawals: $totalWithdrawals, pendingAmount: $pendingAmount, recentTransactions: $recentTransactions, lastUpdated: $lastUpdated, linkedBankAccount: $linkedBankAccount, linkedUpiAccount: $linkedUpiAccount)';
}


}

/// @nodoc
abstract mixin class _$WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$WalletCopyWith(_Wallet value, $Res Function(_Wallet) _then) = __$WalletCopyWithImpl;
@override @useResult
$Res call({
 String userId, double balance, double totalEarnings, double totalWithdrawals, double pendingAmount, List<Transaction> recentTransactions, DateTime lastUpdated, BankAccount? linkedBankAccount, UpiAccount? linkedUpiAccount
});


@override $BankAccountCopyWith<$Res>? get linkedBankAccount;@override $UpiAccountCopyWith<$Res>? get linkedUpiAccount;

}
/// @nodoc
class __$WalletCopyWithImpl<$Res>
    implements _$WalletCopyWith<$Res> {
  __$WalletCopyWithImpl(this._self, this._then);

  final _Wallet _self;
  final $Res Function(_Wallet) _then;

/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? balance = null,Object? totalEarnings = null,Object? totalWithdrawals = null,Object? pendingAmount = null,Object? recentTransactions = null,Object? lastUpdated = null,Object? linkedBankAccount = freezed,Object? linkedUpiAccount = freezed,}) {
  return _then(_Wallet(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,totalWithdrawals: null == totalWithdrawals ? _self.totalWithdrawals : totalWithdrawals // ignore: cast_nullable_to_non_nullable
as double,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as double,recentTransactions: null == recentTransactions ? _self._recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,linkedBankAccount: freezed == linkedBankAccount ? _self.linkedBankAccount : linkedBankAccount // ignore: cast_nullable_to_non_nullable
as BankAccount?,linkedUpiAccount: freezed == linkedUpiAccount ? _self.linkedUpiAccount : linkedUpiAccount // ignore: cast_nullable_to_non_nullable
as UpiAccount?,
  ));
}

/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountCopyWith<$Res>? get linkedBankAccount {
    if (_self.linkedBankAccount == null) {
    return null;
  }

  return $BankAccountCopyWith<$Res>(_self.linkedBankAccount!, (value) {
    return _then(_self.copyWith(linkedBankAccount: value));
  });
}/// Create a copy of Wallet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpiAccountCopyWith<$Res>? get linkedUpiAccount {
    if (_self.linkedUpiAccount == null) {
    return null;
  }

  return $UpiAccountCopyWith<$Res>(_self.linkedUpiAccount!, (value) {
    return _then(_self.copyWith(linkedUpiAccount: value));
  });
}
}

/// @nodoc
mixin _$Transaction {

 String get id; TransactionType get type; double get amount; TransactionStatus get status; DateTime get timestamp; String get description; String? get sampleId; String? get referenceId; Map<String, dynamic>? get metadata;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,status,timestamp,description,sampleId,referenceId,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, status: $status, timestamp: $timestamp, description: $description, sampleId: $sampleId, referenceId: $referenceId, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 String id, TransactionType type, double amount, TransactionStatus status, DateTime timestamp, String description, String? sampleId, String? referenceId, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? status = null,Object? timestamp = null,Object? description = null,Object? sampleId = freezed,Object? referenceId = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sampleId: freezed == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  TransactionType type,  double amount,  TransactionStatus status,  DateTime timestamp,  String description,  String? sampleId,  String? referenceId,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.status,_that.timestamp,_that.description,_that.sampleId,_that.referenceId,_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  TransactionType type,  double amount,  TransactionStatus status,  DateTime timestamp,  String description,  String? sampleId,  String? referenceId,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.type,_that.amount,_that.status,_that.timestamp,_that.description,_that.sampleId,_that.referenceId,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  TransactionType type,  double amount,  TransactionStatus status,  DateTime timestamp,  String description,  String? sampleId,  String? referenceId,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.status,_that.timestamp,_that.description,_that.sampleId,_that.referenceId,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _Transaction implements Transaction {
  const _Transaction({required this.id, required this.type, required this.amount, required this.status, required this.timestamp, required this.description, this.sampleId, this.referenceId, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  

@override final  String id;
@override final  TransactionType type;
@override final  double amount;
@override final  TransactionStatus status;
@override final  DateTime timestamp;
@override final  String description;
@override final  String? sampleId;
@override final  String? referenceId;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,status,timestamp,description,sampleId,referenceId,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, status: $status, timestamp: $timestamp, description: $description, sampleId: $sampleId, referenceId: $referenceId, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, TransactionType type, double amount, TransactionStatus status, DateTime timestamp, String description, String? sampleId, String? referenceId, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? status = null,Object? timestamp = null,Object? description = null,Object? sampleId = freezed,Object? referenceId = freezed,Object? metadata = freezed,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sampleId: freezed == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$WithdrawalRequest {

 String get id; String get userId; double get amount; WithdrawalStatus get status; DateTime get requestedAt; DateTime? get processedAt; WithdrawalMethod get method; String? get bankAccountId; String? get upiId; String? get rejectionReason; String? get transactionId;
/// Create a copy of WithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalRequestCopyWith<WithdrawalRequest> get copyWith => _$WithdrawalRequestCopyWithImpl<WithdrawalRequest>(this as WithdrawalRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,status,requestedAt,processedAt,method,bankAccountId,upiId,rejectionReason,transactionId);

@override
String toString() {
  return 'WithdrawalRequest(id: $id, userId: $userId, amount: $amount, status: $status, requestedAt: $requestedAt, processedAt: $processedAt, method: $method, bankAccountId: $bankAccountId, upiId: $upiId, rejectionReason: $rejectionReason, transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $WithdrawalRequestCopyWith<$Res>  {
  factory $WithdrawalRequestCopyWith(WithdrawalRequest value, $Res Function(WithdrawalRequest) _then) = _$WithdrawalRequestCopyWithImpl;
@useResult
$Res call({
 String id, String userId, double amount, WithdrawalStatus status, DateTime requestedAt, DateTime? processedAt, WithdrawalMethod method, String? bankAccountId, String? upiId, String? rejectionReason, String? transactionId
});




}
/// @nodoc
class _$WithdrawalRequestCopyWithImpl<$Res>
    implements $WithdrawalRequestCopyWith<$Res> {
  _$WithdrawalRequestCopyWithImpl(this._self, this._then);

  final WithdrawalRequest _self;
  final $Res Function(WithdrawalRequest) _then;

/// Create a copy of WithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? status = null,Object? requestedAt = null,Object? processedAt = freezed,Object? method = null,Object? bankAccountId = freezed,Object? upiId = freezed,Object? rejectionReason = freezed,Object? transactionId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WithdrawalStatus,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WithdrawalMethod,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalRequest].
extension WithdrawalRequestPatterns on WithdrawalRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalRequest value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalRequest value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  double amount,  WithdrawalStatus status,  DateTime requestedAt,  DateTime? processedAt,  WithdrawalMethod method,  String? bankAccountId,  String? upiId,  String? rejectionReason,  String? transactionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalRequest() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.status,_that.requestedAt,_that.processedAt,_that.method,_that.bankAccountId,_that.upiId,_that.rejectionReason,_that.transactionId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  double amount,  WithdrawalStatus status,  DateTime requestedAt,  DateTime? processedAt,  WithdrawalMethod method,  String? bankAccountId,  String? upiId,  String? rejectionReason,  String? transactionId)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRequest():
return $default(_that.id,_that.userId,_that.amount,_that.status,_that.requestedAt,_that.processedAt,_that.method,_that.bankAccountId,_that.upiId,_that.rejectionReason,_that.transactionId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  double amount,  WithdrawalStatus status,  DateTime requestedAt,  DateTime? processedAt,  WithdrawalMethod method,  String? bankAccountId,  String? upiId,  String? rejectionReason,  String? transactionId)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRequest() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.status,_that.requestedAt,_that.processedAt,_that.method,_that.bankAccountId,_that.upiId,_that.rejectionReason,_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc


class _WithdrawalRequest implements WithdrawalRequest {
  const _WithdrawalRequest({required this.id, required this.userId, required this.amount, required this.status, required this.requestedAt, this.processedAt, required this.method, this.bankAccountId, this.upiId, this.rejectionReason, this.transactionId});
  

@override final  String id;
@override final  String userId;
@override final  double amount;
@override final  WithdrawalStatus status;
@override final  DateTime requestedAt;
@override final  DateTime? processedAt;
@override final  WithdrawalMethod method;
@override final  String? bankAccountId;
@override final  String? upiId;
@override final  String? rejectionReason;
@override final  String? transactionId;

/// Create a copy of WithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalRequestCopyWith<_WithdrawalRequest> get copyWith => __$WithdrawalRequestCopyWithImpl<_WithdrawalRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,status,requestedAt,processedAt,method,bankAccountId,upiId,rejectionReason,transactionId);

@override
String toString() {
  return 'WithdrawalRequest(id: $id, userId: $userId, amount: $amount, status: $status, requestedAt: $requestedAt, processedAt: $processedAt, method: $method, bankAccountId: $bankAccountId, upiId: $upiId, rejectionReason: $rejectionReason, transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalRequestCopyWith<$Res> implements $WithdrawalRequestCopyWith<$Res> {
  factory _$WithdrawalRequestCopyWith(_WithdrawalRequest value, $Res Function(_WithdrawalRequest) _then) = __$WithdrawalRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, double amount, WithdrawalStatus status, DateTime requestedAt, DateTime? processedAt, WithdrawalMethod method, String? bankAccountId, String? upiId, String? rejectionReason, String? transactionId
});




}
/// @nodoc
class __$WithdrawalRequestCopyWithImpl<$Res>
    implements _$WithdrawalRequestCopyWith<$Res> {
  __$WithdrawalRequestCopyWithImpl(this._self, this._then);

  final _WithdrawalRequest _self;
  final $Res Function(_WithdrawalRequest) _then;

/// Create a copy of WithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? status = null,Object? requestedAt = null,Object? processedAt = freezed,Object? method = null,Object? bankAccountId = freezed,Object? upiId = freezed,Object? rejectionReason = freezed,Object? transactionId = freezed,}) {
  return _then(_WithdrawalRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WithdrawalStatus,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WithdrawalMethod,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BankAccount {

 String get id; String get accountHolderName; String get accountNumber; String get ifscCode; String get bankName; bool get isVerified;
/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountCopyWith<BankAccount> get copyWith => _$BankAccountCopyWithImpl<BankAccount>(this as BankAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.accountHolderName, accountHolderName) || other.accountHolderName == accountHolderName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifscCode, ifscCode) || other.ifscCode == ifscCode)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountHolderName,accountNumber,ifscCode,bankName,isVerified);

@override
String toString() {
  return 'BankAccount(id: $id, accountHolderName: $accountHolderName, accountNumber: $accountNumber, ifscCode: $ifscCode, bankName: $bankName, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $BankAccountCopyWith<$Res>  {
  factory $BankAccountCopyWith(BankAccount value, $Res Function(BankAccount) _then) = _$BankAccountCopyWithImpl;
@useResult
$Res call({
 String id, String accountHolderName, String accountNumber, String ifscCode, String bankName, bool isVerified
});




}
/// @nodoc
class _$BankAccountCopyWithImpl<$Res>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._self, this._then);

  final BankAccount _self;
  final $Res Function(BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountHolderName = null,Object? accountNumber = null,Object? ifscCode = null,Object? bankName = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accountHolderName: null == accountHolderName ? _self.accountHolderName : accountHolderName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ifscCode: null == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccount].
extension BankAccountPatterns on BankAccount {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccount value)  $default,){
final _that = this;
switch (_that) {
case _BankAccount():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String accountHolderName,  String accountNumber,  String ifscCode,  String bankName,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.id,_that.accountHolderName,_that.accountNumber,_that.ifscCode,_that.bankName,_that.isVerified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String accountHolderName,  String accountNumber,  String ifscCode,  String bankName,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _BankAccount():
return $default(_that.id,_that.accountHolderName,_that.accountNumber,_that.ifscCode,_that.bankName,_that.isVerified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String accountHolderName,  String accountNumber,  String ifscCode,  String bankName,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.id,_that.accountHolderName,_that.accountNumber,_that.ifscCode,_that.bankName,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc


class _BankAccount implements BankAccount {
  const _BankAccount({required this.id, required this.accountHolderName, required this.accountNumber, required this.ifscCode, required this.bankName, required this.isVerified});
  

@override final  String id;
@override final  String accountHolderName;
@override final  String accountNumber;
@override final  String ifscCode;
@override final  String bankName;
@override final  bool isVerified;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountCopyWith<_BankAccount> get copyWith => __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.accountHolderName, accountHolderName) || other.accountHolderName == accountHolderName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifscCode, ifscCode) || other.ifscCode == ifscCode)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountHolderName,accountNumber,ifscCode,bankName,isVerified);

@override
String toString() {
  return 'BankAccount(id: $id, accountHolderName: $accountHolderName, accountNumber: $accountNumber, ifscCode: $ifscCode, bankName: $bankName, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$BankAccountCopyWith<$Res> implements $BankAccountCopyWith<$Res> {
  factory _$BankAccountCopyWith(_BankAccount value, $Res Function(_BankAccount) _then) = __$BankAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String accountHolderName, String accountNumber, String ifscCode, String bankName, bool isVerified
});




}
/// @nodoc
class __$BankAccountCopyWithImpl<$Res>
    implements _$BankAccountCopyWith<$Res> {
  __$BankAccountCopyWithImpl(this._self, this._then);

  final _BankAccount _self;
  final $Res Function(_BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountHolderName = null,Object? accountNumber = null,Object? ifscCode = null,Object? bankName = null,Object? isVerified = null,}) {
  return _then(_BankAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accountHolderName: null == accountHolderName ? _self.accountHolderName : accountHolderName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ifscCode: null == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UpiAccount {

 String get id; String get upiId; String get name; bool get isVerified;
/// Create a copy of UpiAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpiAccountCopyWith<UpiAccount> get copyWith => _$UpiAccountCopyWithImpl<UpiAccount>(this as UpiAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpiAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,upiId,name,isVerified);

@override
String toString() {
  return 'UpiAccount(id: $id, upiId: $upiId, name: $name, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $UpiAccountCopyWith<$Res>  {
  factory $UpiAccountCopyWith(UpiAccount value, $Res Function(UpiAccount) _then) = _$UpiAccountCopyWithImpl;
@useResult
$Res call({
 String id, String upiId, String name, bool isVerified
});




}
/// @nodoc
class _$UpiAccountCopyWithImpl<$Res>
    implements $UpiAccountCopyWith<$Res> {
  _$UpiAccountCopyWithImpl(this._self, this._then);

  final UpiAccount _self;
  final $Res Function(UpiAccount) _then;

/// Create a copy of UpiAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? upiId = null,Object? name = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,upiId: null == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpiAccount].
extension UpiAccountPatterns on UpiAccount {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpiAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpiAccount() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpiAccount value)  $default,){
final _that = this;
switch (_that) {
case _UpiAccount():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpiAccount value)?  $default,){
final _that = this;
switch (_that) {
case _UpiAccount() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String upiId,  String name,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpiAccount() when $default != null:
return $default(_that.id,_that.upiId,_that.name,_that.isVerified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String upiId,  String name,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _UpiAccount():
return $default(_that.id,_that.upiId,_that.name,_that.isVerified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String upiId,  String name,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _UpiAccount() when $default != null:
return $default(_that.id,_that.upiId,_that.name,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc


class _UpiAccount implements UpiAccount {
  const _UpiAccount({required this.id, required this.upiId, required this.name, required this.isVerified});
  

@override final  String id;
@override final  String upiId;
@override final  String name;
@override final  bool isVerified;

/// Create a copy of UpiAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpiAccountCopyWith<_UpiAccount> get copyWith => __$UpiAccountCopyWithImpl<_UpiAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpiAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,upiId,name,isVerified);

@override
String toString() {
  return 'UpiAccount(id: $id, upiId: $upiId, name: $name, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$UpiAccountCopyWith<$Res> implements $UpiAccountCopyWith<$Res> {
  factory _$UpiAccountCopyWith(_UpiAccount value, $Res Function(_UpiAccount) _then) = __$UpiAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String upiId, String name, bool isVerified
});




}
/// @nodoc
class __$UpiAccountCopyWithImpl<$Res>
    implements _$UpiAccountCopyWith<$Res> {
  __$UpiAccountCopyWithImpl(this._self, this._then);

  final _UpiAccount _self;
  final $Res Function(_UpiAccount) _then;

/// Create a copy of UpiAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? upiId = null,Object? name = null,Object? isVerified = null,}) {
  return _then(_UpiAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,upiId: null == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$Earnings {

 double get today; double get thisWeek; double get thisMonth; int get samplesCollectedToday; int get samplesCollectedThisWeek; int get samplesCollectedThisMonth; double get averagePerSample; List<DailyEarning> get last7Days;
/// Create a copy of Earnings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsCopyWith<Earnings> get copyWith => _$EarningsCopyWithImpl<Earnings>(this as Earnings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Earnings&&(identical(other.today, today) || other.today == today)&&(identical(other.thisWeek, thisWeek) || other.thisWeek == thisWeek)&&(identical(other.thisMonth, thisMonth) || other.thisMonth == thisMonth)&&(identical(other.samplesCollectedToday, samplesCollectedToday) || other.samplesCollectedToday == samplesCollectedToday)&&(identical(other.samplesCollectedThisWeek, samplesCollectedThisWeek) || other.samplesCollectedThisWeek == samplesCollectedThisWeek)&&(identical(other.samplesCollectedThisMonth, samplesCollectedThisMonth) || other.samplesCollectedThisMonth == samplesCollectedThisMonth)&&(identical(other.averagePerSample, averagePerSample) || other.averagePerSample == averagePerSample)&&const DeepCollectionEquality().equals(other.last7Days, last7Days));
}


@override
int get hashCode => Object.hash(runtimeType,today,thisWeek,thisMonth,samplesCollectedToday,samplesCollectedThisWeek,samplesCollectedThisMonth,averagePerSample,const DeepCollectionEquality().hash(last7Days));

@override
String toString() {
  return 'Earnings(today: $today, thisWeek: $thisWeek, thisMonth: $thisMonth, samplesCollectedToday: $samplesCollectedToday, samplesCollectedThisWeek: $samplesCollectedThisWeek, samplesCollectedThisMonth: $samplesCollectedThisMonth, averagePerSample: $averagePerSample, last7Days: $last7Days)';
}


}

/// @nodoc
abstract mixin class $EarningsCopyWith<$Res>  {
  factory $EarningsCopyWith(Earnings value, $Res Function(Earnings) _then) = _$EarningsCopyWithImpl;
@useResult
$Res call({
 double today, double thisWeek, double thisMonth, int samplesCollectedToday, int samplesCollectedThisWeek, int samplesCollectedThisMonth, double averagePerSample, List<DailyEarning> last7Days
});




}
/// @nodoc
class _$EarningsCopyWithImpl<$Res>
    implements $EarningsCopyWith<$Res> {
  _$EarningsCopyWithImpl(this._self, this._then);

  final Earnings _self;
  final $Res Function(Earnings) _then;

/// Create a copy of Earnings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? thisWeek = null,Object? thisMonth = null,Object? samplesCollectedToday = null,Object? samplesCollectedThisWeek = null,Object? samplesCollectedThisMonth = null,Object? averagePerSample = null,Object? last7Days = null,}) {
  return _then(_self.copyWith(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as double,thisWeek: null == thisWeek ? _self.thisWeek : thisWeek // ignore: cast_nullable_to_non_nullable
as double,thisMonth: null == thisMonth ? _self.thisMonth : thisMonth // ignore: cast_nullable_to_non_nullable
as double,samplesCollectedToday: null == samplesCollectedToday ? _self.samplesCollectedToday : samplesCollectedToday // ignore: cast_nullable_to_non_nullable
as int,samplesCollectedThisWeek: null == samplesCollectedThisWeek ? _self.samplesCollectedThisWeek : samplesCollectedThisWeek // ignore: cast_nullable_to_non_nullable
as int,samplesCollectedThisMonth: null == samplesCollectedThisMonth ? _self.samplesCollectedThisMonth : samplesCollectedThisMonth // ignore: cast_nullable_to_non_nullable
as int,averagePerSample: null == averagePerSample ? _self.averagePerSample : averagePerSample // ignore: cast_nullable_to_non_nullable
as double,last7Days: null == last7Days ? _self.last7Days : last7Days // ignore: cast_nullable_to_non_nullable
as List<DailyEarning>,
  ));
}

}


/// Adds pattern-matching-related methods to [Earnings].
extension EarningsPatterns on Earnings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Earnings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Earnings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Earnings value)  $default,){
final _that = this;
switch (_that) {
case _Earnings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Earnings value)?  $default,){
final _that = this;
switch (_that) {
case _Earnings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double today,  double thisWeek,  double thisMonth,  int samplesCollectedToday,  int samplesCollectedThisWeek,  int samplesCollectedThisMonth,  double averagePerSample,  List<DailyEarning> last7Days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Earnings() when $default != null:
return $default(_that.today,_that.thisWeek,_that.thisMonth,_that.samplesCollectedToday,_that.samplesCollectedThisWeek,_that.samplesCollectedThisMonth,_that.averagePerSample,_that.last7Days);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double today,  double thisWeek,  double thisMonth,  int samplesCollectedToday,  int samplesCollectedThisWeek,  int samplesCollectedThisMonth,  double averagePerSample,  List<DailyEarning> last7Days)  $default,) {final _that = this;
switch (_that) {
case _Earnings():
return $default(_that.today,_that.thisWeek,_that.thisMonth,_that.samplesCollectedToday,_that.samplesCollectedThisWeek,_that.samplesCollectedThisMonth,_that.averagePerSample,_that.last7Days);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double today,  double thisWeek,  double thisMonth,  int samplesCollectedToday,  int samplesCollectedThisWeek,  int samplesCollectedThisMonth,  double averagePerSample,  List<DailyEarning> last7Days)?  $default,) {final _that = this;
switch (_that) {
case _Earnings() when $default != null:
return $default(_that.today,_that.thisWeek,_that.thisMonth,_that.samplesCollectedToday,_that.samplesCollectedThisWeek,_that.samplesCollectedThisMonth,_that.averagePerSample,_that.last7Days);case _:
  return null;

}
}

}

/// @nodoc


class _Earnings implements Earnings {
  const _Earnings({required this.today, required this.thisWeek, required this.thisMonth, required this.samplesCollectedToday, required this.samplesCollectedThisWeek, required this.samplesCollectedThisMonth, required this.averagePerSample, required final  List<DailyEarning> last7Days}): _last7Days = last7Days;
  

@override final  double today;
@override final  double thisWeek;
@override final  double thisMonth;
@override final  int samplesCollectedToday;
@override final  int samplesCollectedThisWeek;
@override final  int samplesCollectedThisMonth;
@override final  double averagePerSample;
 final  List<DailyEarning> _last7Days;
@override List<DailyEarning> get last7Days {
  if (_last7Days is EqualUnmodifiableListView) return _last7Days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_last7Days);
}


/// Create a copy of Earnings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsCopyWith<_Earnings> get copyWith => __$EarningsCopyWithImpl<_Earnings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Earnings&&(identical(other.today, today) || other.today == today)&&(identical(other.thisWeek, thisWeek) || other.thisWeek == thisWeek)&&(identical(other.thisMonth, thisMonth) || other.thisMonth == thisMonth)&&(identical(other.samplesCollectedToday, samplesCollectedToday) || other.samplesCollectedToday == samplesCollectedToday)&&(identical(other.samplesCollectedThisWeek, samplesCollectedThisWeek) || other.samplesCollectedThisWeek == samplesCollectedThisWeek)&&(identical(other.samplesCollectedThisMonth, samplesCollectedThisMonth) || other.samplesCollectedThisMonth == samplesCollectedThisMonth)&&(identical(other.averagePerSample, averagePerSample) || other.averagePerSample == averagePerSample)&&const DeepCollectionEquality().equals(other._last7Days, _last7Days));
}


@override
int get hashCode => Object.hash(runtimeType,today,thisWeek,thisMonth,samplesCollectedToday,samplesCollectedThisWeek,samplesCollectedThisMonth,averagePerSample,const DeepCollectionEquality().hash(_last7Days));

@override
String toString() {
  return 'Earnings(today: $today, thisWeek: $thisWeek, thisMonth: $thisMonth, samplesCollectedToday: $samplesCollectedToday, samplesCollectedThisWeek: $samplesCollectedThisWeek, samplesCollectedThisMonth: $samplesCollectedThisMonth, averagePerSample: $averagePerSample, last7Days: $last7Days)';
}


}

/// @nodoc
abstract mixin class _$EarningsCopyWith<$Res> implements $EarningsCopyWith<$Res> {
  factory _$EarningsCopyWith(_Earnings value, $Res Function(_Earnings) _then) = __$EarningsCopyWithImpl;
@override @useResult
$Res call({
 double today, double thisWeek, double thisMonth, int samplesCollectedToday, int samplesCollectedThisWeek, int samplesCollectedThisMonth, double averagePerSample, List<DailyEarning> last7Days
});




}
/// @nodoc
class __$EarningsCopyWithImpl<$Res>
    implements _$EarningsCopyWith<$Res> {
  __$EarningsCopyWithImpl(this._self, this._then);

  final _Earnings _self;
  final $Res Function(_Earnings) _then;

/// Create a copy of Earnings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? thisWeek = null,Object? thisMonth = null,Object? samplesCollectedToday = null,Object? samplesCollectedThisWeek = null,Object? samplesCollectedThisMonth = null,Object? averagePerSample = null,Object? last7Days = null,}) {
  return _then(_Earnings(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as double,thisWeek: null == thisWeek ? _self.thisWeek : thisWeek // ignore: cast_nullable_to_non_nullable
as double,thisMonth: null == thisMonth ? _self.thisMonth : thisMonth // ignore: cast_nullable_to_non_nullable
as double,samplesCollectedToday: null == samplesCollectedToday ? _self.samplesCollectedToday : samplesCollectedToday // ignore: cast_nullable_to_non_nullable
as int,samplesCollectedThisWeek: null == samplesCollectedThisWeek ? _self.samplesCollectedThisWeek : samplesCollectedThisWeek // ignore: cast_nullable_to_non_nullable
as int,samplesCollectedThisMonth: null == samplesCollectedThisMonth ? _self.samplesCollectedThisMonth : samplesCollectedThisMonth // ignore: cast_nullable_to_non_nullable
as int,averagePerSample: null == averagePerSample ? _self.averagePerSample : averagePerSample // ignore: cast_nullable_to_non_nullable
as double,last7Days: null == last7Days ? _self._last7Days : last7Days // ignore: cast_nullable_to_non_nullable
as List<DailyEarning>,
  ));
}


}

/// @nodoc
mixin _$DailyEarning {

 DateTime get date; double get amount; int get samplesCount;
/// Create a copy of DailyEarning
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyEarningCopyWith<DailyEarning> get copyWith => _$DailyEarningCopyWithImpl<DailyEarning>(this as DailyEarning, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyEarning&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.samplesCount, samplesCount) || other.samplesCount == samplesCount));
}


@override
int get hashCode => Object.hash(runtimeType,date,amount,samplesCount);

@override
String toString() {
  return 'DailyEarning(date: $date, amount: $amount, samplesCount: $samplesCount)';
}


}

/// @nodoc
abstract mixin class $DailyEarningCopyWith<$Res>  {
  factory $DailyEarningCopyWith(DailyEarning value, $Res Function(DailyEarning) _then) = _$DailyEarningCopyWithImpl;
@useResult
$Res call({
 DateTime date, double amount, int samplesCount
});




}
/// @nodoc
class _$DailyEarningCopyWithImpl<$Res>
    implements $DailyEarningCopyWith<$Res> {
  _$DailyEarningCopyWithImpl(this._self, this._then);

  final DailyEarning _self;
  final $Res Function(DailyEarning) _then;

/// Create a copy of DailyEarning
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? amount = null,Object? samplesCount = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,samplesCount: null == samplesCount ? _self.samplesCount : samplesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyEarning].
extension DailyEarningPatterns on DailyEarning {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyEarning value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyEarning() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyEarning value)  $default,){
final _that = this;
switch (_that) {
case _DailyEarning():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyEarning value)?  $default,){
final _that = this;
switch (_that) {
case _DailyEarning() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double amount,  int samplesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyEarning() when $default != null:
return $default(_that.date,_that.amount,_that.samplesCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double amount,  int samplesCount)  $default,) {final _that = this;
switch (_that) {
case _DailyEarning():
return $default(_that.date,_that.amount,_that.samplesCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double amount,  int samplesCount)?  $default,) {final _that = this;
switch (_that) {
case _DailyEarning() when $default != null:
return $default(_that.date,_that.amount,_that.samplesCount);case _:
  return null;

}
}

}

/// @nodoc


class _DailyEarning implements DailyEarning {
  const _DailyEarning({required this.date, required this.amount, required this.samplesCount});
  

@override final  DateTime date;
@override final  double amount;
@override final  int samplesCount;

/// Create a copy of DailyEarning
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyEarningCopyWith<_DailyEarning> get copyWith => __$DailyEarningCopyWithImpl<_DailyEarning>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyEarning&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.samplesCount, samplesCount) || other.samplesCount == samplesCount));
}


@override
int get hashCode => Object.hash(runtimeType,date,amount,samplesCount);

@override
String toString() {
  return 'DailyEarning(date: $date, amount: $amount, samplesCount: $samplesCount)';
}


}

/// @nodoc
abstract mixin class _$DailyEarningCopyWith<$Res> implements $DailyEarningCopyWith<$Res> {
  factory _$DailyEarningCopyWith(_DailyEarning value, $Res Function(_DailyEarning) _then) = __$DailyEarningCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double amount, int samplesCount
});




}
/// @nodoc
class __$DailyEarningCopyWithImpl<$Res>
    implements _$DailyEarningCopyWith<$Res> {
  __$DailyEarningCopyWithImpl(this._self, this._then);

  final _DailyEarning _self;
  final $Res Function(_DailyEarning) _then;

/// Create a copy of DailyEarning
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? amount = null,Object? samplesCount = null,}) {
  return _then(_DailyEarning(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,samplesCount: null == samplesCount ? _self.samplesCount : samplesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
