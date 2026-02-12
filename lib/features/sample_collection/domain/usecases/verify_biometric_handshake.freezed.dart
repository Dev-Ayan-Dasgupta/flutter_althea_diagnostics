// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_biometric_handshake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BiometricHandshakeParams {

 String get sampleId; String get patientDeviceId; String get phlebotomistDeviceId; double get proximityDistance; int get signalStrength; GeoLocation get location;
/// Create a copy of BiometricHandshakeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricHandshakeParamsCopyWith<BiometricHandshakeParams> get copyWith => _$BiometricHandshakeParamsCopyWithImpl<BiometricHandshakeParams>(this as BiometricHandshakeParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricHandshakeParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.patientDeviceId, patientDeviceId) || other.patientDeviceId == patientDeviceId)&&(identical(other.phlebotomistDeviceId, phlebotomistDeviceId) || other.phlebotomistDeviceId == phlebotomistDeviceId)&&(identical(other.proximityDistance, proximityDistance) || other.proximityDistance == proximityDistance)&&(identical(other.signalStrength, signalStrength) || other.signalStrength == signalStrength)&&const DeepCollectionEquality().equals(other.location, location));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,patientDeviceId,phlebotomistDeviceId,proximityDistance,signalStrength,const DeepCollectionEquality().hash(location));

@override
String toString() {
  return 'BiometricHandshakeParams(sampleId: $sampleId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, proximityDistance: $proximityDistance, signalStrength: $signalStrength, location: $location)';
}


}

/// @nodoc
abstract mixin class $BiometricHandshakeParamsCopyWith<$Res>  {
  factory $BiometricHandshakeParamsCopyWith(BiometricHandshakeParams value, $Res Function(BiometricHandshakeParams) _then) = _$BiometricHandshakeParamsCopyWithImpl;
@useResult
$Res call({
 String sampleId, String patientDeviceId, String phlebotomistDeviceId, double proximityDistance, int signalStrength, GeoLocation location
});




}
/// @nodoc
class _$BiometricHandshakeParamsCopyWithImpl<$Res>
    implements $BiometricHandshakeParamsCopyWith<$Res> {
  _$BiometricHandshakeParamsCopyWithImpl(this._self, this._then);

  final BiometricHandshakeParams _self;
  final $Res Function(BiometricHandshakeParams) _then;

/// Create a copy of BiometricHandshakeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sampleId = null,Object? patientDeviceId = null,Object? phlebotomistDeviceId = null,Object? proximityDistance = null,Object? signalStrength = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,patientDeviceId: null == patientDeviceId ? _self.patientDeviceId : patientDeviceId // ignore: cast_nullable_to_non_nullable
as String,phlebotomistDeviceId: null == phlebotomistDeviceId ? _self.phlebotomistDeviceId : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
as String,proximityDistance: null == proximityDistance ? _self.proximityDistance : proximityDistance // ignore: cast_nullable_to_non_nullable
as double,signalStrength: null == signalStrength ? _self.signalStrength : signalStrength // ignore: cast_nullable_to_non_nullable
as int,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricHandshakeParams].
extension BiometricHandshakeParamsPatterns on BiometricHandshakeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricHandshakeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricHandshakeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricHandshakeParams value)  $default,){
final _that = this;
switch (_that) {
case _BiometricHandshakeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricHandshakeParams value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricHandshakeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sampleId,  String patientDeviceId,  String phlebotomistDeviceId,  double proximityDistance,  int signalStrength,  GeoLocation location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricHandshakeParams() when $default != null:
return $default(_that.sampleId,_that.patientDeviceId,_that.phlebotomistDeviceId,_that.proximityDistance,_that.signalStrength,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sampleId,  String patientDeviceId,  String phlebotomistDeviceId,  double proximityDistance,  int signalStrength,  GeoLocation location)  $default,) {final _that = this;
switch (_that) {
case _BiometricHandshakeParams():
return $default(_that.sampleId,_that.patientDeviceId,_that.phlebotomistDeviceId,_that.proximityDistance,_that.signalStrength,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sampleId,  String patientDeviceId,  String phlebotomistDeviceId,  double proximityDistance,  int signalStrength,  GeoLocation location)?  $default,) {final _that = this;
switch (_that) {
case _BiometricHandshakeParams() when $default != null:
return $default(_that.sampleId,_that.patientDeviceId,_that.phlebotomistDeviceId,_that.proximityDistance,_that.signalStrength,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _BiometricHandshakeParams implements BiometricHandshakeParams {
  const _BiometricHandshakeParams({required this.sampleId, required this.patientDeviceId, required this.phlebotomistDeviceId, required this.proximityDistance, required this.signalStrength, required this.location});
  

@override final  String sampleId;
@override final  String patientDeviceId;
@override final  String phlebotomistDeviceId;
@override final  double proximityDistance;
@override final  int signalStrength;
@override final  GeoLocation location;

/// Create a copy of BiometricHandshakeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricHandshakeParamsCopyWith<_BiometricHandshakeParams> get copyWith => __$BiometricHandshakeParamsCopyWithImpl<_BiometricHandshakeParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricHandshakeParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.patientDeviceId, patientDeviceId) || other.patientDeviceId == patientDeviceId)&&(identical(other.phlebotomistDeviceId, phlebotomistDeviceId) || other.phlebotomistDeviceId == phlebotomistDeviceId)&&(identical(other.proximityDistance, proximityDistance) || other.proximityDistance == proximityDistance)&&(identical(other.signalStrength, signalStrength) || other.signalStrength == signalStrength)&&const DeepCollectionEquality().equals(other.location, location));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,patientDeviceId,phlebotomistDeviceId,proximityDistance,signalStrength,const DeepCollectionEquality().hash(location));

@override
String toString() {
  return 'BiometricHandshakeParams(sampleId: $sampleId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, proximityDistance: $proximityDistance, signalStrength: $signalStrength, location: $location)';
}


}

/// @nodoc
abstract mixin class _$BiometricHandshakeParamsCopyWith<$Res> implements $BiometricHandshakeParamsCopyWith<$Res> {
  factory _$BiometricHandshakeParamsCopyWith(_BiometricHandshakeParams value, $Res Function(_BiometricHandshakeParams) _then) = __$BiometricHandshakeParamsCopyWithImpl;
@override @useResult
$Res call({
 String sampleId, String patientDeviceId, String phlebotomistDeviceId, double proximityDistance, int signalStrength, GeoLocation location
});




}
/// @nodoc
class __$BiometricHandshakeParamsCopyWithImpl<$Res>
    implements _$BiometricHandshakeParamsCopyWith<$Res> {
  __$BiometricHandshakeParamsCopyWithImpl(this._self, this._then);

  final _BiometricHandshakeParams _self;
  final $Res Function(_BiometricHandshakeParams) _then;

/// Create a copy of BiometricHandshakeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sampleId = null,Object? patientDeviceId = null,Object? phlebotomistDeviceId = null,Object? proximityDistance = null,Object? signalStrength = null,Object? location = freezed,}) {
  return _then(_BiometricHandshakeParams(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,patientDeviceId: null == patientDeviceId ? _self.patientDeviceId : patientDeviceId // ignore: cast_nullable_to_non_nullable
as String,phlebotomistDeviceId: null == phlebotomistDeviceId ? _self.phlebotomistDeviceId : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
as String,proximityDistance: null == proximityDistance ? _self.proximityDistance : proximityDistance // ignore: cast_nullable_to_non_nullable
as double,signalStrength: null == signalStrength ? _self.signalStrength : signalStrength // ignore: cast_nullable_to_non_nullable
as int,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}


}

// dart format on
