// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_sample_as_collected.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkSampleAsCollectedParams {
  String get sampleId => throw _privateConstructorUsedError;
  DateTime get collectionTime => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarkSampleAsCollectedParamsCopyWith<MarkSampleAsCollectedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkSampleAsCollectedParamsCopyWith<$Res> {
  factory $MarkSampleAsCollectedParamsCopyWith(
          MarkSampleAsCollectedParams value,
          $Res Function(MarkSampleAsCollectedParams) then) =
      _$MarkSampleAsCollectedParamsCopyWithImpl<$Res,
          MarkSampleAsCollectedParams>;
  @useResult
  $Res call(
      {String sampleId,
      DateTime collectionTime,
      GeoLocation location,
      List<String>? imageUrls,
      String? notes});
}

/// @nodoc
class _$MarkSampleAsCollectedParamsCopyWithImpl<$Res,
        $Val extends MarkSampleAsCollectedParams>
    implements $MarkSampleAsCollectedParamsCopyWith<$Res> {
  _$MarkSampleAsCollectedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? collectionTime = null,
    Object? location = freezed,
    Object? imageUrls = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkSampleAsCollectedParamsImplCopyWith<$Res>
    implements $MarkSampleAsCollectedParamsCopyWith<$Res> {
  factory _$$MarkSampleAsCollectedParamsImplCopyWith(
          _$MarkSampleAsCollectedParamsImpl value,
          $Res Function(_$MarkSampleAsCollectedParamsImpl) then) =
      __$$MarkSampleAsCollectedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      DateTime collectionTime,
      GeoLocation location,
      List<String>? imageUrls,
      String? notes});
}

/// @nodoc
class __$$MarkSampleAsCollectedParamsImplCopyWithImpl<$Res>
    extends _$MarkSampleAsCollectedParamsCopyWithImpl<$Res,
        _$MarkSampleAsCollectedParamsImpl>
    implements _$$MarkSampleAsCollectedParamsImplCopyWith<$Res> {
  __$$MarkSampleAsCollectedParamsImplCopyWithImpl(
      _$MarkSampleAsCollectedParamsImpl _value,
      $Res Function(_$MarkSampleAsCollectedParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? collectionTime = null,
    Object? location = freezed,
    Object? imageUrls = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$MarkSampleAsCollectedParamsImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MarkSampleAsCollectedParamsImpl
    implements _MarkSampleAsCollectedParams {
  const _$MarkSampleAsCollectedParamsImpl(
      {required this.sampleId,
      required this.collectionTime,
      required this.location,
      final List<String>? imageUrls,
      this.notes})
      : _imageUrls = imageUrls;

  @override
  final String sampleId;
  @override
  final DateTime collectionTime;
  @override
  final GeoLocation location;
  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;

  @override
  String toString() {
    return 'MarkSampleAsCollectedParams(sampleId: $sampleId, collectionTime: $collectionTime, location: $location, imageUrls: $imageUrls, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkSampleAsCollectedParamsImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.collectionTime, collectionTime) ||
                other.collectionTime == collectionTime) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      collectionTime,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_imageUrls),
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkSampleAsCollectedParamsImplCopyWith<_$MarkSampleAsCollectedParamsImpl>
      get copyWith => __$$MarkSampleAsCollectedParamsImplCopyWithImpl<
          _$MarkSampleAsCollectedParamsImpl>(this, _$identity);
}

abstract class _MarkSampleAsCollectedParams
    implements MarkSampleAsCollectedParams {
  const factory _MarkSampleAsCollectedParams(
      {required final String sampleId,
      required final DateTime collectionTime,
      required final GeoLocation location,
      final List<String>? imageUrls,
      final String? notes}) = _$MarkSampleAsCollectedParamsImpl;

  @override
  String get sampleId;
  @override
  DateTime get collectionTime;
  @override
  GeoLocation get location;
  @override
  List<String>? get imageUrls;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$MarkSampleAsCollectedParamsImplCopyWith<_$MarkSampleAsCollectedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
