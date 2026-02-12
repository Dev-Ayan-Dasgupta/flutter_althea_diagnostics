// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_off_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignOffResultParams {

 String get resultId; String get pathologistId; String get digitalSignature;
/// Create a copy of SignOffResultParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignOffResultParamsCopyWith<SignOffResultParams> get copyWith => _$SignOffResultParamsCopyWithImpl<SignOffResultParams>(this as SignOffResultParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOffResultParams&&(identical(other.resultId, resultId) || other.resultId == resultId)&&(identical(other.pathologistId, pathologistId) || other.pathologistId == pathologistId)&&(identical(other.digitalSignature, digitalSignature) || other.digitalSignature == digitalSignature));
}


@override
int get hashCode => Object.hash(runtimeType,resultId,pathologistId,digitalSignature);

@override
String toString() {
  return 'SignOffResultParams(resultId: $resultId, pathologistId: $pathologistId, digitalSignature: $digitalSignature)';
}


}

/// @nodoc
abstract mixin class $SignOffResultParamsCopyWith<$Res>  {
  factory $SignOffResultParamsCopyWith(SignOffResultParams value, $Res Function(SignOffResultParams) _then) = _$SignOffResultParamsCopyWithImpl;
@useResult
$Res call({
 String resultId, String pathologistId, String digitalSignature
});




}
/// @nodoc
class _$SignOffResultParamsCopyWithImpl<$Res>
    implements $SignOffResultParamsCopyWith<$Res> {
  _$SignOffResultParamsCopyWithImpl(this._self, this._then);

  final SignOffResultParams _self;
  final $Res Function(SignOffResultParams) _then;

/// Create a copy of SignOffResultParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultId = null,Object? pathologistId = null,Object? digitalSignature = null,}) {
  return _then(_self.copyWith(
resultId: null == resultId ? _self.resultId : resultId // ignore: cast_nullable_to_non_nullable
as String,pathologistId: null == pathologistId ? _self.pathologistId : pathologistId // ignore: cast_nullable_to_non_nullable
as String,digitalSignature: null == digitalSignature ? _self.digitalSignature : digitalSignature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignOffResultParams].
extension SignOffResultParamsPatterns on SignOffResultParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignOffResultParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignOffResultParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignOffResultParams value)  $default,){
final _that = this;
switch (_that) {
case _SignOffResultParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignOffResultParams value)?  $default,){
final _that = this;
switch (_that) {
case _SignOffResultParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resultId,  String pathologistId,  String digitalSignature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignOffResultParams() when $default != null:
return $default(_that.resultId,_that.pathologistId,_that.digitalSignature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resultId,  String pathologistId,  String digitalSignature)  $default,) {final _that = this;
switch (_that) {
case _SignOffResultParams():
return $default(_that.resultId,_that.pathologistId,_that.digitalSignature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resultId,  String pathologistId,  String digitalSignature)?  $default,) {final _that = this;
switch (_that) {
case _SignOffResultParams() when $default != null:
return $default(_that.resultId,_that.pathologistId,_that.digitalSignature);case _:
  return null;

}
}

}

/// @nodoc


class _SignOffResultParams implements SignOffResultParams {
  const _SignOffResultParams({required this.resultId, required this.pathologistId, required this.digitalSignature});
  

@override final  String resultId;
@override final  String pathologistId;
@override final  String digitalSignature;

/// Create a copy of SignOffResultParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignOffResultParamsCopyWith<_SignOffResultParams> get copyWith => __$SignOffResultParamsCopyWithImpl<_SignOffResultParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOffResultParams&&(identical(other.resultId, resultId) || other.resultId == resultId)&&(identical(other.pathologistId, pathologistId) || other.pathologistId == pathologistId)&&(identical(other.digitalSignature, digitalSignature) || other.digitalSignature == digitalSignature));
}


@override
int get hashCode => Object.hash(runtimeType,resultId,pathologistId,digitalSignature);

@override
String toString() {
  return 'SignOffResultParams(resultId: $resultId, pathologistId: $pathologistId, digitalSignature: $digitalSignature)';
}


}

/// @nodoc
abstract mixin class _$SignOffResultParamsCopyWith<$Res> implements $SignOffResultParamsCopyWith<$Res> {
  factory _$SignOffResultParamsCopyWith(_SignOffResultParams value, $Res Function(_SignOffResultParams) _then) = __$SignOffResultParamsCopyWithImpl;
@override @useResult
$Res call({
 String resultId, String pathologistId, String digitalSignature
});




}
/// @nodoc
class __$SignOffResultParamsCopyWithImpl<$Res>
    implements _$SignOffResultParamsCopyWith<$Res> {
  __$SignOffResultParamsCopyWithImpl(this._self, this._then);

  final _SignOffResultParams _self;
  final $Res Function(_SignOffResultParams) _then;

/// Create a copy of SignOffResultParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultId = null,Object? pathologistId = null,Object? digitalSignature = null,}) {
  return _then(_SignOffResultParams(
resultId: null == resultId ? _self.resultId : resultId // ignore: cast_nullable_to_non_nullable
as String,pathologistId: null == pathologistId ? _self.pathologistId : pathologistId // ignore: cast_nullable_to_non_nullable
as String,digitalSignature: null == digitalSignature ? _self.digitalSignature : digitalSignature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
