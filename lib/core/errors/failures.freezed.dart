// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerFailure value)?  server,TResult Function( NetworkFailure value)?  network,TResult Function( AuthenticationFailure value)?  authentication,TResult Function( ValidationFailure value)?  validation,TResult Function( SampleIntegrityFailure value)?  sampleIntegrity,TResult Function( ColdChainFailure value)?  coldChain,TResult Function( BleFailure value)?  ble,TResult Function( CacheFailure value)?  cache,TResult Function( PermissionFailure value)?  permission,TResult Function( UnknownFailure value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerFailure() when server != null:
return server(_that);case NetworkFailure() when network != null:
return network(_that);case AuthenticationFailure() when authentication != null:
return authentication(_that);case ValidationFailure() when validation != null:
return validation(_that);case SampleIntegrityFailure() when sampleIntegrity != null:
return sampleIntegrity(_that);case ColdChainFailure() when coldChain != null:
return coldChain(_that);case BleFailure() when ble != null:
return ble(_that);case CacheFailure() when cache != null:
return cache(_that);case PermissionFailure() when permission != null:
return permission(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerFailure value)  server,required TResult Function( NetworkFailure value)  network,required TResult Function( AuthenticationFailure value)  authentication,required TResult Function( ValidationFailure value)  validation,required TResult Function( SampleIntegrityFailure value)  sampleIntegrity,required TResult Function( ColdChainFailure value)  coldChain,required TResult Function( BleFailure value)  ble,required TResult Function( CacheFailure value)  cache,required TResult Function( PermissionFailure value)  permission,required TResult Function( UnknownFailure value)  unknown,}){
final _that = this;
switch (_that) {
case ServerFailure():
return server(_that);case NetworkFailure():
return network(_that);case AuthenticationFailure():
return authentication(_that);case ValidationFailure():
return validation(_that);case SampleIntegrityFailure():
return sampleIntegrity(_that);case ColdChainFailure():
return coldChain(_that);case BleFailure():
return ble(_that);case CacheFailure():
return cache(_that);case PermissionFailure():
return permission(_that);case UnknownFailure():
return unknown(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerFailure value)?  server,TResult? Function( NetworkFailure value)?  network,TResult? Function( AuthenticationFailure value)?  authentication,TResult? Function( ValidationFailure value)?  validation,TResult? Function( SampleIntegrityFailure value)?  sampleIntegrity,TResult? Function( ColdChainFailure value)?  coldChain,TResult? Function( BleFailure value)?  ble,TResult? Function( CacheFailure value)?  cache,TResult? Function( PermissionFailure value)?  permission,TResult? Function( UnknownFailure value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerFailure() when server != null:
return server(_that);case NetworkFailure() when network != null:
return network(_that);case AuthenticationFailure() when authentication != null:
return authentication(_that);case ValidationFailure() when validation != null:
return validation(_that);case SampleIntegrityFailure() when sampleIntegrity != null:
return sampleIntegrity(_that);case ColdChainFailure() when coldChain != null:
return coldChain(_that);case BleFailure() when ble != null:
return ble(_that);case CacheFailure() when cache != null:
return cache(_that);case PermissionFailure() when permission != null:
return permission(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  int? statusCode)?  server,TResult Function( String message)?  network,TResult Function( String message)?  authentication,TResult Function( String message,  Map<String, String>? fieldErrors)?  validation,TResult Function( String message,  String sampleId,  double? integrityScore)?  sampleIntegrity,TResult Function( String message,  double? temperature,  DateTime? timestamp)?  coldChain,TResult Function( String message,  String? deviceId)?  ble,TResult Function( String message)?  cache,TResult Function( String message,  String permission)?  permission,TResult Function( String message)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case NetworkFailure() when network != null:
return network(_that.message);case AuthenticationFailure() when authentication != null:
return authentication(_that.message);case ValidationFailure() when validation != null:
return validation(_that.message,_that.fieldErrors);case SampleIntegrityFailure() when sampleIntegrity != null:
return sampleIntegrity(_that.message,_that.sampleId,_that.integrityScore);case ColdChainFailure() when coldChain != null:
return coldChain(_that.message,_that.temperature,_that.timestamp);case BleFailure() when ble != null:
return ble(_that.message,_that.deviceId);case CacheFailure() when cache != null:
return cache(_that.message);case PermissionFailure() when permission != null:
return permission(_that.message,_that.permission);case UnknownFailure() when unknown != null:
return unknown(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  int? statusCode)  server,required TResult Function( String message)  network,required TResult Function( String message)  authentication,required TResult Function( String message,  Map<String, String>? fieldErrors)  validation,required TResult Function( String message,  String sampleId,  double? integrityScore)  sampleIntegrity,required TResult Function( String message,  double? temperature,  DateTime? timestamp)  coldChain,required TResult Function( String message,  String? deviceId)  ble,required TResult Function( String message)  cache,required TResult Function( String message,  String permission)  permission,required TResult Function( String message)  unknown,}) {final _that = this;
switch (_that) {
case ServerFailure():
return server(_that.message,_that.statusCode);case NetworkFailure():
return network(_that.message);case AuthenticationFailure():
return authentication(_that.message);case ValidationFailure():
return validation(_that.message,_that.fieldErrors);case SampleIntegrityFailure():
return sampleIntegrity(_that.message,_that.sampleId,_that.integrityScore);case ColdChainFailure():
return coldChain(_that.message,_that.temperature,_that.timestamp);case BleFailure():
return ble(_that.message,_that.deviceId);case CacheFailure():
return cache(_that.message);case PermissionFailure():
return permission(_that.message,_that.permission);case UnknownFailure():
return unknown(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  int? statusCode)?  server,TResult? Function( String message)?  network,TResult? Function( String message)?  authentication,TResult? Function( String message,  Map<String, String>? fieldErrors)?  validation,TResult? Function( String message,  String sampleId,  double? integrityScore)?  sampleIntegrity,TResult? Function( String message,  double? temperature,  DateTime? timestamp)?  coldChain,TResult? Function( String message,  String? deviceId)?  ble,TResult? Function( String message)?  cache,TResult? Function( String message,  String permission)?  permission,TResult? Function( String message)?  unknown,}) {final _that = this;
switch (_that) {
case ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case NetworkFailure() when network != null:
return network(_that.message);case AuthenticationFailure() when authentication != null:
return authentication(_that.message);case ValidationFailure() when validation != null:
return validation(_that.message,_that.fieldErrors);case SampleIntegrityFailure() when sampleIntegrity != null:
return sampleIntegrity(_that.message,_that.sampleId,_that.integrityScore);case ColdChainFailure() when coldChain != null:
return coldChain(_that.message,_that.temperature,_that.timestamp);case BleFailure() when ble != null:
return ble(_that.message,_that.deviceId);case CacheFailure() when cache != null:
return cache(_that.message);case PermissionFailure() when permission != null:
return permission(_that.message,_that.permission);case UnknownFailure() when unknown != null:
return unknown(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ServerFailure implements Failure {
  const ServerFailure({required this.message, this.statusCode});
  

@override final  String message;
 final  int? statusCode;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'Failure.server(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,}) {
  return _then(ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class NetworkFailure implements Failure {
  const NetworkFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NetworkFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthenticationFailure implements Failure {
  const AuthenticationFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticationFailureCopyWith<AuthenticationFailure> get copyWith => _$AuthenticationFailureCopyWithImpl<AuthenticationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.authentication(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthenticationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value, $Res Function(AuthenticationFailure) _then) = _$AuthenticationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._self, this._then);

  final AuthenticationFailure _self;
  final $Res Function(AuthenticationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthenticationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidationFailure implements Failure {
  const ValidationFailure({required this.message, final  Map<String, String>? fieldErrors}): _fieldErrors = fieldErrors;
  

@override final  String message;
 final  Map<String, String>? _fieldErrors;
 Map<String, String>? get fieldErrors {
  final value = _fieldErrors;
  if (value == null) return null;
  if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationFailureCopyWith<ValidationFailure> get copyWith => _$ValidationFailureCopyWithImpl<ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._fieldErrors, _fieldErrors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_fieldErrors));

@override
String toString() {
  return 'Failure.validation(message: $message, fieldErrors: $fieldErrors)';
}


}

/// @nodoc
abstract mixin class $ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ValidationFailureCopyWith(ValidationFailure value, $Res Function(ValidationFailure) _then) = _$ValidationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Map<String, String>? fieldErrors
});




}
/// @nodoc
class _$ValidationFailureCopyWithImpl<$Res>
    implements $ValidationFailureCopyWith<$Res> {
  _$ValidationFailureCopyWithImpl(this._self, this._then);

  final ValidationFailure _self;
  final $Res Function(ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? fieldErrors = freezed,}) {
  return _then(ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,fieldErrors: freezed == fieldErrors ? _self._fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc


class SampleIntegrityFailure implements Failure {
  const SampleIntegrityFailure({required this.message, required this.sampleId, this.integrityScore});
  

@override final  String message;
 final  String sampleId;
 final  double? integrityScore;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleIntegrityFailureCopyWith<SampleIntegrityFailure> get copyWith => _$SampleIntegrityFailureCopyWithImpl<SampleIntegrityFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleIntegrityFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.integrityScore, integrityScore) || other.integrityScore == integrityScore));
}


@override
int get hashCode => Object.hash(runtimeType,message,sampleId,integrityScore);

@override
String toString() {
  return 'Failure.sampleIntegrity(message: $message, sampleId: $sampleId, integrityScore: $integrityScore)';
}


}

/// @nodoc
abstract mixin class $SampleIntegrityFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $SampleIntegrityFailureCopyWith(SampleIntegrityFailure value, $Res Function(SampleIntegrityFailure) _then) = _$SampleIntegrityFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String sampleId, double? integrityScore
});




}
/// @nodoc
class _$SampleIntegrityFailureCopyWithImpl<$Res>
    implements $SampleIntegrityFailureCopyWith<$Res> {
  _$SampleIntegrityFailureCopyWithImpl(this._self, this._then);

  final SampleIntegrityFailure _self;
  final $Res Function(SampleIntegrityFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? sampleId = null,Object? integrityScore = freezed,}) {
  return _then(SampleIntegrityFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,integrityScore: freezed == integrityScore ? _self.integrityScore : integrityScore // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class ColdChainFailure implements Failure {
  const ColdChainFailure({required this.message, this.temperature, this.timestamp});
  

@override final  String message;
 final  double? temperature;
 final  DateTime? timestamp;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColdChainFailureCopyWith<ColdChainFailure> get copyWith => _$ColdChainFailureCopyWithImpl<ColdChainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColdChainFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,message,temperature,timestamp);

@override
String toString() {
  return 'Failure.coldChain(message: $message, temperature: $temperature, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ColdChainFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ColdChainFailureCopyWith(ColdChainFailure value, $Res Function(ColdChainFailure) _then) = _$ColdChainFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, double? temperature, DateTime? timestamp
});




}
/// @nodoc
class _$ColdChainFailureCopyWithImpl<$Res>
    implements $ColdChainFailureCopyWith<$Res> {
  _$ColdChainFailureCopyWithImpl(this._self, this._then);

  final ColdChainFailure _self;
  final $Res Function(ColdChainFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? temperature = freezed,Object? timestamp = freezed,}) {
  return _then(ColdChainFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class BleFailure implements Failure {
  const BleFailure({required this.message, this.deviceId});
  

@override final  String message;
 final  String? deviceId;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BleFailureCopyWith<BleFailure> get copyWith => _$BleFailureCopyWithImpl<BleFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BleFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,message,deviceId);

@override
String toString() {
  return 'Failure.ble(message: $message, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $BleFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $BleFailureCopyWith(BleFailure value, $Res Function(BleFailure) _then) = _$BleFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String? deviceId
});




}
/// @nodoc
class _$BleFailureCopyWithImpl<$Res>
    implements $BleFailureCopyWith<$Res> {
  _$BleFailureCopyWithImpl(this._self, this._then);

  final BleFailure _self;
  final $Res Function(BleFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? deviceId = freezed,}) {
  return _then(BleFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CacheFailure implements Failure {
  const CacheFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<CacheFailure> get copyWith => _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(CacheFailure value, $Res Function(CacheFailure) _then) = _$CacheFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CacheFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PermissionFailure implements Failure {
  const PermissionFailure({required this.message, required this.permission});
  

@override final  String message;
 final  String permission;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionFailureCopyWith<PermissionFailure> get copyWith => _$PermissionFailureCopyWithImpl<PermissionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.permission, permission) || other.permission == permission));
}


@override
int get hashCode => Object.hash(runtimeType,message,permission);

@override
String toString() {
  return 'Failure.permission(message: $message, permission: $permission)';
}


}

/// @nodoc
abstract mixin class $PermissionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $PermissionFailureCopyWith(PermissionFailure value, $Res Function(PermissionFailure) _then) = _$PermissionFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String permission
});




}
/// @nodoc
class _$PermissionFailureCopyWithImpl<$Res>
    implements $PermissionFailureCopyWith<$Res> {
  _$PermissionFailureCopyWithImpl(this._self, this._then);

  final PermissionFailure _self;
  final $Res Function(PermissionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? permission = null,}) {
  return _then(PermissionFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnknownFailure implements Failure {
  const UnknownFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UnknownFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
