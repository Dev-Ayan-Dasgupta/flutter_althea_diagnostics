// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SampleFilter {

 String? get searchQuery; SampleStatus? get status; DateTime? get startDate; DateTime? get endDate; IntegrityLevel? get integrityLevel; String? get phlebotomistId; String? get labId; bool? get hasTatBreach; bool? get hasColdChainBreach; double? get minIntegrityScore; double? get maxIntegrityScore; List<String>? get testIds;
/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleFilterCopyWith<SampleFilter> get copyWith => _$SampleFilterCopyWithImpl<SampleFilter>(this as SampleFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleFilter&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.integrityLevel, integrityLevel) || other.integrityLevel == integrityLevel)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.hasTatBreach, hasTatBreach) || other.hasTatBreach == hasTatBreach)&&(identical(other.hasColdChainBreach, hasColdChainBreach) || other.hasColdChainBreach == hasColdChainBreach)&&(identical(other.minIntegrityScore, minIntegrityScore) || other.minIntegrityScore == minIntegrityScore)&&(identical(other.maxIntegrityScore, maxIntegrityScore) || other.maxIntegrityScore == maxIntegrityScore)&&const DeepCollectionEquality().equals(other.testIds, testIds));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,status,startDate,endDate,integrityLevel,phlebotomistId,labId,hasTatBreach,hasColdChainBreach,minIntegrityScore,maxIntegrityScore,const DeepCollectionEquality().hash(testIds));

@override
String toString() {
  return 'SampleFilter(searchQuery: $searchQuery, status: $status, startDate: $startDate, endDate: $endDate, integrityLevel: $integrityLevel, phlebotomistId: $phlebotomistId, labId: $labId, hasTatBreach: $hasTatBreach, hasColdChainBreach: $hasColdChainBreach, minIntegrityScore: $minIntegrityScore, maxIntegrityScore: $maxIntegrityScore, testIds: $testIds)';
}


}

/// @nodoc
abstract mixin class $SampleFilterCopyWith<$Res>  {
  factory $SampleFilterCopyWith(SampleFilter value, $Res Function(SampleFilter) _then) = _$SampleFilterCopyWithImpl;
@useResult
$Res call({
 String? searchQuery, SampleStatus? status, DateTime? startDate, DateTime? endDate, IntegrityLevel? integrityLevel, String? phlebotomistId, String? labId, bool? hasTatBreach, bool? hasColdChainBreach, double? minIntegrityScore, double? maxIntegrityScore, List<String>? testIds
});


$SampleStatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$SampleFilterCopyWithImpl<$Res>
    implements $SampleFilterCopyWith<$Res> {
  _$SampleFilterCopyWithImpl(this._self, this._then);

  final SampleFilter _self;
  final $Res Function(SampleFilter) _then;

/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = freezed,Object? status = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? integrityLevel = freezed,Object? phlebotomistId = freezed,Object? labId = freezed,Object? hasTatBreach = freezed,Object? hasColdChainBreach = freezed,Object? minIntegrityScore = freezed,Object? maxIntegrityScore = freezed,Object? testIds = freezed,}) {
  return _then(_self.copyWith(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SampleStatus?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,integrityLevel: freezed == integrityLevel ? _self.integrityLevel : integrityLevel // ignore: cast_nullable_to_non_nullable
as IntegrityLevel?,phlebotomistId: freezed == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,labId: freezed == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String?,hasTatBreach: freezed == hasTatBreach ? _self.hasTatBreach : hasTatBreach // ignore: cast_nullable_to_non_nullable
as bool?,hasColdChainBreach: freezed == hasColdChainBreach ? _self.hasColdChainBreach : hasColdChainBreach // ignore: cast_nullable_to_non_nullable
as bool?,minIntegrityScore: freezed == minIntegrityScore ? _self.minIntegrityScore : minIntegrityScore // ignore: cast_nullable_to_non_nullable
as double?,maxIntegrityScore: freezed == maxIntegrityScore ? _self.maxIntegrityScore : maxIntegrityScore // ignore: cast_nullable_to_non_nullable
as double?,testIds: freezed == testIds ? _self.testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $SampleStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [SampleFilter].
extension SampleFilterPatterns on SampleFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleFilter value)  $default,){
final _that = this;
switch (_that) {
case _SampleFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SampleFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? searchQuery,  SampleStatus? status,  DateTime? startDate,  DateTime? endDate,  IntegrityLevel? integrityLevel,  String? phlebotomistId,  String? labId,  bool? hasTatBreach,  bool? hasColdChainBreach,  double? minIntegrityScore,  double? maxIntegrityScore,  List<String>? testIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleFilter() when $default != null:
return $default(_that.searchQuery,_that.status,_that.startDate,_that.endDate,_that.integrityLevel,_that.phlebotomistId,_that.labId,_that.hasTatBreach,_that.hasColdChainBreach,_that.minIntegrityScore,_that.maxIntegrityScore,_that.testIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? searchQuery,  SampleStatus? status,  DateTime? startDate,  DateTime? endDate,  IntegrityLevel? integrityLevel,  String? phlebotomistId,  String? labId,  bool? hasTatBreach,  bool? hasColdChainBreach,  double? minIntegrityScore,  double? maxIntegrityScore,  List<String>? testIds)  $default,) {final _that = this;
switch (_that) {
case _SampleFilter():
return $default(_that.searchQuery,_that.status,_that.startDate,_that.endDate,_that.integrityLevel,_that.phlebotomistId,_that.labId,_that.hasTatBreach,_that.hasColdChainBreach,_that.minIntegrityScore,_that.maxIntegrityScore,_that.testIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? searchQuery,  SampleStatus? status,  DateTime? startDate,  DateTime? endDate,  IntegrityLevel? integrityLevel,  String? phlebotomistId,  String? labId,  bool? hasTatBreach,  bool? hasColdChainBreach,  double? minIntegrityScore,  double? maxIntegrityScore,  List<String>? testIds)?  $default,) {final _that = this;
switch (_that) {
case _SampleFilter() when $default != null:
return $default(_that.searchQuery,_that.status,_that.startDate,_that.endDate,_that.integrityLevel,_that.phlebotomistId,_that.labId,_that.hasTatBreach,_that.hasColdChainBreach,_that.minIntegrityScore,_that.maxIntegrityScore,_that.testIds);case _:
  return null;

}
}

}

/// @nodoc


class _SampleFilter implements SampleFilter {
  const _SampleFilter({this.searchQuery, this.status, this.startDate, this.endDate, this.integrityLevel, this.phlebotomistId, this.labId, this.hasTatBreach, this.hasColdChainBreach, this.minIntegrityScore, this.maxIntegrityScore, final  List<String>? testIds}): _testIds = testIds;
  

@override final  String? searchQuery;
@override final  SampleStatus? status;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  IntegrityLevel? integrityLevel;
@override final  String? phlebotomistId;
@override final  String? labId;
@override final  bool? hasTatBreach;
@override final  bool? hasColdChainBreach;
@override final  double? minIntegrityScore;
@override final  double? maxIntegrityScore;
 final  List<String>? _testIds;
@override List<String>? get testIds {
  final value = _testIds;
  if (value == null) return null;
  if (_testIds is EqualUnmodifiableListView) return _testIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleFilterCopyWith<_SampleFilter> get copyWith => __$SampleFilterCopyWithImpl<_SampleFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleFilter&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.integrityLevel, integrityLevel) || other.integrityLevel == integrityLevel)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.hasTatBreach, hasTatBreach) || other.hasTatBreach == hasTatBreach)&&(identical(other.hasColdChainBreach, hasColdChainBreach) || other.hasColdChainBreach == hasColdChainBreach)&&(identical(other.minIntegrityScore, minIntegrityScore) || other.minIntegrityScore == minIntegrityScore)&&(identical(other.maxIntegrityScore, maxIntegrityScore) || other.maxIntegrityScore == maxIntegrityScore)&&const DeepCollectionEquality().equals(other._testIds, _testIds));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,status,startDate,endDate,integrityLevel,phlebotomistId,labId,hasTatBreach,hasColdChainBreach,minIntegrityScore,maxIntegrityScore,const DeepCollectionEquality().hash(_testIds));

@override
String toString() {
  return 'SampleFilter(searchQuery: $searchQuery, status: $status, startDate: $startDate, endDate: $endDate, integrityLevel: $integrityLevel, phlebotomistId: $phlebotomistId, labId: $labId, hasTatBreach: $hasTatBreach, hasColdChainBreach: $hasColdChainBreach, minIntegrityScore: $minIntegrityScore, maxIntegrityScore: $maxIntegrityScore, testIds: $testIds)';
}


}

/// @nodoc
abstract mixin class _$SampleFilterCopyWith<$Res> implements $SampleFilterCopyWith<$Res> {
  factory _$SampleFilterCopyWith(_SampleFilter value, $Res Function(_SampleFilter) _then) = __$SampleFilterCopyWithImpl;
@override @useResult
$Res call({
 String? searchQuery, SampleStatus? status, DateTime? startDate, DateTime? endDate, IntegrityLevel? integrityLevel, String? phlebotomistId, String? labId, bool? hasTatBreach, bool? hasColdChainBreach, double? minIntegrityScore, double? maxIntegrityScore, List<String>? testIds
});


@override $SampleStatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$SampleFilterCopyWithImpl<$Res>
    implements _$SampleFilterCopyWith<$Res> {
  __$SampleFilterCopyWithImpl(this._self, this._then);

  final _SampleFilter _self;
  final $Res Function(_SampleFilter) _then;

/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,Object? status = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? integrityLevel = freezed,Object? phlebotomistId = freezed,Object? labId = freezed,Object? hasTatBreach = freezed,Object? hasColdChainBreach = freezed,Object? minIntegrityScore = freezed,Object? maxIntegrityScore = freezed,Object? testIds = freezed,}) {
  return _then(_SampleFilter(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SampleStatus?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,integrityLevel: freezed == integrityLevel ? _self.integrityLevel : integrityLevel // ignore: cast_nullable_to_non_nullable
as IntegrityLevel?,phlebotomistId: freezed == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,labId: freezed == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String?,hasTatBreach: freezed == hasTatBreach ? _self.hasTatBreach : hasTatBreach // ignore: cast_nullable_to_non_nullable
as bool?,hasColdChainBreach: freezed == hasColdChainBreach ? _self.hasColdChainBreach : hasColdChainBreach // ignore: cast_nullable_to_non_nullable
as bool?,minIntegrityScore: freezed == minIntegrityScore ? _self.minIntegrityScore : minIntegrityScore // ignore: cast_nullable_to_non_nullable
as double?,maxIntegrityScore: freezed == maxIntegrityScore ? _self.maxIntegrityScore : maxIntegrityScore // ignore: cast_nullable_to_non_nullable
as double?,testIds: freezed == testIds ? _self._testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of SampleFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $SampleStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
