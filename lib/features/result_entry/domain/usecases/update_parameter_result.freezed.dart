// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_parameter_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateParameterResultParams {

 String get resultId; String get testId; String get parameterId; ResultValue get value; String? get notes;
/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateParameterResultParamsCopyWith<UpdateParameterResultParams> get copyWith => _$UpdateParameterResultParamsCopyWithImpl<UpdateParameterResultParams>(this as UpdateParameterResultParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateParameterResultParams&&(identical(other.resultId, resultId) || other.resultId == resultId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.parameterId, parameterId) || other.parameterId == parameterId)&&(identical(other.value, value) || other.value == value)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,resultId,testId,parameterId,value,notes);

@override
String toString() {
  return 'UpdateParameterResultParams(resultId: $resultId, testId: $testId, parameterId: $parameterId, value: $value, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $UpdateParameterResultParamsCopyWith<$Res>  {
  factory $UpdateParameterResultParamsCopyWith(UpdateParameterResultParams value, $Res Function(UpdateParameterResultParams) _then) = _$UpdateParameterResultParamsCopyWithImpl;
@useResult
$Res call({
 String resultId, String testId, String parameterId, ResultValue value, String? notes
});


$ResultValueCopyWith<$Res> get value;

}
/// @nodoc
class _$UpdateParameterResultParamsCopyWithImpl<$Res>
    implements $UpdateParameterResultParamsCopyWith<$Res> {
  _$UpdateParameterResultParamsCopyWithImpl(this._self, this._then);

  final UpdateParameterResultParams _self;
  final $Res Function(UpdateParameterResultParams) _then;

/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultId = null,Object? testId = null,Object? parameterId = null,Object? value = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
resultId: null == resultId ? _self.resultId : resultId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,parameterId: null == parameterId ? _self.parameterId : parameterId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as ResultValue,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultValueCopyWith<$Res> get value {
  
  return $ResultValueCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateParameterResultParams].
extension UpdateParameterResultParamsPatterns on UpdateParameterResultParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateParameterResultParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateParameterResultParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateParameterResultParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateParameterResultParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateParameterResultParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateParameterResultParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resultId,  String testId,  String parameterId,  ResultValue value,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateParameterResultParams() when $default != null:
return $default(_that.resultId,_that.testId,_that.parameterId,_that.value,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resultId,  String testId,  String parameterId,  ResultValue value,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _UpdateParameterResultParams():
return $default(_that.resultId,_that.testId,_that.parameterId,_that.value,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resultId,  String testId,  String parameterId,  ResultValue value,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _UpdateParameterResultParams() when $default != null:
return $default(_that.resultId,_that.testId,_that.parameterId,_that.value,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateParameterResultParams implements UpdateParameterResultParams {
  const _UpdateParameterResultParams({required this.resultId, required this.testId, required this.parameterId, required this.value, this.notes});
  

@override final  String resultId;
@override final  String testId;
@override final  String parameterId;
@override final  ResultValue value;
@override final  String? notes;

/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateParameterResultParamsCopyWith<_UpdateParameterResultParams> get copyWith => __$UpdateParameterResultParamsCopyWithImpl<_UpdateParameterResultParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateParameterResultParams&&(identical(other.resultId, resultId) || other.resultId == resultId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.parameterId, parameterId) || other.parameterId == parameterId)&&(identical(other.value, value) || other.value == value)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,resultId,testId,parameterId,value,notes);

@override
String toString() {
  return 'UpdateParameterResultParams(resultId: $resultId, testId: $testId, parameterId: $parameterId, value: $value, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdateParameterResultParamsCopyWith<$Res> implements $UpdateParameterResultParamsCopyWith<$Res> {
  factory _$UpdateParameterResultParamsCopyWith(_UpdateParameterResultParams value, $Res Function(_UpdateParameterResultParams) _then) = __$UpdateParameterResultParamsCopyWithImpl;
@override @useResult
$Res call({
 String resultId, String testId, String parameterId, ResultValue value, String? notes
});


@override $ResultValueCopyWith<$Res> get value;

}
/// @nodoc
class __$UpdateParameterResultParamsCopyWithImpl<$Res>
    implements _$UpdateParameterResultParamsCopyWith<$Res> {
  __$UpdateParameterResultParamsCopyWithImpl(this._self, this._then);

  final _UpdateParameterResultParams _self;
  final $Res Function(_UpdateParameterResultParams) _then;

/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultId = null,Object? testId = null,Object? parameterId = null,Object? value = null,Object? notes = freezed,}) {
  return _then(_UpdateParameterResultParams(
resultId: null == resultId ? _self.resultId : resultId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,parameterId: null == parameterId ? _self.parameterId : parameterId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as ResultValue,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UpdateParameterResultParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultValueCopyWith<$Res> get value {
  
  return $ResultValueCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
