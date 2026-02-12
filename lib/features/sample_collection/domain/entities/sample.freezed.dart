// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sample {

 String get id; String get vialId; String get patientAbhaId; String get patientName; String get orderId; List<String> get testIds; SampleStatus get status; DateTime get collectionTime; SampleIntegrityScore get integrityScore; List<SampleEvent> get chainOfCustody; String? get phlebotomistId; String? get phlebotomistName; String? get labId; String? get labName; DateTime? get reachedLabTime; DateTime? get processingStartTime; DateTime? get processingEndTime; ColdChainData? get coldChainData; BiometricVerification? get biometricVerification; PreAnalyticalRiskAssessment? get preAnalyticalRisk; SampleCondition? get condition; String? get notes; List<String> get imageUrls; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleCopyWith<Sample> get copyWith => _$SampleCopyWithImpl<Sample>(this as Sample, _$identity);

  /// Serializes this Sample to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sample&&(identical(other.id, id) || other.id == id)&&(identical(other.vialId, vialId) || other.vialId == vialId)&&(identical(other.patientAbhaId, patientAbhaId) || other.patientAbhaId == patientAbhaId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other.testIds, testIds)&&(identical(other.status, status) || other.status == status)&&(identical(other.collectionTime, collectionTime) || other.collectionTime == collectionTime)&&(identical(other.integrityScore, integrityScore) || other.integrityScore == integrityScore)&&const DeepCollectionEquality().equals(other.chainOfCustody, chainOfCustody)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.phlebotomistName, phlebotomistName) || other.phlebotomistName == phlebotomistName)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&(identical(other.reachedLabTime, reachedLabTime) || other.reachedLabTime == reachedLabTime)&&(identical(other.processingStartTime, processingStartTime) || other.processingStartTime == processingStartTime)&&(identical(other.processingEndTime, processingEndTime) || other.processingEndTime == processingEndTime)&&(identical(other.coldChainData, coldChainData) || other.coldChainData == coldChainData)&&(identical(other.biometricVerification, biometricVerification) || other.biometricVerification == biometricVerification)&&(identical(other.preAnalyticalRisk, preAnalyticalRisk) || other.preAnalyticalRisk == preAnalyticalRisk)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,vialId,patientAbhaId,patientName,orderId,const DeepCollectionEquality().hash(testIds),status,collectionTime,integrityScore,const DeepCollectionEquality().hash(chainOfCustody),phlebotomistId,phlebotomistName,labId,labName,reachedLabTime,processingStartTime,processingEndTime,coldChainData,biometricVerification,preAnalyticalRisk,condition,notes,const DeepCollectionEquality().hash(imageUrls),createdAt,updatedAt]);

@override
String toString() {
  return 'Sample(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SampleCopyWith<$Res>  {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) _then) = _$SampleCopyWithImpl;
@useResult
$Res call({
 String id, String vialId, String patientAbhaId, String patientName, String orderId, List<String> testIds, SampleStatus status, DateTime collectionTime, SampleIntegrityScore integrityScore, List<SampleEvent> chainOfCustody, String? phlebotomistId, String? phlebotomistName, String? labId, String? labName, DateTime? reachedLabTime, DateTime? processingStartTime, DateTime? processingEndTime, ColdChainData? coldChainData, BiometricVerification? biometricVerification, PreAnalyticalRiskAssessment? preAnalyticalRisk, SampleCondition? condition, String? notes, List<String> imageUrls, DateTime createdAt, DateTime? updatedAt
});


$SampleStatusCopyWith<$Res> get status;$SampleIntegrityScoreCopyWith<$Res> get integrityScore;$ColdChainDataCopyWith<$Res>? get coldChainData;$BiometricVerificationCopyWith<$Res>? get biometricVerification;$PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk;$SampleConditionCopyWith<$Res>? get condition;

}
/// @nodoc
class _$SampleCopyWithImpl<$Res>
    implements $SampleCopyWith<$Res> {
  _$SampleCopyWithImpl(this._self, this._then);

  final Sample _self;
  final $Res Function(Sample) _then;

/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vialId = null,Object? patientAbhaId = null,Object? patientName = null,Object? orderId = null,Object? testIds = null,Object? status = null,Object? collectionTime = null,Object? integrityScore = null,Object? chainOfCustody = null,Object? phlebotomistId = freezed,Object? phlebotomistName = freezed,Object? labId = freezed,Object? labName = freezed,Object? reachedLabTime = freezed,Object? processingStartTime = freezed,Object? processingEndTime = freezed,Object? coldChainData = freezed,Object? biometricVerification = freezed,Object? preAnalyticalRisk = freezed,Object? condition = freezed,Object? notes = freezed,Object? imageUrls = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vialId: null == vialId ? _self.vialId : vialId // ignore: cast_nullable_to_non_nullable
as String,patientAbhaId: null == patientAbhaId ? _self.patientAbhaId : patientAbhaId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,testIds: null == testIds ? _self.testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SampleStatus,collectionTime: null == collectionTime ? _self.collectionTime : collectionTime // ignore: cast_nullable_to_non_nullable
as DateTime,integrityScore: null == integrityScore ? _self.integrityScore : integrityScore // ignore: cast_nullable_to_non_nullable
as SampleIntegrityScore,chainOfCustody: null == chainOfCustody ? _self.chainOfCustody : chainOfCustody // ignore: cast_nullable_to_non_nullable
as List<SampleEvent>,phlebotomistId: freezed == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,phlebotomistName: freezed == phlebotomistName ? _self.phlebotomistName : phlebotomistName // ignore: cast_nullable_to_non_nullable
as String?,labId: freezed == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String?,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,reachedLabTime: freezed == reachedLabTime ? _self.reachedLabTime : reachedLabTime // ignore: cast_nullable_to_non_nullable
as DateTime?,processingStartTime: freezed == processingStartTime ? _self.processingStartTime : processingStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,processingEndTime: freezed == processingEndTime ? _self.processingEndTime : processingEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,coldChainData: freezed == coldChainData ? _self.coldChainData : coldChainData // ignore: cast_nullable_to_non_nullable
as ColdChainData?,biometricVerification: freezed == biometricVerification ? _self.biometricVerification : biometricVerification // ignore: cast_nullable_to_non_nullable
as BiometricVerification?,preAnalyticalRisk: freezed == preAnalyticalRisk ? _self.preAnalyticalRisk : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
as PreAnalyticalRiskAssessment?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as SampleCondition?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleStatusCopyWith<$Res> get status {
  
  return $SampleStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleIntegrityScoreCopyWith<$Res> get integrityScore {
  
  return $SampleIntegrityScoreCopyWith<$Res>(_self.integrityScore, (value) {
    return _then(_self.copyWith(integrityScore: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColdChainDataCopyWith<$Res>? get coldChainData {
    if (_self.coldChainData == null) {
    return null;
  }

  return $ColdChainDataCopyWith<$Res>(_self.coldChainData!, (value) {
    return _then(_self.copyWith(coldChainData: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiometricVerificationCopyWith<$Res>? get biometricVerification {
    if (_self.biometricVerification == null) {
    return null;
  }

  return $BiometricVerificationCopyWith<$Res>(_self.biometricVerification!, (value) {
    return _then(_self.copyWith(biometricVerification: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk {
    if (_self.preAnalyticalRisk == null) {
    return null;
  }

  return $PreAnalyticalRiskAssessmentCopyWith<$Res>(_self.preAnalyticalRisk!, (value) {
    return _then(_self.copyWith(preAnalyticalRisk: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleConditionCopyWith<$Res>? get condition {
    if (_self.condition == null) {
    return null;
  }

  return $SampleConditionCopyWith<$Res>(_self.condition!, (value) {
    return _then(_self.copyWith(condition: value));
  });
}
}


/// Adds pattern-matching-related methods to [Sample].
extension SamplePatterns on Sample {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sample value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sample() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sample value)  $default,){
final _that = this;
switch (_that) {
case _Sample():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sample value)?  $default,){
final _that = this;
switch (_that) {
case _Sample() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String vialId,  String patientAbhaId,  String patientName,  String orderId,  List<String> testIds,  SampleStatus status,  DateTime collectionTime,  SampleIntegrityScore integrityScore,  List<SampleEvent> chainOfCustody,  String? phlebotomistId,  String? phlebotomistName,  String? labId,  String? labName,  DateTime? reachedLabTime,  DateTime? processingStartTime,  DateTime? processingEndTime,  ColdChainData? coldChainData,  BiometricVerification? biometricVerification,  PreAnalyticalRiskAssessment? preAnalyticalRisk,  SampleCondition? condition,  String? notes,  List<String> imageUrls,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sample() when $default != null:
return $default(_that.id,_that.vialId,_that.patientAbhaId,_that.patientName,_that.orderId,_that.testIds,_that.status,_that.collectionTime,_that.integrityScore,_that.chainOfCustody,_that.phlebotomistId,_that.phlebotomistName,_that.labId,_that.labName,_that.reachedLabTime,_that.processingStartTime,_that.processingEndTime,_that.coldChainData,_that.biometricVerification,_that.preAnalyticalRisk,_that.condition,_that.notes,_that.imageUrls,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String vialId,  String patientAbhaId,  String patientName,  String orderId,  List<String> testIds,  SampleStatus status,  DateTime collectionTime,  SampleIntegrityScore integrityScore,  List<SampleEvent> chainOfCustody,  String? phlebotomistId,  String? phlebotomistName,  String? labId,  String? labName,  DateTime? reachedLabTime,  DateTime? processingStartTime,  DateTime? processingEndTime,  ColdChainData? coldChainData,  BiometricVerification? biometricVerification,  PreAnalyticalRiskAssessment? preAnalyticalRisk,  SampleCondition? condition,  String? notes,  List<String> imageUrls,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Sample():
return $default(_that.id,_that.vialId,_that.patientAbhaId,_that.patientName,_that.orderId,_that.testIds,_that.status,_that.collectionTime,_that.integrityScore,_that.chainOfCustody,_that.phlebotomistId,_that.phlebotomistName,_that.labId,_that.labName,_that.reachedLabTime,_that.processingStartTime,_that.processingEndTime,_that.coldChainData,_that.biometricVerification,_that.preAnalyticalRisk,_that.condition,_that.notes,_that.imageUrls,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String vialId,  String patientAbhaId,  String patientName,  String orderId,  List<String> testIds,  SampleStatus status,  DateTime collectionTime,  SampleIntegrityScore integrityScore,  List<SampleEvent> chainOfCustody,  String? phlebotomistId,  String? phlebotomistName,  String? labId,  String? labName,  DateTime? reachedLabTime,  DateTime? processingStartTime,  DateTime? processingEndTime,  ColdChainData? coldChainData,  BiometricVerification? biometricVerification,  PreAnalyticalRiskAssessment? preAnalyticalRisk,  SampleCondition? condition,  String? notes,  List<String> imageUrls,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Sample() when $default != null:
return $default(_that.id,_that.vialId,_that.patientAbhaId,_that.patientName,_that.orderId,_that.testIds,_that.status,_that.collectionTime,_that.integrityScore,_that.chainOfCustody,_that.phlebotomistId,_that.phlebotomistName,_that.labId,_that.labName,_that.reachedLabTime,_that.processingStartTime,_that.processingEndTime,_that.coldChainData,_that.biometricVerification,_that.preAnalyticalRisk,_that.condition,_that.notes,_that.imageUrls,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sample implements Sample {
  const _Sample({required this.id, required this.vialId, required this.patientAbhaId, required this.patientName, required this.orderId, required final  List<String> testIds, required this.status, required this.collectionTime, required this.integrityScore, required final  List<SampleEvent> chainOfCustody, this.phlebotomistId, this.phlebotomistName, this.labId, this.labName, this.reachedLabTime, this.processingStartTime, this.processingEndTime, this.coldChainData, this.biometricVerification, this.preAnalyticalRisk, this.condition, this.notes, final  List<String> imageUrls = const [], required this.createdAt, this.updatedAt}): _testIds = testIds,_chainOfCustody = chainOfCustody,_imageUrls = imageUrls;
  factory _Sample.fromJson(Map<String, dynamic> json) => _$SampleFromJson(json);

@override final  String id;
@override final  String vialId;
@override final  String patientAbhaId;
@override final  String patientName;
@override final  String orderId;
 final  List<String> _testIds;
@override List<String> get testIds {
  if (_testIds is EqualUnmodifiableListView) return _testIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_testIds);
}

@override final  SampleStatus status;
@override final  DateTime collectionTime;
@override final  SampleIntegrityScore integrityScore;
 final  List<SampleEvent> _chainOfCustody;
@override List<SampleEvent> get chainOfCustody {
  if (_chainOfCustody is EqualUnmodifiableListView) return _chainOfCustody;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chainOfCustody);
}

@override final  String? phlebotomistId;
@override final  String? phlebotomistName;
@override final  String? labId;
@override final  String? labName;
@override final  DateTime? reachedLabTime;
@override final  DateTime? processingStartTime;
@override final  DateTime? processingEndTime;
@override final  ColdChainData? coldChainData;
@override final  BiometricVerification? biometricVerification;
@override final  PreAnalyticalRiskAssessment? preAnalyticalRisk;
@override final  SampleCondition? condition;
@override final  String? notes;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleCopyWith<_Sample> get copyWith => __$SampleCopyWithImpl<_Sample>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sample&&(identical(other.id, id) || other.id == id)&&(identical(other.vialId, vialId) || other.vialId == vialId)&&(identical(other.patientAbhaId, patientAbhaId) || other.patientAbhaId == patientAbhaId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other._testIds, _testIds)&&(identical(other.status, status) || other.status == status)&&(identical(other.collectionTime, collectionTime) || other.collectionTime == collectionTime)&&(identical(other.integrityScore, integrityScore) || other.integrityScore == integrityScore)&&const DeepCollectionEquality().equals(other._chainOfCustody, _chainOfCustody)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.phlebotomistName, phlebotomistName) || other.phlebotomistName == phlebotomistName)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&(identical(other.reachedLabTime, reachedLabTime) || other.reachedLabTime == reachedLabTime)&&(identical(other.processingStartTime, processingStartTime) || other.processingStartTime == processingStartTime)&&(identical(other.processingEndTime, processingEndTime) || other.processingEndTime == processingEndTime)&&(identical(other.coldChainData, coldChainData) || other.coldChainData == coldChainData)&&(identical(other.biometricVerification, biometricVerification) || other.biometricVerification == biometricVerification)&&(identical(other.preAnalyticalRisk, preAnalyticalRisk) || other.preAnalyticalRisk == preAnalyticalRisk)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,vialId,patientAbhaId,patientName,orderId,const DeepCollectionEquality().hash(_testIds),status,collectionTime,integrityScore,const DeepCollectionEquality().hash(_chainOfCustody),phlebotomistId,phlebotomistName,labId,labName,reachedLabTime,processingStartTime,processingEndTime,coldChainData,biometricVerification,preAnalyticalRisk,condition,notes,const DeepCollectionEquality().hash(_imageUrls),createdAt,updatedAt]);

@override
String toString() {
  return 'Sample(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SampleCopyWith<$Res> implements $SampleCopyWith<$Res> {
  factory _$SampleCopyWith(_Sample value, $Res Function(_Sample) _then) = __$SampleCopyWithImpl;
@override @useResult
$Res call({
 String id, String vialId, String patientAbhaId, String patientName, String orderId, List<String> testIds, SampleStatus status, DateTime collectionTime, SampleIntegrityScore integrityScore, List<SampleEvent> chainOfCustody, String? phlebotomistId, String? phlebotomistName, String? labId, String? labName, DateTime? reachedLabTime, DateTime? processingStartTime, DateTime? processingEndTime, ColdChainData? coldChainData, BiometricVerification? biometricVerification, PreAnalyticalRiskAssessment? preAnalyticalRisk, SampleCondition? condition, String? notes, List<String> imageUrls, DateTime createdAt, DateTime? updatedAt
});


@override $SampleStatusCopyWith<$Res> get status;@override $SampleIntegrityScoreCopyWith<$Res> get integrityScore;@override $ColdChainDataCopyWith<$Res>? get coldChainData;@override $BiometricVerificationCopyWith<$Res>? get biometricVerification;@override $PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk;@override $SampleConditionCopyWith<$Res>? get condition;

}
/// @nodoc
class __$SampleCopyWithImpl<$Res>
    implements _$SampleCopyWith<$Res> {
  __$SampleCopyWithImpl(this._self, this._then);

  final _Sample _self;
  final $Res Function(_Sample) _then;

/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vialId = null,Object? patientAbhaId = null,Object? patientName = null,Object? orderId = null,Object? testIds = null,Object? status = null,Object? collectionTime = null,Object? integrityScore = null,Object? chainOfCustody = null,Object? phlebotomistId = freezed,Object? phlebotomistName = freezed,Object? labId = freezed,Object? labName = freezed,Object? reachedLabTime = freezed,Object? processingStartTime = freezed,Object? processingEndTime = freezed,Object? coldChainData = freezed,Object? biometricVerification = freezed,Object? preAnalyticalRisk = freezed,Object? condition = freezed,Object? notes = freezed,Object? imageUrls = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_Sample(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vialId: null == vialId ? _self.vialId : vialId // ignore: cast_nullable_to_non_nullable
as String,patientAbhaId: null == patientAbhaId ? _self.patientAbhaId : patientAbhaId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,testIds: null == testIds ? _self._testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SampleStatus,collectionTime: null == collectionTime ? _self.collectionTime : collectionTime // ignore: cast_nullable_to_non_nullable
as DateTime,integrityScore: null == integrityScore ? _self.integrityScore : integrityScore // ignore: cast_nullable_to_non_nullable
as SampleIntegrityScore,chainOfCustody: null == chainOfCustody ? _self._chainOfCustody : chainOfCustody // ignore: cast_nullable_to_non_nullable
as List<SampleEvent>,phlebotomistId: freezed == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,phlebotomistName: freezed == phlebotomistName ? _self.phlebotomistName : phlebotomistName // ignore: cast_nullable_to_non_nullable
as String?,labId: freezed == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String?,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,reachedLabTime: freezed == reachedLabTime ? _self.reachedLabTime : reachedLabTime // ignore: cast_nullable_to_non_nullable
as DateTime?,processingStartTime: freezed == processingStartTime ? _self.processingStartTime : processingStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,processingEndTime: freezed == processingEndTime ? _self.processingEndTime : processingEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,coldChainData: freezed == coldChainData ? _self.coldChainData : coldChainData // ignore: cast_nullable_to_non_nullable
as ColdChainData?,biometricVerification: freezed == biometricVerification ? _self.biometricVerification : biometricVerification // ignore: cast_nullable_to_non_nullable
as BiometricVerification?,preAnalyticalRisk: freezed == preAnalyticalRisk ? _self.preAnalyticalRisk : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
as PreAnalyticalRiskAssessment?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as SampleCondition?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleStatusCopyWith<$Res> get status {
  
  return $SampleStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleIntegrityScoreCopyWith<$Res> get integrityScore {
  
  return $SampleIntegrityScoreCopyWith<$Res>(_self.integrityScore, (value) {
    return _then(_self.copyWith(integrityScore: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColdChainDataCopyWith<$Res>? get coldChainData {
    if (_self.coldChainData == null) {
    return null;
  }

  return $ColdChainDataCopyWith<$Res>(_self.coldChainData!, (value) {
    return _then(_self.copyWith(coldChainData: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiometricVerificationCopyWith<$Res>? get biometricVerification {
    if (_self.biometricVerification == null) {
    return null;
  }

  return $BiometricVerificationCopyWith<$Res>(_self.biometricVerification!, (value) {
    return _then(_self.copyWith(biometricVerification: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk {
    if (_self.preAnalyticalRisk == null) {
    return null;
  }

  return $PreAnalyticalRiskAssessmentCopyWith<$Res>(_self.preAnalyticalRisk!, (value) {
    return _then(_self.copyWith(preAnalyticalRisk: value));
  });
}/// Create a copy of Sample
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SampleConditionCopyWith<$Res>? get condition {
    if (_self.condition == null) {
    return null;
  }

  return $SampleConditionCopyWith<$Res>(_self.condition!, (value) {
    return _then(_self.copyWith(condition: value));
  });
}
}

SampleStatus _$SampleStatusFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'requested':
          return SampleStatusRequested.fromJson(
            json
          );
                case 'assigned':
          return SampleStatusAssigned.fromJson(
            json
          );
                case 'inTransit':
          return SampleStatusInTransit.fromJson(
            json
          );
                case 'reachedLab':
          return SampleStatusReachedLab.fromJson(
            json
          );
                case 'processing':
          return SampleStatusProcessing.fromJson(
            json
          );
                case 'completed':
          return SampleStatusCompleted.fromJson(
            json
          );
                case 'rejected':
          return SampleStatusRejected.fromJson(
            json
          );
                case 'cancelled':
          return SampleStatusCancelled.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SampleStatus',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SampleStatus {



  /// Serializes this SampleStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SampleStatus()';
}


}

/// @nodoc
class $SampleStatusCopyWith<$Res>  {
$SampleStatusCopyWith(SampleStatus _, $Res Function(SampleStatus) __);
}


/// Adds pattern-matching-related methods to [SampleStatus].
extension SampleStatusPatterns on SampleStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SampleStatusRequested value)?  requested,TResult Function( SampleStatusAssigned value)?  assigned,TResult Function( SampleStatusInTransit value)?  inTransit,TResult Function( SampleStatusReachedLab value)?  reachedLab,TResult Function( SampleStatusProcessing value)?  processing,TResult Function( SampleStatusCompleted value)?  completed,TResult Function( SampleStatusRejected value)?  rejected,TResult Function( SampleStatusCancelled value)?  cancelled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SampleStatusRequested() when requested != null:
return requested(_that);case SampleStatusAssigned() when assigned != null:
return assigned(_that);case SampleStatusInTransit() when inTransit != null:
return inTransit(_that);case SampleStatusReachedLab() when reachedLab != null:
return reachedLab(_that);case SampleStatusProcessing() when processing != null:
return processing(_that);case SampleStatusCompleted() when completed != null:
return completed(_that);case SampleStatusRejected() when rejected != null:
return rejected(_that);case SampleStatusCancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SampleStatusRequested value)  requested,required TResult Function( SampleStatusAssigned value)  assigned,required TResult Function( SampleStatusInTransit value)  inTransit,required TResult Function( SampleStatusReachedLab value)  reachedLab,required TResult Function( SampleStatusProcessing value)  processing,required TResult Function( SampleStatusCompleted value)  completed,required TResult Function( SampleStatusRejected value)  rejected,required TResult Function( SampleStatusCancelled value)  cancelled,}){
final _that = this;
switch (_that) {
case SampleStatusRequested():
return requested(_that);case SampleStatusAssigned():
return assigned(_that);case SampleStatusInTransit():
return inTransit(_that);case SampleStatusReachedLab():
return reachedLab(_that);case SampleStatusProcessing():
return processing(_that);case SampleStatusCompleted():
return completed(_that);case SampleStatusRejected():
return rejected(_that);case SampleStatusCancelled():
return cancelled(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SampleStatusRequested value)?  requested,TResult? Function( SampleStatusAssigned value)?  assigned,TResult? Function( SampleStatusInTransit value)?  inTransit,TResult? Function( SampleStatusReachedLab value)?  reachedLab,TResult? Function( SampleStatusProcessing value)?  processing,TResult? Function( SampleStatusCompleted value)?  completed,TResult? Function( SampleStatusRejected value)?  rejected,TResult? Function( SampleStatusCancelled value)?  cancelled,}){
final _that = this;
switch (_that) {
case SampleStatusRequested() when requested != null:
return requested(_that);case SampleStatusAssigned() when assigned != null:
return assigned(_that);case SampleStatusInTransit() when inTransit != null:
return inTransit(_that);case SampleStatusReachedLab() when reachedLab != null:
return reachedLab(_that);case SampleStatusProcessing() when processing != null:
return processing(_that);case SampleStatusCompleted() when completed != null:
return completed(_that);case SampleStatusRejected() when rejected != null:
return rejected(_that);case SampleStatusCancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  requested,TResult Function( String phlebotomistId)?  assigned,TResult Function( DateTime startTime,  GeoLocation currentLocation)?  inTransit,TResult Function( DateTime arrivalTime)?  reachedLab,TResult Function( DateTime startTime)?  processing,TResult Function( DateTime completionTime,  String resultId)?  completed,TResult Function( String reason,  DateTime rejectedAt,  bool requiresRecollection)?  rejected,TResult Function( String reason,  DateTime cancelledAt)?  cancelled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SampleStatusRequested() when requested != null:
return requested();case SampleStatusAssigned() when assigned != null:
return assigned(_that.phlebotomistId);case SampleStatusInTransit() when inTransit != null:
return inTransit(_that.startTime,_that.currentLocation);case SampleStatusReachedLab() when reachedLab != null:
return reachedLab(_that.arrivalTime);case SampleStatusProcessing() when processing != null:
return processing(_that.startTime);case SampleStatusCompleted() when completed != null:
return completed(_that.completionTime,_that.resultId);case SampleStatusRejected() when rejected != null:
return rejected(_that.reason,_that.rejectedAt,_that.requiresRecollection);case SampleStatusCancelled() when cancelled != null:
return cancelled(_that.reason,_that.cancelledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  requested,required TResult Function( String phlebotomistId)  assigned,required TResult Function( DateTime startTime,  GeoLocation currentLocation)  inTransit,required TResult Function( DateTime arrivalTime)  reachedLab,required TResult Function( DateTime startTime)  processing,required TResult Function( DateTime completionTime,  String resultId)  completed,required TResult Function( String reason,  DateTime rejectedAt,  bool requiresRecollection)  rejected,required TResult Function( String reason,  DateTime cancelledAt)  cancelled,}) {final _that = this;
switch (_that) {
case SampleStatusRequested():
return requested();case SampleStatusAssigned():
return assigned(_that.phlebotomistId);case SampleStatusInTransit():
return inTransit(_that.startTime,_that.currentLocation);case SampleStatusReachedLab():
return reachedLab(_that.arrivalTime);case SampleStatusProcessing():
return processing(_that.startTime);case SampleStatusCompleted():
return completed(_that.completionTime,_that.resultId);case SampleStatusRejected():
return rejected(_that.reason,_that.rejectedAt,_that.requiresRecollection);case SampleStatusCancelled():
return cancelled(_that.reason,_that.cancelledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  requested,TResult? Function( String phlebotomistId)?  assigned,TResult? Function( DateTime startTime,  GeoLocation currentLocation)?  inTransit,TResult? Function( DateTime arrivalTime)?  reachedLab,TResult? Function( DateTime startTime)?  processing,TResult? Function( DateTime completionTime,  String resultId)?  completed,TResult? Function( String reason,  DateTime rejectedAt,  bool requiresRecollection)?  rejected,TResult? Function( String reason,  DateTime cancelledAt)?  cancelled,}) {final _that = this;
switch (_that) {
case SampleStatusRequested() when requested != null:
return requested();case SampleStatusAssigned() when assigned != null:
return assigned(_that.phlebotomistId);case SampleStatusInTransit() when inTransit != null:
return inTransit(_that.startTime,_that.currentLocation);case SampleStatusReachedLab() when reachedLab != null:
return reachedLab(_that.arrivalTime);case SampleStatusProcessing() when processing != null:
return processing(_that.startTime);case SampleStatusCompleted() when completed != null:
return completed(_that.completionTime,_that.resultId);case SampleStatusRejected() when rejected != null:
return rejected(_that.reason,_that.rejectedAt,_that.requiresRecollection);case SampleStatusCancelled() when cancelled != null:
return cancelled(_that.reason,_that.cancelledAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class SampleStatusRequested implements SampleStatus {
  const SampleStatusRequested({final  String? $type}): $type = $type ?? 'requested';
  factory SampleStatusRequested.fromJson(Map<String, dynamic> json) => _$SampleStatusRequestedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$SampleStatusRequestedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusRequested);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SampleStatus.requested()';
}


}




/// @nodoc
@JsonSerializable()

class SampleStatusAssigned implements SampleStatus {
  const SampleStatusAssigned({required this.phlebotomistId, final  String? $type}): $type = $type ?? 'assigned';
  factory SampleStatusAssigned.fromJson(Map<String, dynamic> json) => _$SampleStatusAssignedFromJson(json);

 final  String phlebotomistId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusAssignedCopyWith<SampleStatusAssigned> get copyWith => _$SampleStatusAssignedCopyWithImpl<SampleStatusAssigned>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusAssignedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusAssigned&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phlebotomistId);

@override
String toString() {
  return 'SampleStatus.assigned(phlebotomistId: $phlebotomistId)';
}


}

/// @nodoc
abstract mixin class $SampleStatusAssignedCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusAssignedCopyWith(SampleStatusAssigned value, $Res Function(SampleStatusAssigned) _then) = _$SampleStatusAssignedCopyWithImpl;
@useResult
$Res call({
 String phlebotomistId
});




}
/// @nodoc
class _$SampleStatusAssignedCopyWithImpl<$Res>
    implements $SampleStatusAssignedCopyWith<$Res> {
  _$SampleStatusAssignedCopyWithImpl(this._self, this._then);

  final SampleStatusAssigned _self;
  final $Res Function(SampleStatusAssigned) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phlebotomistId = null,}) {
  return _then(SampleStatusAssigned(
phlebotomistId: null == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SampleStatusInTransit implements SampleStatus {
  const SampleStatusInTransit({required this.startTime, required this.currentLocation, final  String? $type}): $type = $type ?? 'inTransit';
  factory SampleStatusInTransit.fromJson(Map<String, dynamic> json) => _$SampleStatusInTransitFromJson(json);

 final  DateTime startTime;
 final  GeoLocation currentLocation;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusInTransitCopyWith<SampleStatusInTransit> get copyWith => _$SampleStatusInTransitCopyWithImpl<SampleStatusInTransit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusInTransitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusInTransit&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime,currentLocation);

@override
String toString() {
  return 'SampleStatus.inTransit(startTime: $startTime, currentLocation: $currentLocation)';
}


}

/// @nodoc
abstract mixin class $SampleStatusInTransitCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusInTransitCopyWith(SampleStatusInTransit value, $Res Function(SampleStatusInTransit) _then) = _$SampleStatusInTransitCopyWithImpl;
@useResult
$Res call({
 DateTime startTime, GeoLocation currentLocation
});


$GeoLocationCopyWith<$Res> get currentLocation;

}
/// @nodoc
class _$SampleStatusInTransitCopyWithImpl<$Res>
    implements $SampleStatusInTransitCopyWith<$Res> {
  _$SampleStatusInTransitCopyWithImpl(this._self, this._then);

  final SampleStatusInTransit _self;
  final $Res Function(SampleStatusInTransit) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startTime = null,Object? currentLocation = null,}) {
  return _then(SampleStatusInTransit(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get currentLocation {
  
  return $GeoLocationCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SampleStatusReachedLab implements SampleStatus {
  const SampleStatusReachedLab({required this.arrivalTime, final  String? $type}): $type = $type ?? 'reachedLab';
  factory SampleStatusReachedLab.fromJson(Map<String, dynamic> json) => _$SampleStatusReachedLabFromJson(json);

 final  DateTime arrivalTime;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusReachedLabCopyWith<SampleStatusReachedLab> get copyWith => _$SampleStatusReachedLabCopyWithImpl<SampleStatusReachedLab>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusReachedLabToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusReachedLab&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arrivalTime);

@override
String toString() {
  return 'SampleStatus.reachedLab(arrivalTime: $arrivalTime)';
}


}

/// @nodoc
abstract mixin class $SampleStatusReachedLabCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusReachedLabCopyWith(SampleStatusReachedLab value, $Res Function(SampleStatusReachedLab) _then) = _$SampleStatusReachedLabCopyWithImpl;
@useResult
$Res call({
 DateTime arrivalTime
});




}
/// @nodoc
class _$SampleStatusReachedLabCopyWithImpl<$Res>
    implements $SampleStatusReachedLabCopyWith<$Res> {
  _$SampleStatusReachedLabCopyWithImpl(this._self, this._then);

  final SampleStatusReachedLab _self;
  final $Res Function(SampleStatusReachedLab) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? arrivalTime = null,}) {
  return _then(SampleStatusReachedLab(
arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SampleStatusProcessing implements SampleStatus {
  const SampleStatusProcessing({required this.startTime, final  String? $type}): $type = $type ?? 'processing';
  factory SampleStatusProcessing.fromJson(Map<String, dynamic> json) => _$SampleStatusProcessingFromJson(json);

 final  DateTime startTime;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusProcessingCopyWith<SampleStatusProcessing> get copyWith => _$SampleStatusProcessingCopyWithImpl<SampleStatusProcessing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusProcessingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusProcessing&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startTime);

@override
String toString() {
  return 'SampleStatus.processing(startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $SampleStatusProcessingCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusProcessingCopyWith(SampleStatusProcessing value, $Res Function(SampleStatusProcessing) _then) = _$SampleStatusProcessingCopyWithImpl;
@useResult
$Res call({
 DateTime startTime
});




}
/// @nodoc
class _$SampleStatusProcessingCopyWithImpl<$Res>
    implements $SampleStatusProcessingCopyWith<$Res> {
  _$SampleStatusProcessingCopyWithImpl(this._self, this._then);

  final SampleStatusProcessing _self;
  final $Res Function(SampleStatusProcessing) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startTime = null,}) {
  return _then(SampleStatusProcessing(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SampleStatusCompleted implements SampleStatus {
  const SampleStatusCompleted({required this.completionTime, required this.resultId, final  String? $type}): $type = $type ?? 'completed';
  factory SampleStatusCompleted.fromJson(Map<String, dynamic> json) => _$SampleStatusCompletedFromJson(json);

 final  DateTime completionTime;
 final  String resultId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusCompletedCopyWith<SampleStatusCompleted> get copyWith => _$SampleStatusCompletedCopyWithImpl<SampleStatusCompleted>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusCompletedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusCompleted&&(identical(other.completionTime, completionTime) || other.completionTime == completionTime)&&(identical(other.resultId, resultId) || other.resultId == resultId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,completionTime,resultId);

@override
String toString() {
  return 'SampleStatus.completed(completionTime: $completionTime, resultId: $resultId)';
}


}

/// @nodoc
abstract mixin class $SampleStatusCompletedCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusCompletedCopyWith(SampleStatusCompleted value, $Res Function(SampleStatusCompleted) _then) = _$SampleStatusCompletedCopyWithImpl;
@useResult
$Res call({
 DateTime completionTime, String resultId
});




}
/// @nodoc
class _$SampleStatusCompletedCopyWithImpl<$Res>
    implements $SampleStatusCompletedCopyWith<$Res> {
  _$SampleStatusCompletedCopyWithImpl(this._self, this._then);

  final SampleStatusCompleted _self;
  final $Res Function(SampleStatusCompleted) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? completionTime = null,Object? resultId = null,}) {
  return _then(SampleStatusCompleted(
completionTime: null == completionTime ? _self.completionTime : completionTime // ignore: cast_nullable_to_non_nullable
as DateTime,resultId: null == resultId ? _self.resultId : resultId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SampleStatusRejected implements SampleStatus {
  const SampleStatusRejected({required this.reason, required this.rejectedAt, required this.requiresRecollection, final  String? $type}): $type = $type ?? 'rejected';
  factory SampleStatusRejected.fromJson(Map<String, dynamic> json) => _$SampleStatusRejectedFromJson(json);

 final  String reason;
 final  DateTime rejectedAt;
 final  bool requiresRecollection;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusRejectedCopyWith<SampleStatusRejected> get copyWith => _$SampleStatusRejectedCopyWithImpl<SampleStatusRejected>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusRejectedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusRejected&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.rejectedAt, rejectedAt) || other.rejectedAt == rejectedAt)&&(identical(other.requiresRecollection, requiresRecollection) || other.requiresRecollection == requiresRecollection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,rejectedAt,requiresRecollection);

@override
String toString() {
  return 'SampleStatus.rejected(reason: $reason, rejectedAt: $rejectedAt, requiresRecollection: $requiresRecollection)';
}


}

/// @nodoc
abstract mixin class $SampleStatusRejectedCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusRejectedCopyWith(SampleStatusRejected value, $Res Function(SampleStatusRejected) _then) = _$SampleStatusRejectedCopyWithImpl;
@useResult
$Res call({
 String reason, DateTime rejectedAt, bool requiresRecollection
});




}
/// @nodoc
class _$SampleStatusRejectedCopyWithImpl<$Res>
    implements $SampleStatusRejectedCopyWith<$Res> {
  _$SampleStatusRejectedCopyWithImpl(this._self, this._then);

  final SampleStatusRejected _self;
  final $Res Function(SampleStatusRejected) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? rejectedAt = null,Object? requiresRecollection = null,}) {
  return _then(SampleStatusRejected(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,rejectedAt: null == rejectedAt ? _self.rejectedAt : rejectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresRecollection: null == requiresRecollection ? _self.requiresRecollection : requiresRecollection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SampleStatusCancelled implements SampleStatus {
  const SampleStatusCancelled({required this.reason, required this.cancelledAt, final  String? $type}): $type = $type ?? 'cancelled';
  factory SampleStatusCancelled.fromJson(Map<String, dynamic> json) => _$SampleStatusCancelledFromJson(json);

 final  String reason;
 final  DateTime cancelledAt;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStatusCancelledCopyWith<SampleStatusCancelled> get copyWith => _$SampleStatusCancelledCopyWithImpl<SampleStatusCancelled>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleStatusCancelledToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleStatusCancelled&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,cancelledAt);

@override
String toString() {
  return 'SampleStatus.cancelled(reason: $reason, cancelledAt: $cancelledAt)';
}


}

/// @nodoc
abstract mixin class $SampleStatusCancelledCopyWith<$Res> implements $SampleStatusCopyWith<$Res> {
  factory $SampleStatusCancelledCopyWith(SampleStatusCancelled value, $Res Function(SampleStatusCancelled) _then) = _$SampleStatusCancelledCopyWithImpl;
@useResult
$Res call({
 String reason, DateTime cancelledAt
});




}
/// @nodoc
class _$SampleStatusCancelledCopyWithImpl<$Res>
    implements $SampleStatusCancelledCopyWith<$Res> {
  _$SampleStatusCancelledCopyWithImpl(this._self, this._then);

  final SampleStatusCancelled _self;
  final $Res Function(SampleStatusCancelled) _then;

/// Create a copy of SampleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? cancelledAt = null,}) {
  return _then(SampleStatusCancelled(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,cancelledAt: null == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$SampleCondition {

 bool get isHemolyzed; bool get isClotted; bool get isLipemic; bool get isIcteric; VolumeStatus get volumeStatus; ContainerIntegrity get containerIntegrity; String? get notes;
/// Create a copy of SampleCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleConditionCopyWith<SampleCondition> get copyWith => _$SampleConditionCopyWithImpl<SampleCondition>(this as SampleCondition, _$identity);

  /// Serializes this SampleCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleCondition&&(identical(other.isHemolyzed, isHemolyzed) || other.isHemolyzed == isHemolyzed)&&(identical(other.isClotted, isClotted) || other.isClotted == isClotted)&&(identical(other.isLipemic, isLipemic) || other.isLipemic == isLipemic)&&(identical(other.isIcteric, isIcteric) || other.isIcteric == isIcteric)&&(identical(other.volumeStatus, volumeStatus) || other.volumeStatus == volumeStatus)&&(identical(other.containerIntegrity, containerIntegrity) || other.containerIntegrity == containerIntegrity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isHemolyzed,isClotted,isLipemic,isIcteric,volumeStatus,containerIntegrity,notes);

@override
String toString() {
  return 'SampleCondition(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SampleConditionCopyWith<$Res>  {
  factory $SampleConditionCopyWith(SampleCondition value, $Res Function(SampleCondition) _then) = _$SampleConditionCopyWithImpl;
@useResult
$Res call({
 bool isHemolyzed, bool isClotted, bool isLipemic, bool isIcteric, VolumeStatus volumeStatus, ContainerIntegrity containerIntegrity, String? notes
});




}
/// @nodoc
class _$SampleConditionCopyWithImpl<$Res>
    implements $SampleConditionCopyWith<$Res> {
  _$SampleConditionCopyWithImpl(this._self, this._then);

  final SampleCondition _self;
  final $Res Function(SampleCondition) _then;

/// Create a copy of SampleCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isHemolyzed = null,Object? isClotted = null,Object? isLipemic = null,Object? isIcteric = null,Object? volumeStatus = null,Object? containerIntegrity = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
isHemolyzed: null == isHemolyzed ? _self.isHemolyzed : isHemolyzed // ignore: cast_nullable_to_non_nullable
as bool,isClotted: null == isClotted ? _self.isClotted : isClotted // ignore: cast_nullable_to_non_nullable
as bool,isLipemic: null == isLipemic ? _self.isLipemic : isLipemic // ignore: cast_nullable_to_non_nullable
as bool,isIcteric: null == isIcteric ? _self.isIcteric : isIcteric // ignore: cast_nullable_to_non_nullable
as bool,volumeStatus: null == volumeStatus ? _self.volumeStatus : volumeStatus // ignore: cast_nullable_to_non_nullable
as VolumeStatus,containerIntegrity: null == containerIntegrity ? _self.containerIntegrity : containerIntegrity // ignore: cast_nullable_to_non_nullable
as ContainerIntegrity,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SampleCondition].
extension SampleConditionPatterns on SampleCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleCondition value)  $default,){
final _that = this;
switch (_that) {
case _SampleCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleCondition value)?  $default,){
final _that = this;
switch (_that) {
case _SampleCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isHemolyzed,  bool isClotted,  bool isLipemic,  bool isIcteric,  VolumeStatus volumeStatus,  ContainerIntegrity containerIntegrity,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleCondition() when $default != null:
return $default(_that.isHemolyzed,_that.isClotted,_that.isLipemic,_that.isIcteric,_that.volumeStatus,_that.containerIntegrity,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isHemolyzed,  bool isClotted,  bool isLipemic,  bool isIcteric,  VolumeStatus volumeStatus,  ContainerIntegrity containerIntegrity,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _SampleCondition():
return $default(_that.isHemolyzed,_that.isClotted,_that.isLipemic,_that.isIcteric,_that.volumeStatus,_that.containerIntegrity,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isHemolyzed,  bool isClotted,  bool isLipemic,  bool isIcteric,  VolumeStatus volumeStatus,  ContainerIntegrity containerIntegrity,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _SampleCondition() when $default != null:
return $default(_that.isHemolyzed,_that.isClotted,_that.isLipemic,_that.isIcteric,_that.volumeStatus,_that.containerIntegrity,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SampleCondition implements SampleCondition {
  const _SampleCondition({required this.isHemolyzed, required this.isClotted, required this.isLipemic, required this.isIcteric, required this.volumeStatus, required this.containerIntegrity, this.notes});
  factory _SampleCondition.fromJson(Map<String, dynamic> json) => _$SampleConditionFromJson(json);

@override final  bool isHemolyzed;
@override final  bool isClotted;
@override final  bool isLipemic;
@override final  bool isIcteric;
@override final  VolumeStatus volumeStatus;
@override final  ContainerIntegrity containerIntegrity;
@override final  String? notes;

/// Create a copy of SampleCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleConditionCopyWith<_SampleCondition> get copyWith => __$SampleConditionCopyWithImpl<_SampleCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleCondition&&(identical(other.isHemolyzed, isHemolyzed) || other.isHemolyzed == isHemolyzed)&&(identical(other.isClotted, isClotted) || other.isClotted == isClotted)&&(identical(other.isLipemic, isLipemic) || other.isLipemic == isLipemic)&&(identical(other.isIcteric, isIcteric) || other.isIcteric == isIcteric)&&(identical(other.volumeStatus, volumeStatus) || other.volumeStatus == volumeStatus)&&(identical(other.containerIntegrity, containerIntegrity) || other.containerIntegrity == containerIntegrity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isHemolyzed,isClotted,isLipemic,isIcteric,volumeStatus,containerIntegrity,notes);

@override
String toString() {
  return 'SampleCondition(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SampleConditionCopyWith<$Res> implements $SampleConditionCopyWith<$Res> {
  factory _$SampleConditionCopyWith(_SampleCondition value, $Res Function(_SampleCondition) _then) = __$SampleConditionCopyWithImpl;
@override @useResult
$Res call({
 bool isHemolyzed, bool isClotted, bool isLipemic, bool isIcteric, VolumeStatus volumeStatus, ContainerIntegrity containerIntegrity, String? notes
});




}
/// @nodoc
class __$SampleConditionCopyWithImpl<$Res>
    implements _$SampleConditionCopyWith<$Res> {
  __$SampleConditionCopyWithImpl(this._self, this._then);

  final _SampleCondition _self;
  final $Res Function(_SampleCondition) _then;

/// Create a copy of SampleCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isHemolyzed = null,Object? isClotted = null,Object? isLipemic = null,Object? isIcteric = null,Object? volumeStatus = null,Object? containerIntegrity = null,Object? notes = freezed,}) {
  return _then(_SampleCondition(
isHemolyzed: null == isHemolyzed ? _self.isHemolyzed : isHemolyzed // ignore: cast_nullable_to_non_nullable
as bool,isClotted: null == isClotted ? _self.isClotted : isClotted // ignore: cast_nullable_to_non_nullable
as bool,isLipemic: null == isLipemic ? _self.isLipemic : isLipemic // ignore: cast_nullable_to_non_nullable
as bool,isIcteric: null == isIcteric ? _self.isIcteric : isIcteric // ignore: cast_nullable_to_non_nullable
as bool,volumeStatus: null == volumeStatus ? _self.volumeStatus : volumeStatus // ignore: cast_nullable_to_non_nullable
as VolumeStatus,containerIntegrity: null == containerIntegrity ? _self.containerIntegrity : containerIntegrity // ignore: cast_nullable_to_non_nullable
as ContainerIntegrity,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
