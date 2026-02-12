// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogTemperatureParams {
  String get sampleId => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogTemperatureParamsCopyWith<LogTemperatureParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogTemperatureParamsCopyWith<$Res> {
  factory $LogTemperatureParamsCopyWith(LogTemperatureParams value,
          $Res Function(LogTemperatureParams) then) =
      _$LogTemperatureParamsCopyWithImpl<$Res, LogTemperatureParams>;
  @useResult
  $Res call(
      {String sampleId,
      double temperature,
      double? humidity,
      GeoLocation location});

  $GeoLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$LogTemperatureParamsCopyWithImpl<$Res,
        $Val extends LogTemperatureParams>
    implements $LogTemperatureParamsCopyWith<$Res> {
  _$LogTemperatureParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? temperature = null,
    Object? humidity = freezed,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get location {
    return $GeoLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogTemperatureParamsImplCopyWith<$Res>
    implements $LogTemperatureParamsCopyWith<$Res> {
  factory _$$LogTemperatureParamsImplCopyWith(_$LogTemperatureParamsImpl value,
          $Res Function(_$LogTemperatureParamsImpl) then) =
      __$$LogTemperatureParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      double temperature,
      double? humidity,
      GeoLocation location});

  @override
  $GeoLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$LogTemperatureParamsImplCopyWithImpl<$Res>
    extends _$LogTemperatureParamsCopyWithImpl<$Res, _$LogTemperatureParamsImpl>
    implements _$$LogTemperatureParamsImplCopyWith<$Res> {
  __$$LogTemperatureParamsImplCopyWithImpl(_$LogTemperatureParamsImpl _value,
      $Res Function(_$LogTemperatureParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? temperature = null,
    Object? humidity = freezed,
    Object? location = null,
  }) {
    return _then(_$LogTemperatureParamsImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ));
  }
}

/// @nodoc

class _$LogTemperatureParamsImpl implements _LogTemperatureParams {
  const _$LogTemperatureParamsImpl(
      {required this.sampleId,
      required this.temperature,
      this.humidity,
      required this.location});

  @override
  final String sampleId;
  @override
  final double temperature;
  @override
  final double? humidity;
  @override
  final GeoLocation location;

  @override
  String toString() {
    return 'LogTemperatureParams(sampleId: $sampleId, temperature: $temperature, humidity: $humidity, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogTemperatureParamsImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sampleId, temperature, humidity, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogTemperatureParamsImplCopyWith<_$LogTemperatureParamsImpl>
      get copyWith =>
          __$$LogTemperatureParamsImplCopyWithImpl<_$LogTemperatureParamsImpl>(
              this, _$identity);
}

abstract class _LogTemperatureParams implements LogTemperatureParams {
  const factory _LogTemperatureParams(
      {required final String sampleId,
      required final double temperature,
      final double? humidity,
      required final GeoLocation location}) = _$LogTemperatureParamsImpl;

  @override
  String get sampleId;
  @override
  double get temperature;
  @override
  double? get humidity;
  @override
  GeoLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$LogTemperatureParamsImplCopyWith<_$LogTemperatureParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
