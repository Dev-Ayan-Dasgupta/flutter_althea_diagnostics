// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assess_pre_analytical_risk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssessPreAnalyticalRiskParams {

 String get sampleId; Map<String, dynamic> get collectionData;
/// Create a copy of AssessPreAnalyticalRiskParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessPreAnalyticalRiskParamsCopyWith<AssessPreAnalyticalRiskParams> get copyWith => _$AssessPreAnalyticalRiskParamsCopyWithImpl<AssessPreAnalyticalRiskParams>(this as AssessPreAnalyticalRiskParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessPreAnalyticalRiskParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&const DeepCollectionEquality().equals(other.collectionData, collectionData));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,const DeepCollectionEquality().hash(collectionData));

@override
String toString() {
  return 'AssessPreAnalyticalRiskParams(sampleId: $sampleId, collectionData: $collectionData)';
}


}

/// @nodoc
abstract mixin class $AssessPreAnalyticalRiskParamsCopyWith<$Res>  {
  factory $AssessPreAnalyticalRiskParamsCopyWith(AssessPreAnalyticalRiskParams value, $Res Function(AssessPreAnalyticalRiskParams) _then) = _$AssessPreAnalyticalRiskParamsCopyWithImpl;
@useResult
$Res call({
 String sampleId, Map<String, dynamic> collectionData
});




}
/// @nodoc
class _$AssessPreAnalyticalRiskParamsCopyWithImpl<$Res>
    implements $AssessPreAnalyticalRiskParamsCopyWith<$Res> {
  _$AssessPreAnalyticalRiskParamsCopyWithImpl(this._self, this._then);

  final AssessPreAnalyticalRiskParams _self;
  final $Res Function(AssessPreAnalyticalRiskParams) _then;

/// Create a copy of AssessPreAnalyticalRiskParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sampleId = null,Object? collectionData = null,}) {
  return _then(_self.copyWith(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,collectionData: null == collectionData ? _self.collectionData : collectionData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessPreAnalyticalRiskParams].
extension AssessPreAnalyticalRiskParamsPatterns on AssessPreAnalyticalRiskParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessPreAnalyticalRiskParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessPreAnalyticalRiskParams value)  $default,){
final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessPreAnalyticalRiskParams value)?  $default,){
final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sampleId,  Map<String, dynamic> collectionData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams() when $default != null:
return $default(_that.sampleId,_that.collectionData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sampleId,  Map<String, dynamic> collectionData)  $default,) {final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams():
return $default(_that.sampleId,_that.collectionData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sampleId,  Map<String, dynamic> collectionData)?  $default,) {final _that = this;
switch (_that) {
case _AssessPreAnalyticalRiskParams() when $default != null:
return $default(_that.sampleId,_that.collectionData);case _:
  return null;

}
}

}

/// @nodoc


class _AssessPreAnalyticalRiskParams implements AssessPreAnalyticalRiskParams {
  const _AssessPreAnalyticalRiskParams({required this.sampleId, required final  Map<String, dynamic> collectionData}): _collectionData = collectionData;
  

@override final  String sampleId;
 final  Map<String, dynamic> _collectionData;
@override Map<String, dynamic> get collectionData {
  if (_collectionData is EqualUnmodifiableMapView) return _collectionData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_collectionData);
}


/// Create a copy of AssessPreAnalyticalRiskParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessPreAnalyticalRiskParamsCopyWith<_AssessPreAnalyticalRiskParams> get copyWith => __$AssessPreAnalyticalRiskParamsCopyWithImpl<_AssessPreAnalyticalRiskParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessPreAnalyticalRiskParams&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&const DeepCollectionEquality().equals(other._collectionData, _collectionData));
}


@override
int get hashCode => Object.hash(runtimeType,sampleId,const DeepCollectionEquality().hash(_collectionData));

@override
String toString() {
  return 'AssessPreAnalyticalRiskParams(sampleId: $sampleId, collectionData: $collectionData)';
}


}

/// @nodoc
abstract mixin class _$AssessPreAnalyticalRiskParamsCopyWith<$Res> implements $AssessPreAnalyticalRiskParamsCopyWith<$Res> {
  factory _$AssessPreAnalyticalRiskParamsCopyWith(_AssessPreAnalyticalRiskParams value, $Res Function(_AssessPreAnalyticalRiskParams) _then) = __$AssessPreAnalyticalRiskParamsCopyWithImpl;
@override @useResult
$Res call({
 String sampleId, Map<String, dynamic> collectionData
});




}
/// @nodoc
class __$AssessPreAnalyticalRiskParamsCopyWithImpl<$Res>
    implements _$AssessPreAnalyticalRiskParamsCopyWith<$Res> {
  __$AssessPreAnalyticalRiskParamsCopyWithImpl(this._self, this._then);

  final _AssessPreAnalyticalRiskParams _self;
  final $Res Function(_AssessPreAnalyticalRiskParams) _then;

/// Create a copy of AssessPreAnalyticalRiskParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sampleId = null,Object? collectionData = null,}) {
  return _then(_AssessPreAnalyticalRiskParams(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,collectionData: null == collectionData ? _self._collectionData : collectionData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
