// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_result_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanResultSheetParams {
  String get imagePath => throw _privateConstructorUsedError;
  String get testId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanResultSheetParamsCopyWith<ScanResultSheetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanResultSheetParamsCopyWith<$Res> {
  factory $ScanResultSheetParamsCopyWith(ScanResultSheetParams value,
          $Res Function(ScanResultSheetParams) then) =
      _$ScanResultSheetParamsCopyWithImpl<$Res, ScanResultSheetParams>;
  @useResult
  $Res call({String imagePath, String testId});
}

/// @nodoc
class _$ScanResultSheetParamsCopyWithImpl<$Res,
        $Val extends ScanResultSheetParams>
    implements $ScanResultSheetParamsCopyWith<$Res> {
  _$ScanResultSheetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? testId = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanResultSheetParamsImplCopyWith<$Res>
    implements $ScanResultSheetParamsCopyWith<$Res> {
  factory _$$ScanResultSheetParamsImplCopyWith(
          _$ScanResultSheetParamsImpl value,
          $Res Function(_$ScanResultSheetParamsImpl) then) =
      __$$ScanResultSheetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String testId});
}

/// @nodoc
class __$$ScanResultSheetParamsImplCopyWithImpl<$Res>
    extends _$ScanResultSheetParamsCopyWithImpl<$Res,
        _$ScanResultSheetParamsImpl>
    implements _$$ScanResultSheetParamsImplCopyWith<$Res> {
  __$$ScanResultSheetParamsImplCopyWithImpl(_$ScanResultSheetParamsImpl _value,
      $Res Function(_$ScanResultSheetParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? testId = null,
  }) {
    return _then(_$ScanResultSheetParamsImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanResultSheetParamsImpl implements _ScanResultSheetParams {
  const _$ScanResultSheetParamsImpl(
      {required this.imagePath, required this.testId});

  @override
  final String imagePath;
  @override
  final String testId;

  @override
  String toString() {
    return 'ScanResultSheetParams(imagePath: $imagePath, testId: $testId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanResultSheetParamsImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.testId, testId) || other.testId == testId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, testId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanResultSheetParamsImplCopyWith<_$ScanResultSheetParamsImpl>
      get copyWith => __$$ScanResultSheetParamsImplCopyWithImpl<
          _$ScanResultSheetParamsImpl>(this, _$identity);
}

abstract class _ScanResultSheetParams implements ScanResultSheetParams {
  const factory _ScanResultSheetParams(
      {required final String imagePath,
      required final String testId}) = _$ScanResultSheetParamsImpl;

  @override
  String get imagePath;
  @override
  String get testId;
  @override
  @JsonKey(ignore: true)
  _$$ScanResultSheetParamsImplCopyWith<_$ScanResultSheetParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
