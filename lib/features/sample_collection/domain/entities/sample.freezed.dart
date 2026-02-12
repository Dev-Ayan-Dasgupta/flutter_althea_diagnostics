// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sample _$SampleFromJson(Map<String, dynamic> json) {
  return _Sample.fromJson(json);
}

/// @nodoc
mixin _$Sample {
  String get id => throw _privateConstructorUsedError;
  String get vialId => throw _privateConstructorUsedError;
  String get patientAbhaId => throw _privateConstructorUsedError;
  String get patientName => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  List<String> get testIds => throw _privateConstructorUsedError;
  SampleStatus get status => throw _privateConstructorUsedError;
  DateTime get collectionTime => throw _privateConstructorUsedError;
  SampleIntegrityScore get integrityScore => throw _privateConstructorUsedError;
  List<SampleEvent> get chainOfCustody => throw _privateConstructorUsedError;
  String? get phlebotomistId => throw _privateConstructorUsedError;
  String? get phlebotomistName => throw _privateConstructorUsedError;
  String? get labId => throw _privateConstructorUsedError;
  String? get labName => throw _privateConstructorUsedError;
  DateTime? get reachedLabTime => throw _privateConstructorUsedError;
  DateTime? get processingStartTime => throw _privateConstructorUsedError;
  DateTime? get processingEndTime => throw _privateConstructorUsedError;
  ColdChainData? get coldChainData => throw _privateConstructorUsedError;
  BiometricVerification? get biometricVerification =>
      throw _privateConstructorUsedError;
  PreAnalyticalRiskAssessment? get preAnalyticalRisk =>
      throw _privateConstructorUsedError;
  SampleCondition? get condition => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleCopyWith<Sample> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleCopyWith<$Res> {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) then) =
      _$SampleCopyWithImpl<$Res, Sample>;
  @useResult
  $Res call(
      {String id,
      String vialId,
      String patientAbhaId,
      String patientName,
      String orderId,
      List<String> testIds,
      SampleStatus status,
      DateTime collectionTime,
      SampleIntegrityScore integrityScore,
      List<SampleEvent> chainOfCustody,
      String? phlebotomistId,
      String? phlebotomistName,
      String? labId,
      String? labName,
      DateTime? reachedLabTime,
      DateTime? processingStartTime,
      DateTime? processingEndTime,
      ColdChainData? coldChainData,
      BiometricVerification? biometricVerification,
      PreAnalyticalRiskAssessment? preAnalyticalRisk,
      SampleCondition? condition,
      String? notes,
      List<String> imageUrls,
      DateTime createdAt,
      DateTime? updatedAt});

  $SampleStatusCopyWith<$Res> get status;
  $SampleIntegrityScoreCopyWith<$Res> get integrityScore;
  $ColdChainDataCopyWith<$Res>? get coldChainData;
  $BiometricVerificationCopyWith<$Res>? get biometricVerification;
  $PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk;
  $SampleConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$SampleCopyWithImpl<$Res, $Val extends Sample>
    implements $SampleCopyWith<$Res> {
  _$SampleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vialId = null,
    Object? patientAbhaId = null,
    Object? patientName = null,
    Object? orderId = null,
    Object? testIds = null,
    Object? status = null,
    Object? collectionTime = null,
    Object? integrityScore = null,
    Object? chainOfCustody = null,
    Object? phlebotomistId = freezed,
    Object? phlebotomistName = freezed,
    Object? labId = freezed,
    Object? labName = freezed,
    Object? reachedLabTime = freezed,
    Object? processingStartTime = freezed,
    Object? processingEndTime = freezed,
    Object? coldChainData = freezed,
    Object? biometricVerification = freezed,
    Object? preAnalyticalRisk = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? imageUrls = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vialId: null == vialId
          ? _value.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testIds: null == testIds
          ? _value.testIds
          : testIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      integrityScore: null == integrityScore
          ? _value.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScore,
      chainOfCustody: null == chainOfCustody
          ? _value.chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEvent>,
      phlebotomistId: freezed == phlebotomistId
          ? _value.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String?,
      phlebotomistName: freezed == phlebotomistName
          ? _value.phlebotomistName
          : phlebotomistName // ignore: cast_nullable_to_non_nullable
              as String?,
      labId: freezed == labId
          ? _value.labId
          : labId // ignore: cast_nullable_to_non_nullable
              as String?,
      labName: freezed == labName
          ? _value.labName
          : labName // ignore: cast_nullable_to_non_nullable
              as String?,
      reachedLabTime: freezed == reachedLabTime
          ? _value.reachedLabTime
          : reachedLabTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingStartTime: freezed == processingStartTime
          ? _value.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingEndTime: freezed == processingEndTime
          ? _value.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coldChainData: freezed == coldChainData
          ? _value.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainData?,
      biometricVerification: freezed == biometricVerification
          ? _value.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerification?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _value.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskAssessment?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleCondition?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleStatusCopyWith<$Res> get status {
    return $SampleStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreCopyWith<$Res> get integrityScore {
    return $SampleIntegrityScoreCopyWith<$Res>(_value.integrityScore, (value) {
      return _then(_value.copyWith(integrityScore: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColdChainDataCopyWith<$Res>? get coldChainData {
    if (_value.coldChainData == null) {
      return null;
    }

    return $ColdChainDataCopyWith<$Res>(_value.coldChainData!, (value) {
      return _then(_value.copyWith(coldChainData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiometricVerificationCopyWith<$Res>? get biometricVerification {
    if (_value.biometricVerification == null) {
      return null;
    }

    return $BiometricVerificationCopyWith<$Res>(_value.biometricVerification!,
        (value) {
      return _then(_value.copyWith(biometricVerification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk {
    if (_value.preAnalyticalRisk == null) {
      return null;
    }

    return $PreAnalyticalRiskAssessmentCopyWith<$Res>(_value.preAnalyticalRisk!,
        (value) {
      return _then(_value.copyWith(preAnalyticalRisk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $SampleConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleImplCopyWith<$Res> implements $SampleCopyWith<$Res> {
  factory _$$SampleImplCopyWith(
          _$SampleImpl value, $Res Function(_$SampleImpl) then) =
      __$$SampleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String vialId,
      String patientAbhaId,
      String patientName,
      String orderId,
      List<String> testIds,
      SampleStatus status,
      DateTime collectionTime,
      SampleIntegrityScore integrityScore,
      List<SampleEvent> chainOfCustody,
      String? phlebotomistId,
      String? phlebotomistName,
      String? labId,
      String? labName,
      DateTime? reachedLabTime,
      DateTime? processingStartTime,
      DateTime? processingEndTime,
      ColdChainData? coldChainData,
      BiometricVerification? biometricVerification,
      PreAnalyticalRiskAssessment? preAnalyticalRisk,
      SampleCondition? condition,
      String? notes,
      List<String> imageUrls,
      DateTime createdAt,
      DateTime? updatedAt});

  @override
  $SampleStatusCopyWith<$Res> get status;
  @override
  $SampleIntegrityScoreCopyWith<$Res> get integrityScore;
  @override
  $ColdChainDataCopyWith<$Res>? get coldChainData;
  @override
  $BiometricVerificationCopyWith<$Res>? get biometricVerification;
  @override
  $PreAnalyticalRiskAssessmentCopyWith<$Res>? get preAnalyticalRisk;
  @override
  $SampleConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$SampleImplCopyWithImpl<$Res>
    extends _$SampleCopyWithImpl<$Res, _$SampleImpl>
    implements _$$SampleImplCopyWith<$Res> {
  __$$SampleImplCopyWithImpl(
      _$SampleImpl _value, $Res Function(_$SampleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vialId = null,
    Object? patientAbhaId = null,
    Object? patientName = null,
    Object? orderId = null,
    Object? testIds = null,
    Object? status = null,
    Object? collectionTime = null,
    Object? integrityScore = null,
    Object? chainOfCustody = null,
    Object? phlebotomistId = freezed,
    Object? phlebotomistName = freezed,
    Object? labId = freezed,
    Object? labName = freezed,
    Object? reachedLabTime = freezed,
    Object? processingStartTime = freezed,
    Object? processingEndTime = freezed,
    Object? coldChainData = freezed,
    Object? biometricVerification = freezed,
    Object? preAnalyticalRisk = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? imageUrls = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SampleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vialId: null == vialId
          ? _value.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testIds: null == testIds
          ? _value._testIds
          : testIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      integrityScore: null == integrityScore
          ? _value.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScore,
      chainOfCustody: null == chainOfCustody
          ? _value._chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEvent>,
      phlebotomistId: freezed == phlebotomistId
          ? _value.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String?,
      phlebotomistName: freezed == phlebotomistName
          ? _value.phlebotomistName
          : phlebotomistName // ignore: cast_nullable_to_non_nullable
              as String?,
      labId: freezed == labId
          ? _value.labId
          : labId // ignore: cast_nullable_to_non_nullable
              as String?,
      labName: freezed == labName
          ? _value.labName
          : labName // ignore: cast_nullable_to_non_nullable
              as String?,
      reachedLabTime: freezed == reachedLabTime
          ? _value.reachedLabTime
          : reachedLabTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingStartTime: freezed == processingStartTime
          ? _value.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingEndTime: freezed == processingEndTime
          ? _value.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coldChainData: freezed == coldChainData
          ? _value.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainData?,
      biometricVerification: freezed == biometricVerification
          ? _value.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerification?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _value.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskAssessment?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleCondition?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleImpl implements _Sample {
  const _$SampleImpl(
      {required this.id,
      required this.vialId,
      required this.patientAbhaId,
      required this.patientName,
      required this.orderId,
      required final List<String> testIds,
      required this.status,
      required this.collectionTime,
      required this.integrityScore,
      required final List<SampleEvent> chainOfCustody,
      this.phlebotomistId,
      this.phlebotomistName,
      this.labId,
      this.labName,
      this.reachedLabTime,
      this.processingStartTime,
      this.processingEndTime,
      this.coldChainData,
      this.biometricVerification,
      this.preAnalyticalRisk,
      this.condition,
      this.notes,
      final List<String> imageUrls = const [],
      required this.createdAt,
      this.updatedAt})
      : _testIds = testIds,
        _chainOfCustody = chainOfCustody,
        _imageUrls = imageUrls;

  factory _$SampleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleImplFromJson(json);

  @override
  final String id;
  @override
  final String vialId;
  @override
  final String patientAbhaId;
  @override
  final String patientName;
  @override
  final String orderId;
  final List<String> _testIds;
  @override
  List<String> get testIds {
    if (_testIds is EqualUnmodifiableListView) return _testIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testIds);
  }

  @override
  final SampleStatus status;
  @override
  final DateTime collectionTime;
  @override
  final SampleIntegrityScore integrityScore;
  final List<SampleEvent> _chainOfCustody;
  @override
  List<SampleEvent> get chainOfCustody {
    if (_chainOfCustody is EqualUnmodifiableListView) return _chainOfCustody;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chainOfCustody);
  }

  @override
  final String? phlebotomistId;
  @override
  final String? phlebotomistName;
  @override
  final String? labId;
  @override
  final String? labName;
  @override
  final DateTime? reachedLabTime;
  @override
  final DateTime? processingStartTime;
  @override
  final DateTime? processingEndTime;
  @override
  final ColdChainData? coldChainData;
  @override
  final BiometricVerification? biometricVerification;
  @override
  final PreAnalyticalRiskAssessment? preAnalyticalRisk;
  @override
  final SampleCondition? condition;
  @override
  final String? notes;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Sample(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vialId, vialId) || other.vialId == vialId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other._testIds, _testIds) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.collectionTime, collectionTime) ||
                other.collectionTime == collectionTime) &&
            (identical(other.integrityScore, integrityScore) ||
                other.integrityScore == integrityScore) &&
            const DeepCollectionEquality()
                .equals(other._chainOfCustody, _chainOfCustody) &&
            (identical(other.phlebotomistId, phlebotomistId) ||
                other.phlebotomistId == phlebotomistId) &&
            (identical(other.phlebotomistName, phlebotomistName) ||
                other.phlebotomistName == phlebotomistName) &&
            (identical(other.labId, labId) || other.labId == labId) &&
            (identical(other.labName, labName) || other.labName == labName) &&
            (identical(other.reachedLabTime, reachedLabTime) ||
                other.reachedLabTime == reachedLabTime) &&
            (identical(other.processingStartTime, processingStartTime) ||
                other.processingStartTime == processingStartTime) &&
            (identical(other.processingEndTime, processingEndTime) ||
                other.processingEndTime == processingEndTime) &&
            (identical(other.coldChainData, coldChainData) ||
                other.coldChainData == coldChainData) &&
            (identical(other.biometricVerification, biometricVerification) ||
                other.biometricVerification == biometricVerification) &&
            (identical(other.preAnalyticalRisk, preAnalyticalRisk) ||
                other.preAnalyticalRisk == preAnalyticalRisk) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vialId,
        patientAbhaId,
        patientName,
        orderId,
        const DeepCollectionEquality().hash(_testIds),
        status,
        collectionTime,
        integrityScore,
        const DeepCollectionEquality().hash(_chainOfCustody),
        phlebotomistId,
        phlebotomistName,
        labId,
        labName,
        reachedLabTime,
        processingStartTime,
        processingEndTime,
        coldChainData,
        biometricVerification,
        preAnalyticalRisk,
        condition,
        notes,
        const DeepCollectionEquality().hash(_imageUrls),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleImplCopyWith<_$SampleImpl> get copyWith =>
      __$$SampleImplCopyWithImpl<_$SampleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleImplToJson(
      this,
    );
  }
}

abstract class _Sample implements Sample {
  const factory _Sample(
      {required final String id,
      required final String vialId,
      required final String patientAbhaId,
      required final String patientName,
      required final String orderId,
      required final List<String> testIds,
      required final SampleStatus status,
      required final DateTime collectionTime,
      required final SampleIntegrityScore integrityScore,
      required final List<SampleEvent> chainOfCustody,
      final String? phlebotomistId,
      final String? phlebotomistName,
      final String? labId,
      final String? labName,
      final DateTime? reachedLabTime,
      final DateTime? processingStartTime,
      final DateTime? processingEndTime,
      final ColdChainData? coldChainData,
      final BiometricVerification? biometricVerification,
      final PreAnalyticalRiskAssessment? preAnalyticalRisk,
      final SampleCondition? condition,
      final String? notes,
      final List<String> imageUrls,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$SampleImpl;

  factory _Sample.fromJson(Map<String, dynamic> json) = _$SampleImpl.fromJson;

  @override
  String get id;
  @override
  String get vialId;
  @override
  String get patientAbhaId;
  @override
  String get patientName;
  @override
  String get orderId;
  @override
  List<String> get testIds;
  @override
  SampleStatus get status;
  @override
  DateTime get collectionTime;
  @override
  SampleIntegrityScore get integrityScore;
  @override
  List<SampleEvent> get chainOfCustody;
  @override
  String? get phlebotomistId;
  @override
  String? get phlebotomistName;
  @override
  String? get labId;
  @override
  String? get labName;
  @override
  DateTime? get reachedLabTime;
  @override
  DateTime? get processingStartTime;
  @override
  DateTime? get processingEndTime;
  @override
  ColdChainData? get coldChainData;
  @override
  BiometricVerification? get biometricVerification;
  @override
  PreAnalyticalRiskAssessment? get preAnalyticalRisk;
  @override
  SampleCondition? get condition;
  @override
  String? get notes;
  @override
  List<String> get imageUrls;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SampleImplCopyWith<_$SampleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SampleStatus _$SampleStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'requested':
      return SampleStatusRequested.fromJson(json);
    case 'assigned':
      return SampleStatusAssigned.fromJson(json);
    case 'inTransit':
      return SampleStatusInTransit.fromJson(json);
    case 'reachedLab':
      return SampleStatusReachedLab.fromJson(json);
    case 'processing':
      return SampleStatusProcessing.fromJson(json);
    case 'completed':
      return SampleStatusCompleted.fromJson(json);
    case 'rejected':
      return SampleStatusRejected.fromJson(json);
    case 'cancelled':
      return SampleStatusCancelled.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SampleStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SampleStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStatusCopyWith<$Res> {
  factory $SampleStatusCopyWith(
          SampleStatus value, $Res Function(SampleStatus) then) =
      _$SampleStatusCopyWithImpl<$Res, SampleStatus>;
}

/// @nodoc
class _$SampleStatusCopyWithImpl<$Res, $Val extends SampleStatus>
    implements $SampleStatusCopyWith<$Res> {
  _$SampleStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SampleStatusRequestedImplCopyWith<$Res> {
  factory _$$SampleStatusRequestedImplCopyWith(
          _$SampleStatusRequestedImpl value,
          $Res Function(_$SampleStatusRequestedImpl) then) =
      __$$SampleStatusRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SampleStatusRequestedImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusRequestedImpl>
    implements _$$SampleStatusRequestedImplCopyWith<$Res> {
  __$$SampleStatusRequestedImplCopyWithImpl(_$SampleStatusRequestedImpl _value,
      $Res Function(_$SampleStatusRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusRequestedImpl implements SampleStatusRequested {
  const _$SampleStatusRequestedImpl({final String? $type})
      : $type = $type ?? 'requested';

  factory _$SampleStatusRequestedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusRequestedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.requested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusRequestedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusRequestedImplToJson(
      this,
    );
  }
}

abstract class SampleStatusRequested implements SampleStatus {
  const factory SampleStatusRequested() = _$SampleStatusRequestedImpl;

  factory SampleStatusRequested.fromJson(Map<String, dynamic> json) =
      _$SampleStatusRequestedImpl.fromJson;
}

/// @nodoc
abstract class _$$SampleStatusAssignedImplCopyWith<$Res> {
  factory _$$SampleStatusAssignedImplCopyWith(_$SampleStatusAssignedImpl value,
          $Res Function(_$SampleStatusAssignedImpl) then) =
      __$$SampleStatusAssignedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phlebotomistId});
}

/// @nodoc
class __$$SampleStatusAssignedImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusAssignedImpl>
    implements _$$SampleStatusAssignedImplCopyWith<$Res> {
  __$$SampleStatusAssignedImplCopyWithImpl(_$SampleStatusAssignedImpl _value,
      $Res Function(_$SampleStatusAssignedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phlebotomistId = null,
  }) {
    return _then(_$SampleStatusAssignedImpl(
      phlebotomistId: null == phlebotomistId
          ? _value.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusAssignedImpl implements SampleStatusAssigned {
  const _$SampleStatusAssignedImpl(
      {required this.phlebotomistId, final String? $type})
      : $type = $type ?? 'assigned';

  factory _$SampleStatusAssignedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusAssignedImplFromJson(json);

  @override
  final String phlebotomistId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.assigned(phlebotomistId: $phlebotomistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusAssignedImpl &&
            (identical(other.phlebotomistId, phlebotomistId) ||
                other.phlebotomistId == phlebotomistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phlebotomistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusAssignedImplCopyWith<_$SampleStatusAssignedImpl>
      get copyWith =>
          __$$SampleStatusAssignedImplCopyWithImpl<_$SampleStatusAssignedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return assigned(phlebotomistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return assigned?.call(phlebotomistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (assigned != null) {
      return assigned(phlebotomistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return assigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return assigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (assigned != null) {
      return assigned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusAssignedImplToJson(
      this,
    );
  }
}

abstract class SampleStatusAssigned implements SampleStatus {
  const factory SampleStatusAssigned({required final String phlebotomistId}) =
      _$SampleStatusAssignedImpl;

  factory SampleStatusAssigned.fromJson(Map<String, dynamic> json) =
      _$SampleStatusAssignedImpl.fromJson;

  String get phlebotomistId;
  @JsonKey(ignore: true)
  _$$SampleStatusAssignedImplCopyWith<_$SampleStatusAssignedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusInTransitImplCopyWith<$Res> {
  factory _$$SampleStatusInTransitImplCopyWith(
          _$SampleStatusInTransitImpl value,
          $Res Function(_$SampleStatusInTransitImpl) then) =
      __$$SampleStatusInTransitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startTime, GeoLocation currentLocation});

  $GeoLocationCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$SampleStatusInTransitImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusInTransitImpl>
    implements _$$SampleStatusInTransitImplCopyWith<$Res> {
  __$$SampleStatusInTransitImplCopyWithImpl(_$SampleStatusInTransitImpl _value,
      $Res Function(_$SampleStatusInTransitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? currentLocation = null,
  }) {
    return _then(_$SampleStatusInTransitImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get currentLocation {
    return $GeoLocationCopyWith<$Res>(_value.currentLocation, (value) {
      return _then(_value.copyWith(currentLocation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusInTransitImpl implements SampleStatusInTransit {
  const _$SampleStatusInTransitImpl(
      {required this.startTime,
      required this.currentLocation,
      final String? $type})
      : $type = $type ?? 'inTransit';

  factory _$SampleStatusInTransitImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusInTransitImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final GeoLocation currentLocation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.inTransit(startTime: $startTime, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusInTransitImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, currentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusInTransitImplCopyWith<_$SampleStatusInTransitImpl>
      get copyWith => __$$SampleStatusInTransitImplCopyWithImpl<
          _$SampleStatusInTransitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return inTransit(startTime, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return inTransit?.call(startTime, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (inTransit != null) {
      return inTransit(startTime, currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return inTransit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return inTransit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (inTransit != null) {
      return inTransit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusInTransitImplToJson(
      this,
    );
  }
}

abstract class SampleStatusInTransit implements SampleStatus {
  const factory SampleStatusInTransit(
          {required final DateTime startTime,
          required final GeoLocation currentLocation}) =
      _$SampleStatusInTransitImpl;

  factory SampleStatusInTransit.fromJson(Map<String, dynamic> json) =
      _$SampleStatusInTransitImpl.fromJson;

  DateTime get startTime;
  GeoLocation get currentLocation;
  @JsonKey(ignore: true)
  _$$SampleStatusInTransitImplCopyWith<_$SampleStatusInTransitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusReachedLabImplCopyWith<$Res> {
  factory _$$SampleStatusReachedLabImplCopyWith(
          _$SampleStatusReachedLabImpl value,
          $Res Function(_$SampleStatusReachedLabImpl) then) =
      __$$SampleStatusReachedLabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime arrivalTime});
}

/// @nodoc
class __$$SampleStatusReachedLabImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusReachedLabImpl>
    implements _$$SampleStatusReachedLabImplCopyWith<$Res> {
  __$$SampleStatusReachedLabImplCopyWithImpl(
      _$SampleStatusReachedLabImpl _value,
      $Res Function(_$SampleStatusReachedLabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = null,
  }) {
    return _then(_$SampleStatusReachedLabImpl(
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusReachedLabImpl implements SampleStatusReachedLab {
  const _$SampleStatusReachedLabImpl(
      {required this.arrivalTime, final String? $type})
      : $type = $type ?? 'reachedLab';

  factory _$SampleStatusReachedLabImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusReachedLabImplFromJson(json);

  @override
  final DateTime arrivalTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.reachedLab(arrivalTime: $arrivalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusReachedLabImpl &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arrivalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusReachedLabImplCopyWith<_$SampleStatusReachedLabImpl>
      get copyWith => __$$SampleStatusReachedLabImplCopyWithImpl<
          _$SampleStatusReachedLabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return reachedLab(arrivalTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return reachedLab?.call(arrivalTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (reachedLab != null) {
      return reachedLab(arrivalTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return reachedLab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return reachedLab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (reachedLab != null) {
      return reachedLab(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusReachedLabImplToJson(
      this,
    );
  }
}

abstract class SampleStatusReachedLab implements SampleStatus {
  const factory SampleStatusReachedLab({required final DateTime arrivalTime}) =
      _$SampleStatusReachedLabImpl;

  factory SampleStatusReachedLab.fromJson(Map<String, dynamic> json) =
      _$SampleStatusReachedLabImpl.fromJson;

  DateTime get arrivalTime;
  @JsonKey(ignore: true)
  _$$SampleStatusReachedLabImplCopyWith<_$SampleStatusReachedLabImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusProcessingImplCopyWith<$Res> {
  factory _$$SampleStatusProcessingImplCopyWith(
          _$SampleStatusProcessingImpl value,
          $Res Function(_$SampleStatusProcessingImpl) then) =
      __$$SampleStatusProcessingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startTime});
}

/// @nodoc
class __$$SampleStatusProcessingImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusProcessingImpl>
    implements _$$SampleStatusProcessingImplCopyWith<$Res> {
  __$$SampleStatusProcessingImplCopyWithImpl(
      _$SampleStatusProcessingImpl _value,
      $Res Function(_$SampleStatusProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
  }) {
    return _then(_$SampleStatusProcessingImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusProcessingImpl implements SampleStatusProcessing {
  const _$SampleStatusProcessingImpl(
      {required this.startTime, final String? $type})
      : $type = $type ?? 'processing';

  factory _$SampleStatusProcessingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusProcessingImplFromJson(json);

  @override
  final DateTime startTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.processing(startTime: $startTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusProcessingImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusProcessingImplCopyWith<_$SampleStatusProcessingImpl>
      get copyWith => __$$SampleStatusProcessingImplCopyWithImpl<
          _$SampleStatusProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return processing(startTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return processing?.call(startTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(startTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusProcessingImplToJson(
      this,
    );
  }
}

abstract class SampleStatusProcessing implements SampleStatus {
  const factory SampleStatusProcessing({required final DateTime startTime}) =
      _$SampleStatusProcessingImpl;

  factory SampleStatusProcessing.fromJson(Map<String, dynamic> json) =
      _$SampleStatusProcessingImpl.fromJson;

  DateTime get startTime;
  @JsonKey(ignore: true)
  _$$SampleStatusProcessingImplCopyWith<_$SampleStatusProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusCompletedImplCopyWith<$Res> {
  factory _$$SampleStatusCompletedImplCopyWith(
          _$SampleStatusCompletedImpl value,
          $Res Function(_$SampleStatusCompletedImpl) then) =
      __$$SampleStatusCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime completionTime, String resultId});
}

/// @nodoc
class __$$SampleStatusCompletedImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusCompletedImpl>
    implements _$$SampleStatusCompletedImplCopyWith<$Res> {
  __$$SampleStatusCompletedImplCopyWithImpl(_$SampleStatusCompletedImpl _value,
      $Res Function(_$SampleStatusCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionTime = null,
    Object? resultId = null,
  }) {
    return _then(_$SampleStatusCompletedImpl(
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusCompletedImpl implements SampleStatusCompleted {
  const _$SampleStatusCompletedImpl(
      {required this.completionTime,
      required this.resultId,
      final String? $type})
      : $type = $type ?? 'completed';

  factory _$SampleStatusCompletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusCompletedImplFromJson(json);

  @override
  final DateTime completionTime;
  @override
  final String resultId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.completed(completionTime: $completionTime, resultId: $resultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusCompletedImpl &&
            (identical(other.completionTime, completionTime) ||
                other.completionTime == completionTime) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completionTime, resultId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusCompletedImplCopyWith<_$SampleStatusCompletedImpl>
      get copyWith => __$$SampleStatusCompletedImplCopyWithImpl<
          _$SampleStatusCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return completed(completionTime, resultId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return completed?.call(completionTime, resultId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(completionTime, resultId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusCompletedImplToJson(
      this,
    );
  }
}

abstract class SampleStatusCompleted implements SampleStatus {
  const factory SampleStatusCompleted(
      {required final DateTime completionTime,
      required final String resultId}) = _$SampleStatusCompletedImpl;

  factory SampleStatusCompleted.fromJson(Map<String, dynamic> json) =
      _$SampleStatusCompletedImpl.fromJson;

  DateTime get completionTime;
  String get resultId;
  @JsonKey(ignore: true)
  _$$SampleStatusCompletedImplCopyWith<_$SampleStatusCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusRejectedImplCopyWith<$Res> {
  factory _$$SampleStatusRejectedImplCopyWith(_$SampleStatusRejectedImpl value,
          $Res Function(_$SampleStatusRejectedImpl) then) =
      __$$SampleStatusRejectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason, DateTime rejectedAt, bool requiresRecollection});
}

/// @nodoc
class __$$SampleStatusRejectedImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusRejectedImpl>
    implements _$$SampleStatusRejectedImplCopyWith<$Res> {
  __$$SampleStatusRejectedImplCopyWithImpl(_$SampleStatusRejectedImpl _value,
      $Res Function(_$SampleStatusRejectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? rejectedAt = null,
    Object? requiresRecollection = null,
  }) {
    return _then(_$SampleStatusRejectedImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      rejectedAt: null == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requiresRecollection: null == requiresRecollection
          ? _value.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusRejectedImpl implements SampleStatusRejected {
  const _$SampleStatusRejectedImpl(
      {required this.reason,
      required this.rejectedAt,
      required this.requiresRecollection,
      final String? $type})
      : $type = $type ?? 'rejected';

  factory _$SampleStatusRejectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusRejectedImplFromJson(json);

  @override
  final String reason;
  @override
  final DateTime rejectedAt;
  @override
  final bool requiresRecollection;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.rejected(reason: $reason, rejectedAt: $rejectedAt, requiresRecollection: $requiresRecollection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusRejectedImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.requiresRecollection, requiresRecollection) ||
                other.requiresRecollection == requiresRecollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, rejectedAt, requiresRecollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusRejectedImplCopyWith<_$SampleStatusRejectedImpl>
      get copyWith =>
          __$$SampleStatusRejectedImplCopyWithImpl<_$SampleStatusRejectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return rejected(reason, rejectedAt, requiresRecollection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return rejected?.call(reason, rejectedAt, requiresRecollection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(reason, rejectedAt, requiresRecollection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return rejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return rejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusRejectedImplToJson(
      this,
    );
  }
}

abstract class SampleStatusRejected implements SampleStatus {
  const factory SampleStatusRejected(
      {required final String reason,
      required final DateTime rejectedAt,
      required final bool requiresRecollection}) = _$SampleStatusRejectedImpl;

  factory SampleStatusRejected.fromJson(Map<String, dynamic> json) =
      _$SampleStatusRejectedImpl.fromJson;

  String get reason;
  DateTime get rejectedAt;
  bool get requiresRecollection;
  @JsonKey(ignore: true)
  _$$SampleStatusRejectedImplCopyWith<_$SampleStatusRejectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleStatusCancelledImplCopyWith<$Res> {
  factory _$$SampleStatusCancelledImplCopyWith(
          _$SampleStatusCancelledImpl value,
          $Res Function(_$SampleStatusCancelledImpl) then) =
      __$$SampleStatusCancelledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason, DateTime cancelledAt});
}

/// @nodoc
class __$$SampleStatusCancelledImplCopyWithImpl<$Res>
    extends _$SampleStatusCopyWithImpl<$Res, _$SampleStatusCancelledImpl>
    implements _$$SampleStatusCancelledImplCopyWith<$Res> {
  __$$SampleStatusCancelledImplCopyWithImpl(_$SampleStatusCancelledImpl _value,
      $Res Function(_$SampleStatusCancelledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? cancelledAt = null,
  }) {
    return _then(_$SampleStatusCancelledImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      cancelledAt: null == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleStatusCancelledImpl implements SampleStatusCancelled {
  const _$SampleStatusCancelledImpl(
      {required this.reason, required this.cancelledAt, final String? $type})
      : $type = $type ?? 'cancelled';

  factory _$SampleStatusCancelledImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleStatusCancelledImplFromJson(json);

  @override
  final String reason;
  @override
  final DateTime cancelledAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SampleStatus.cancelled(reason: $reason, cancelledAt: $cancelledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStatusCancelledImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, cancelledAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStatusCancelledImplCopyWith<_$SampleStatusCancelledImpl>
      get copyWith => __$$SampleStatusCancelledImplCopyWithImpl<
          _$SampleStatusCancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function(String phlebotomistId) assigned,
    required TResult Function(DateTime startTime, GeoLocation currentLocation)
        inTransit,
    required TResult Function(DateTime arrivalTime) reachedLab,
    required TResult Function(DateTime startTime) processing,
    required TResult Function(DateTime completionTime, String resultId)
        completed,
    required TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)
        rejected,
    required TResult Function(String reason, DateTime cancelledAt) cancelled,
  }) {
    return cancelled(reason, cancelledAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function(String phlebotomistId)? assigned,
    TResult? Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult? Function(DateTime arrivalTime)? reachedLab,
    TResult? Function(DateTime startTime)? processing,
    TResult? Function(DateTime completionTime, String resultId)? completed,
    TResult? Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult? Function(String reason, DateTime cancelledAt)? cancelled,
  }) {
    return cancelled?.call(reason, cancelledAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function(String phlebotomistId)? assigned,
    TResult Function(DateTime startTime, GeoLocation currentLocation)?
        inTransit,
    TResult Function(DateTime arrivalTime)? reachedLab,
    TResult Function(DateTime startTime)? processing,
    TResult Function(DateTime completionTime, String resultId)? completed,
    TResult Function(
            String reason, DateTime rejectedAt, bool requiresRecollection)?
        rejected,
    TResult Function(String reason, DateTime cancelledAt)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(reason, cancelledAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleStatusRequested value) requested,
    required TResult Function(SampleStatusAssigned value) assigned,
    required TResult Function(SampleStatusInTransit value) inTransit,
    required TResult Function(SampleStatusReachedLab value) reachedLab,
    required TResult Function(SampleStatusProcessing value) processing,
    required TResult Function(SampleStatusCompleted value) completed,
    required TResult Function(SampleStatusRejected value) rejected,
    required TResult Function(SampleStatusCancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleStatusRequested value)? requested,
    TResult? Function(SampleStatusAssigned value)? assigned,
    TResult? Function(SampleStatusInTransit value)? inTransit,
    TResult? Function(SampleStatusReachedLab value)? reachedLab,
    TResult? Function(SampleStatusProcessing value)? processing,
    TResult? Function(SampleStatusCompleted value)? completed,
    TResult? Function(SampleStatusRejected value)? rejected,
    TResult? Function(SampleStatusCancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleStatusRequested value)? requested,
    TResult Function(SampleStatusAssigned value)? assigned,
    TResult Function(SampleStatusInTransit value)? inTransit,
    TResult Function(SampleStatusReachedLab value)? reachedLab,
    TResult Function(SampleStatusProcessing value)? processing,
    TResult Function(SampleStatusCompleted value)? completed,
    TResult Function(SampleStatusRejected value)? rejected,
    TResult Function(SampleStatusCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleStatusCancelledImplToJson(
      this,
    );
  }
}

abstract class SampleStatusCancelled implements SampleStatus {
  const factory SampleStatusCancelled(
      {required final String reason,
      required final DateTime cancelledAt}) = _$SampleStatusCancelledImpl;

  factory SampleStatusCancelled.fromJson(Map<String, dynamic> json) =
      _$SampleStatusCancelledImpl.fromJson;

  String get reason;
  DateTime get cancelledAt;
  @JsonKey(ignore: true)
  _$$SampleStatusCancelledImplCopyWith<_$SampleStatusCancelledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SampleCondition _$SampleConditionFromJson(Map<String, dynamic> json) {
  return _SampleCondition.fromJson(json);
}

/// @nodoc
mixin _$SampleCondition {
  bool get isHemolyzed => throw _privateConstructorUsedError;
  bool get isClotted => throw _privateConstructorUsedError;
  bool get isLipemic => throw _privateConstructorUsedError;
  bool get isIcteric => throw _privateConstructorUsedError;
  VolumeStatus get volumeStatus => throw _privateConstructorUsedError;
  ContainerIntegrity get containerIntegrity =>
      throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleConditionCopyWith<SampleCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleConditionCopyWith<$Res> {
  factory $SampleConditionCopyWith(
          SampleCondition value, $Res Function(SampleCondition) then) =
      _$SampleConditionCopyWithImpl<$Res, SampleCondition>;
  @useResult
  $Res call(
      {bool isHemolyzed,
      bool isClotted,
      bool isLipemic,
      bool isIcteric,
      VolumeStatus volumeStatus,
      ContainerIntegrity containerIntegrity,
      String? notes});
}

/// @nodoc
class _$SampleConditionCopyWithImpl<$Res, $Val extends SampleCondition>
    implements $SampleConditionCopyWith<$Res> {
  _$SampleConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHemolyzed = null,
    Object? isClotted = null,
    Object? isLipemic = null,
    Object? isIcteric = null,
    Object? volumeStatus = null,
    Object? containerIntegrity = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      isHemolyzed: null == isHemolyzed
          ? _value.isHemolyzed
          : isHemolyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      isClotted: null == isClotted
          ? _value.isClotted
          : isClotted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLipemic: null == isLipemic
          ? _value.isLipemic
          : isLipemic // ignore: cast_nullable_to_non_nullable
              as bool,
      isIcteric: null == isIcteric
          ? _value.isIcteric
          : isIcteric // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeStatus: null == volumeStatus
          ? _value.volumeStatus
          : volumeStatus // ignore: cast_nullable_to_non_nullable
              as VolumeStatus,
      containerIntegrity: null == containerIntegrity
          ? _value.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as ContainerIntegrity,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleConditionImplCopyWith<$Res>
    implements $SampleConditionCopyWith<$Res> {
  factory _$$SampleConditionImplCopyWith(_$SampleConditionImpl value,
          $Res Function(_$SampleConditionImpl) then) =
      __$$SampleConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isHemolyzed,
      bool isClotted,
      bool isLipemic,
      bool isIcteric,
      VolumeStatus volumeStatus,
      ContainerIntegrity containerIntegrity,
      String? notes});
}

/// @nodoc
class __$$SampleConditionImplCopyWithImpl<$Res>
    extends _$SampleConditionCopyWithImpl<$Res, _$SampleConditionImpl>
    implements _$$SampleConditionImplCopyWith<$Res> {
  __$$SampleConditionImplCopyWithImpl(
      _$SampleConditionImpl _value, $Res Function(_$SampleConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHemolyzed = null,
    Object? isClotted = null,
    Object? isLipemic = null,
    Object? isIcteric = null,
    Object? volumeStatus = null,
    Object? containerIntegrity = null,
    Object? notes = freezed,
  }) {
    return _then(_$SampleConditionImpl(
      isHemolyzed: null == isHemolyzed
          ? _value.isHemolyzed
          : isHemolyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      isClotted: null == isClotted
          ? _value.isClotted
          : isClotted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLipemic: null == isLipemic
          ? _value.isLipemic
          : isLipemic // ignore: cast_nullable_to_non_nullable
              as bool,
      isIcteric: null == isIcteric
          ? _value.isIcteric
          : isIcteric // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeStatus: null == volumeStatus
          ? _value.volumeStatus
          : volumeStatus // ignore: cast_nullable_to_non_nullable
              as VolumeStatus,
      containerIntegrity: null == containerIntegrity
          ? _value.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as ContainerIntegrity,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleConditionImpl implements _SampleCondition {
  const _$SampleConditionImpl(
      {required this.isHemolyzed,
      required this.isClotted,
      required this.isLipemic,
      required this.isIcteric,
      required this.volumeStatus,
      required this.containerIntegrity,
      this.notes});

  factory _$SampleConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleConditionImplFromJson(json);

  @override
  final bool isHemolyzed;
  @override
  final bool isClotted;
  @override
  final bool isLipemic;
  @override
  final bool isIcteric;
  @override
  final VolumeStatus volumeStatus;
  @override
  final ContainerIntegrity containerIntegrity;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SampleCondition(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleConditionImpl &&
            (identical(other.isHemolyzed, isHemolyzed) ||
                other.isHemolyzed == isHemolyzed) &&
            (identical(other.isClotted, isClotted) ||
                other.isClotted == isClotted) &&
            (identical(other.isLipemic, isLipemic) ||
                other.isLipemic == isLipemic) &&
            (identical(other.isIcteric, isIcteric) ||
                other.isIcteric == isIcteric) &&
            (identical(other.volumeStatus, volumeStatus) ||
                other.volumeStatus == volumeStatus) &&
            (identical(other.containerIntegrity, containerIntegrity) ||
                other.containerIntegrity == containerIntegrity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isHemolyzed, isClotted,
      isLipemic, isIcteric, volumeStatus, containerIntegrity, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleConditionImplCopyWith<_$SampleConditionImpl> get copyWith =>
      __$$SampleConditionImplCopyWithImpl<_$SampleConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleConditionImplToJson(
      this,
    );
  }
}

abstract class _SampleCondition implements SampleCondition {
  const factory _SampleCondition(
      {required final bool isHemolyzed,
      required final bool isClotted,
      required final bool isLipemic,
      required final bool isIcteric,
      required final VolumeStatus volumeStatus,
      required final ContainerIntegrity containerIntegrity,
      final String? notes}) = _$SampleConditionImpl;

  factory _SampleCondition.fromJson(Map<String, dynamic> json) =
      _$SampleConditionImpl.fromJson;

  @override
  bool get isHemolyzed;
  @override
  bool get isClotted;
  @override
  bool get isLipemic;
  @override
  bool get isIcteric;
  @override
  VolumeStatus get volumeStatus;
  @override
  ContainerIntegrity get containerIntegrity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SampleConditionImplCopyWith<_$SampleConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
