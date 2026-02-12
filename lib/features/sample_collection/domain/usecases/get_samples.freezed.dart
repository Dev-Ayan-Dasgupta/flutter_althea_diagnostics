// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_samples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetSamplesParams {
  SampleStatus? get status => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSamplesParamsCopyWith<GetSamplesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSamplesParamsCopyWith<$Res> {
  factory $GetSamplesParamsCopyWith(
          GetSamplesParams value, $Res Function(GetSamplesParams) then) =
      _$GetSamplesParamsCopyWithImpl<$Res, GetSamplesParams>;
  @useResult
  $Res call(
      {SampleStatus? status,
      DateTime? startDate,
      DateTime? endDate,
      int page,
      int limit});
}

/// @nodoc
class _$GetSamplesParamsCopyWithImpl<$Res, $Val extends GetSamplesParams>
    implements $GetSamplesParamsCopyWith<$Res> {
  _$GetSamplesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSamplesParamsImplCopyWith<$Res>
    implements $GetSamplesParamsCopyWith<$Res> {
  factory _$$GetSamplesParamsImplCopyWith(_$GetSamplesParamsImpl value,
          $Res Function(_$GetSamplesParamsImpl) then) =
      __$$GetSamplesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SampleStatus? status,
      DateTime? startDate,
      DateTime? endDate,
      int page,
      int limit});
}

/// @nodoc
class __$$GetSamplesParamsImplCopyWithImpl<$Res>
    extends _$GetSamplesParamsCopyWithImpl<$Res, _$GetSamplesParamsImpl>
    implements _$$GetSamplesParamsImplCopyWith<$Res> {
  __$$GetSamplesParamsImplCopyWithImpl(_$GetSamplesParamsImpl _value,
      $Res Function(_$GetSamplesParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$GetSamplesParamsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSamplesParamsImpl implements _GetSamplesParams {
  const _$GetSamplesParamsImpl(
      {this.status,
      this.startDate,
      this.endDate,
      this.page = 1,
      this.limit = 20});

  @override
  final SampleStatus? status;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetSamplesParams(status: $status, startDate: $startDate, endDate: $endDate, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSamplesParamsImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      startDate,
      endDate,
      page,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSamplesParamsImplCopyWith<_$GetSamplesParamsImpl> get copyWith =>
      __$$GetSamplesParamsImplCopyWithImpl<_$GetSamplesParamsImpl>(
          this, _$identity);
}

abstract class _GetSamplesParams implements GetSamplesParams {
  const factory _GetSamplesParams(
      {final SampleStatus? status,
      final DateTime? startDate,
      final DateTime? endDate,
      final int page,
      final int limit}) = _$GetSamplesParamsImpl;

  @override
  SampleStatus? get status;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetSamplesParamsImplCopyWith<_$GetSamplesParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
