// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogTemperatureParams {

 String get sampleId; double get temperature; double? get humidity; GeoLocation get location;
/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogTemperatureParamsCopyWith<LogTemperatureParams> get copyWith => _$LogTemperatureParamsCopyWithImpl<LogTemperatureParams>(this as LogTemperatureParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogTemperatureParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,temperature,humidity,location);

@override
String toString() {
  return 'LogTemperatureParams(sampleId: $sampleId, temperature: $temperature, humidity: $humidity, location: $location)';
}


}

/// @nodoc
abstract mixin class $LogTemperatureParamsCopyWith<$Res>  {
  factory $LogTemperatureParamsCopyWith(LogTemperatureParams value, $Res Function(LogTemperatureParams) _then) = _$LogTemperatureParamsCopyWithImpl;
@useResult
$Res call({
 String sampleId, double temperature, double? humidity, GeoLocation location
});


$GeoLocationCopyWith<$Res> get location;

}
/// @nodoc
class _$LogTemperatureParamsCopyWithImpl<$Res>
    implements $LogTemperatureParamsCopyWith<$Res> {
  _$LogTemperatureParamsCopyWithImpl(this._self, this._then);

  final LogTemperatureParams _self;
  final $Res Function(LogTemperatureParams) _then;

/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sampleId = null,Object? temperature = null,Object? humidity = freezed,Object? location = null,}) {
  return _then(_self.copyWith(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}
/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [LogTemperatureParams].
extension LogTemperatureParamsPatterns on LogTemperatureParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogTemperatureParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogTemperatureParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogTemperatureParams value)  $default,){
final _that = this;
switch (_that) {
case _LogTemperatureParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogTemperatureParams value)?  $default,){
final _that = this;
switch (_that) {
case _LogTemperatureParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sampleId,  double temperature,  double? humidity,  GeoLocation location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogTemperatureParams() when $default != null:
return $default(_that.sampleId,_that.temperature,_that.humidity,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sampleId,  double temperature,  double? humidity,  GeoLocation location)  $default,) {final _that = this;
switch (_that) {
case _LogTemperatureParams():
return $default(_that.sampleId,_that.temperature,_that.humidity,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sampleId,  double temperature,  double? humidity,  GeoLocation location)?  $default,) {final _that = this;
switch (_that) {
case _LogTemperatureParams() when $default != null:
return $default(_that.sampleId,_that.temperature,_that.humidity,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _LogTemperatureParams implements LogTemperatureParams {
  const _LogTemperatureParams({required this.sampleId, required this.temperature, this.humidity, required this.location});
  

@override final  String sampleId;
@override final  double temperature;
@override final  double? humidity;
@override final  GeoLocation location;

/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogTemperatureParamsCopyWith<_LogTemperatureParams> get copyWith => __$LogTemperatureParamsCopyWithImpl<_LogTemperatureParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogTemperatureParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,temperature,humidity,location);

@override
String toString() {
  return 'LogTemperatureParams(sampleId: $sampleId, temperature: $temperature, humidity: $humidity, location: $location)';
}


}

/// @nodoc
abstract mixin class _$LogTemperatureParamsCopyWith<$Res> implements $LogTemperatureParamsCopyWith<$Res> {
  factory _$LogTemperatureParamsCopyWith(_LogTemperatureParams value, $Res Function(_LogTemperatureParams) _then) = __$LogTemperatureParamsCopyWithImpl;
@override @useResult
$Res call({
 String sampleId, double temperature, double? humidity, GeoLocation location
});


@override $GeoLocationCopyWith<$Res> get location;

}
/// @nodoc
class __$LogTemperatureParamsCopyWithImpl<$Res>
    implements _$LogTemperatureParamsCopyWith<$Res> {
  __$LogTemperatureParamsCopyWithImpl(this._self, this._then);

  final _LogTemperatureParams _self;
  final $Res Function(_LogTemperatureParams) _then;

/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sampleId = null,Object? temperature = null,Object? humidity = freezed,Object? location = null,}) {
  return _then(_LogTemperatureParams(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}

/// Create a copy of LogTemperatureParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
