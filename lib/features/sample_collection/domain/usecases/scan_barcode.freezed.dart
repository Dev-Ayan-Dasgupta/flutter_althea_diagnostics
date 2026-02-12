// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_barcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanBarcodeParams {
  String get vialId => throw _privateConstructorUsedError;
  String get phlebotomistId => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanBarcodeParamsCopyWith<ScanBarcodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanBarcodeParamsCopyWith<$Res> {
  factory $ScanBarcodeParamsCopyWith(
          ScanBarcodeParams value, $Res Function(ScanBarcodeParams) then) =
      _$ScanBarcodeParamsCopyWithImpl<$Res, ScanBarcodeParams>;
  @useResult
  $Res call({String vialId, String phlebotomistId, GeoLocation location});
}

/// @nodoc
class _$ScanBarcodeParamsCopyWithImpl<$Res, $Val extends ScanBarcodeParams>
    implements $ScanBarcodeParamsCopyWith<$Res> {
  _$ScanBarcodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vialId = null,
    Object? phlebotomistId = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      vialId: null == vialId
          ? _value.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistId: null == phlebotomistId
          ? _value.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanBarcodeParamsImplCopyWith<$Res>
    implements $ScanBarcodeParamsCopyWith<$Res> {
  factory _$$ScanBarcodeParamsImplCopyWith(_$ScanBarcodeParamsImpl value,
          $Res Function(_$ScanBarcodeParamsImpl) then) =
      __$$ScanBarcodeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String vialId, String phlebotomistId, GeoLocation location});
}

/// @nodoc
class __$$ScanBarcodeParamsImplCopyWithImpl<$Res>
    extends _$ScanBarcodeParamsCopyWithImpl<$Res, _$ScanBarcodeParamsImpl>
    implements _$$ScanBarcodeParamsImplCopyWith<$Res> {
  __$$ScanBarcodeParamsImplCopyWithImpl(_$ScanBarcodeParamsImpl _value,
      $Res Function(_$ScanBarcodeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vialId = null,
    Object? phlebotomistId = null,
    Object? location = freezed,
  }) {
    return _then(_$ScanBarcodeParamsImpl(
      vialId: null == vialId
          ? _value.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistId: null == phlebotomistId
          ? _value.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ));
  }
}

/// @nodoc

class _$ScanBarcodeParamsImpl implements _ScanBarcodeParams {
  const _$ScanBarcodeParamsImpl(
      {required this.vialId,
      required this.phlebotomistId,
      required this.location});

  @override
  final String vialId;
  @override
  final String phlebotomistId;
  @override
  final GeoLocation location;

  @override
  String toString() {
    return 'ScanBarcodeParams(vialId: $vialId, phlebotomistId: $phlebotomistId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanBarcodeParamsImpl &&
            (identical(other.vialId, vialId) || other.vialId == vialId) &&
            (identical(other.phlebotomistId, phlebotomistId) ||
                other.phlebotomistId == phlebotomistId) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vialId, phlebotomistId,
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanBarcodeParamsImplCopyWith<_$ScanBarcodeParamsImpl> get copyWith =>
      __$$ScanBarcodeParamsImplCopyWithImpl<_$ScanBarcodeParamsImpl>(
          this, _$identity);
}

abstract class _ScanBarcodeParams implements ScanBarcodeParams {
  const factory _ScanBarcodeParams(
      {required final String vialId,
      required final String phlebotomistId,
      required final GeoLocation location}) = _$ScanBarcodeParamsImpl;

  @override
  String get vialId;
  @override
  String get phlebotomistId;
  @override
  GeoLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$ScanBarcodeParamsImplCopyWith<_$ScanBarcodeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
