// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleModel _$SampleModelFromJson(Map<String, dynamic> json) {
  return _SampleModel.fromJson(json);
}

/// @nodoc
mixin _$SampleModel {
  String get id => throw _privateConstructorUsedError;
  String get vialId => throw _privateConstructorUsedError;
  String get patientAbhaId => throw _privateConstructorUsedError;
  String get patientName => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  List<String> get testIds => throw _privateConstructorUsedError;
  Map<String, dynamic> get status => throw _privateConstructorUsedError;
  String get collectionTime => throw _privateConstructorUsedError;
  SampleIntegrityScoreModel get integrityScore =>
      throw _privateConstructorUsedError;
  List<SampleEventModel> get chainOfCustody =>
      throw _privateConstructorUsedError;
  String? get phlebotomistId => throw _privateConstructorUsedError;
  String? get phlebotomistName => throw _privateConstructorUsedError;
  String? get labId => throw _privateConstructorUsedError;
  String? get labName => throw _privateConstructorUsedError;
  String? get reachedLabTime => throw _privateConstructorUsedError;
  String? get processingStartTime => throw _privateConstructorUsedError;
  String? get processingEndTime => throw _privateConstructorUsedError;
  ColdChainDataModel? get coldChainData => throw _privateConstructorUsedError;
  BiometricVerificationModel? get biometricVerification =>
      throw _privateConstructorUsedError;
  PreAnalyticalRiskModel? get preAnalyticalRisk =>
      throw _privateConstructorUsedError;
  SampleConditionModel? get condition => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleModelCopyWith<SampleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleModelCopyWith<$Res> {
  factory $SampleModelCopyWith(
          SampleModel value, $Res Function(SampleModel) then) =
      _$SampleModelCopyWithImpl<$Res, SampleModel>;
  @useResult
  $Res call(
      {String id,
      String vialId,
      String patientAbhaId,
      String patientName,
      String orderId,
      List<String> testIds,
      Map<String, dynamic> status,
      String collectionTime,
      SampleIntegrityScoreModel integrityScore,
      List<SampleEventModel> chainOfCustody,
      String? phlebotomistId,
      String? phlebotomistName,
      String? labId,
      String? labName,
      String? reachedLabTime,
      String? processingStartTime,
      String? processingEndTime,
      ColdChainDataModel? coldChainData,
      BiometricVerificationModel? biometricVerification,
      PreAnalyticalRiskModel? preAnalyticalRisk,
      SampleConditionModel? condition,
      String? notes,
      List<String> imageUrls,
      String createdAt,
      String? updatedAt});

  $SampleIntegrityScoreModelCopyWith<$Res> get integrityScore;
  $ColdChainDataModelCopyWith<$Res>? get coldChainData;
  $BiometricVerificationModelCopyWith<$Res>? get biometricVerification;
  $PreAnalyticalRiskModelCopyWith<$Res>? get preAnalyticalRisk;
  $SampleConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class _$SampleModelCopyWithImpl<$Res, $Val extends SampleModel>
    implements $SampleModelCopyWith<$Res> {
  _$SampleModelCopyWithImpl(this._value, this._then);

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
              as Map<String, dynamic>,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as String,
      integrityScore: null == integrityScore
          ? _value.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScoreModel,
      chainOfCustody: null == chainOfCustody
          ? _value.chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEventModel>,
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
              as String?,
      processingStartTime: freezed == processingStartTime
          ? _value.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingEndTime: freezed == processingEndTime
          ? _value.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      coldChainData: freezed == coldChainData
          ? _value.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainDataModel?,
      biometricVerification: freezed == biometricVerification
          ? _value.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerificationModel?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _value.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskModel?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleConditionModel?,
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
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreModelCopyWith<$Res> get integrityScore {
    return $SampleIntegrityScoreModelCopyWith<$Res>(_value.integrityScore,
        (value) {
      return _then(_value.copyWith(integrityScore: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColdChainDataModelCopyWith<$Res>? get coldChainData {
    if (_value.coldChainData == null) {
      return null;
    }

    return $ColdChainDataModelCopyWith<$Res>(_value.coldChainData!, (value) {
      return _then(_value.copyWith(coldChainData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiometricVerificationModelCopyWith<$Res>? get biometricVerification {
    if (_value.biometricVerification == null) {
      return null;
    }

    return $BiometricVerificationModelCopyWith<$Res>(
        _value.biometricVerification!, (value) {
      return _then(_value.copyWith(biometricVerification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreAnalyticalRiskModelCopyWith<$Res>? get preAnalyticalRisk {
    if (_value.preAnalyticalRisk == null) {
      return null;
    }

    return $PreAnalyticalRiskModelCopyWith<$Res>(_value.preAnalyticalRisk!,
        (value) {
      return _then(_value.copyWith(preAnalyticalRisk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleConditionModelCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $SampleConditionModelCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleModelImplCopyWith<$Res>
    implements $SampleModelCopyWith<$Res> {
  factory _$$SampleModelImplCopyWith(
          _$SampleModelImpl value, $Res Function(_$SampleModelImpl) then) =
      __$$SampleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String vialId,
      String patientAbhaId,
      String patientName,
      String orderId,
      List<String> testIds,
      Map<String, dynamic> status,
      String collectionTime,
      SampleIntegrityScoreModel integrityScore,
      List<SampleEventModel> chainOfCustody,
      String? phlebotomistId,
      String? phlebotomistName,
      String? labId,
      String? labName,
      String? reachedLabTime,
      String? processingStartTime,
      String? processingEndTime,
      ColdChainDataModel? coldChainData,
      BiometricVerificationModel? biometricVerification,
      PreAnalyticalRiskModel? preAnalyticalRisk,
      SampleConditionModel? condition,
      String? notes,
      List<String> imageUrls,
      String createdAt,
      String? updatedAt});

  @override
  $SampleIntegrityScoreModelCopyWith<$Res> get integrityScore;
  @override
  $ColdChainDataModelCopyWith<$Res>? get coldChainData;
  @override
  $BiometricVerificationModelCopyWith<$Res>? get biometricVerification;
  @override
  $PreAnalyticalRiskModelCopyWith<$Res>? get preAnalyticalRisk;
  @override
  $SampleConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$SampleModelImplCopyWithImpl<$Res>
    extends _$SampleModelCopyWithImpl<$Res, _$SampleModelImpl>
    implements _$$SampleModelImplCopyWith<$Res> {
  __$$SampleModelImplCopyWithImpl(
      _$SampleModelImpl _value, $Res Function(_$SampleModelImpl) _then)
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
    return _then(_$SampleModelImpl(
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
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      collectionTime: null == collectionTime
          ? _value.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as String,
      integrityScore: null == integrityScore
          ? _value.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScoreModel,
      chainOfCustody: null == chainOfCustody
          ? _value._chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEventModel>,
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
              as String?,
      processingStartTime: freezed == processingStartTime
          ? _value.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingEndTime: freezed == processingEndTime
          ? _value.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      coldChainData: freezed == coldChainData
          ? _value.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainDataModel?,
      biometricVerification: freezed == biometricVerification
          ? _value.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerificationModel?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _value.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskModel?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleConditionModel?,
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
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleModelImpl implements _SampleModel {
  const _$SampleModelImpl(
      {required this.id,
      required this.vialId,
      required this.patientAbhaId,
      required this.patientName,
      required this.orderId,
      required final List<String> testIds,
      required final Map<String, dynamic> status,
      required this.collectionTime,
      required this.integrityScore,
      required final List<SampleEventModel> chainOfCustody,
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
        _status = status,
        _chainOfCustody = chainOfCustody,
        _imageUrls = imageUrls;

  factory _$SampleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleModelImplFromJson(json);

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

  final Map<String, dynamic> _status;
  @override
  Map<String, dynamic> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  @override
  final String collectionTime;
  @override
  final SampleIntegrityScoreModel integrityScore;
  final List<SampleEventModel> _chainOfCustody;
  @override
  List<SampleEventModel> get chainOfCustody {
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
  final String? reachedLabTime;
  @override
  final String? processingStartTime;
  @override
  final String? processingEndTime;
  @override
  final ColdChainDataModel? coldChainData;
  @override
  final BiometricVerificationModel? biometricVerification;
  @override
  final PreAnalyticalRiskModel? preAnalyticalRisk;
  @override
  final SampleConditionModel? condition;
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
  final String createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'SampleModel(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vialId, vialId) || other.vialId == vialId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other._testIds, _testIds) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
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
        const DeepCollectionEquality().hash(_status),
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
  _$$SampleModelImplCopyWith<_$SampleModelImpl> get copyWith =>
      __$$SampleModelImplCopyWithImpl<_$SampleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleModelImplToJson(
      this,
    );
  }
}

abstract class _SampleModel implements SampleModel {
  const factory _SampleModel(
      {required final String id,
      required final String vialId,
      required final String patientAbhaId,
      required final String patientName,
      required final String orderId,
      required final List<String> testIds,
      required final Map<String, dynamic> status,
      required final String collectionTime,
      required final SampleIntegrityScoreModel integrityScore,
      required final List<SampleEventModel> chainOfCustody,
      final String? phlebotomistId,
      final String? phlebotomistName,
      final String? labId,
      final String? labName,
      final String? reachedLabTime,
      final String? processingStartTime,
      final String? processingEndTime,
      final ColdChainDataModel? coldChainData,
      final BiometricVerificationModel? biometricVerification,
      final PreAnalyticalRiskModel? preAnalyticalRisk,
      final SampleConditionModel? condition,
      final String? notes,
      final List<String> imageUrls,
      required final String createdAt,
      final String? updatedAt}) = _$SampleModelImpl;

  factory _SampleModel.fromJson(Map<String, dynamic> json) =
      _$SampleModelImpl.fromJson;

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
  Map<String, dynamic> get status;
  @override
  String get collectionTime;
  @override
  SampleIntegrityScoreModel get integrityScore;
  @override
  List<SampleEventModel> get chainOfCustody;
  @override
  String? get phlebotomistId;
  @override
  String? get phlebotomistName;
  @override
  String? get labId;
  @override
  String? get labName;
  @override
  String? get reachedLabTime;
  @override
  String? get processingStartTime;
  @override
  String? get processingEndTime;
  @override
  ColdChainDataModel? get coldChainData;
  @override
  BiometricVerificationModel? get biometricVerification;
  @override
  PreAnalyticalRiskModel? get preAnalyticalRisk;
  @override
  SampleConditionModel? get condition;
  @override
  String? get notes;
  @override
  List<String> get imageUrls;
  @override
  String get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SampleModelImplCopyWith<_$SampleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SampleConditionModel _$SampleConditionModelFromJson(Map<String, dynamic> json) {
  return _SampleConditionModel.fromJson(json);
}

/// @nodoc
mixin _$SampleConditionModel {
  bool get isHemolyzed => throw _privateConstructorUsedError;
  bool get isClotted => throw _privateConstructorUsedError;
  bool get isLipemic => throw _privateConstructorUsedError;
  bool get isIcteric => throw _privateConstructorUsedError;
  String get volumeStatus => throw _privateConstructorUsedError;
  String get containerIntegrity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleConditionModelCopyWith<SampleConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleConditionModelCopyWith<$Res> {
  factory $SampleConditionModelCopyWith(SampleConditionModel value,
          $Res Function(SampleConditionModel) then) =
      _$SampleConditionModelCopyWithImpl<$Res, SampleConditionModel>;
  @useResult
  $Res call(
      {bool isHemolyzed,
      bool isClotted,
      bool isLipemic,
      bool isIcteric,
      String volumeStatus,
      String containerIntegrity,
      String? notes});
}

/// @nodoc
class _$SampleConditionModelCopyWithImpl<$Res,
        $Val extends SampleConditionModel>
    implements $SampleConditionModelCopyWith<$Res> {
  _$SampleConditionModelCopyWithImpl(this._value, this._then);

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
              as String,
      containerIntegrity: null == containerIntegrity
          ? _value.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleConditionModelImplCopyWith<$Res>
    implements $SampleConditionModelCopyWith<$Res> {
  factory _$$SampleConditionModelImplCopyWith(_$SampleConditionModelImpl value,
          $Res Function(_$SampleConditionModelImpl) then) =
      __$$SampleConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isHemolyzed,
      bool isClotted,
      bool isLipemic,
      bool isIcteric,
      String volumeStatus,
      String containerIntegrity,
      String? notes});
}

/// @nodoc
class __$$SampleConditionModelImplCopyWithImpl<$Res>
    extends _$SampleConditionModelCopyWithImpl<$Res, _$SampleConditionModelImpl>
    implements _$$SampleConditionModelImplCopyWith<$Res> {
  __$$SampleConditionModelImplCopyWithImpl(_$SampleConditionModelImpl _value,
      $Res Function(_$SampleConditionModelImpl) _then)
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
    return _then(_$SampleConditionModelImpl(
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
              as String,
      containerIntegrity: null == containerIntegrity
          ? _value.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleConditionModelImpl implements _SampleConditionModel {
  const _$SampleConditionModelImpl(
      {required this.isHemolyzed,
      required this.isClotted,
      required this.isLipemic,
      required this.isIcteric,
      required this.volumeStatus,
      required this.containerIntegrity,
      this.notes});

  factory _$SampleConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleConditionModelImplFromJson(json);

  @override
  final bool isHemolyzed;
  @override
  final bool isClotted;
  @override
  final bool isLipemic;
  @override
  final bool isIcteric;
  @override
  final String volumeStatus;
  @override
  final String containerIntegrity;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SampleConditionModel(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleConditionModelImpl &&
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
  _$$SampleConditionModelImplCopyWith<_$SampleConditionModelImpl>
      get copyWith =>
          __$$SampleConditionModelImplCopyWithImpl<_$SampleConditionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleConditionModelImplToJson(
      this,
    );
  }
}

abstract class _SampleConditionModel implements SampleConditionModel {
  const factory _SampleConditionModel(
      {required final bool isHemolyzed,
      required final bool isClotted,
      required final bool isLipemic,
      required final bool isIcteric,
      required final String volumeStatus,
      required final String containerIntegrity,
      final String? notes}) = _$SampleConditionModelImpl;

  factory _SampleConditionModel.fromJson(Map<String, dynamic> json) =
      _$SampleConditionModelImpl.fromJson;

  @override
  bool get isHemolyzed;
  @override
  bool get isClotted;
  @override
  bool get isLipemic;
  @override
  bool get isIcteric;
  @override
  String get volumeStatus;
  @override
  String get containerIntegrity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SampleConditionModelImplCopyWith<_$SampleConditionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SampleEventModel _$SampleEventModelFromJson(Map<String, dynamic> json) {
  return _SampleEventModel.fromJson(json);
}

/// @nodoc
mixin _$SampleEventModel {
  String get id => throw _privateConstructorUsedError;
  String get sampleId => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get actorId => throw _privateConstructorUsedError;
  String get actorName => throw _privateConstructorUsedError;
  String get actorRole => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  GeoLocationModel get location => throw _privateConstructorUsedError;
  String get eventHash => throw _privateConstructorUsedError;
  String? get previousEventHash => throw _privateConstructorUsedError;
  EventMetadataModel? get metadata => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleEventModelCopyWith<SampleEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleEventModelCopyWith<$Res> {
  factory $SampleEventModelCopyWith(
          SampleEventModel value, $Res Function(SampleEventModel) then) =
      _$SampleEventModelCopyWithImpl<$Res, SampleEventModel>;
  @useResult
  $Res call(
      {String id,
      String sampleId,
      String eventType,
      String actorId,
      String actorName,
      String actorRole,
      String timestamp,
      GeoLocationModel location,
      String eventHash,
      String? previousEventHash,
      EventMetadataModel? metadata,
      String? notes});

  $GeoLocationModelCopyWith<$Res> get location;
  $EventMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$SampleEventModelCopyWithImpl<$Res, $Val extends SampleEventModel>
    implements $SampleEventModelCopyWith<$Res> {
  _$SampleEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? eventType = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorRole = null,
    Object? timestamp = null,
    Object? location = null,
    Object? eventHash = null,
    Object? previousEventHash = freezed,
    Object? metadata = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _value.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel,
      eventHash: null == eventHash
          ? _value.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _value.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadataModel?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res> get location {
    return $GeoLocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventMetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $EventMetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleEventModelImplCopyWith<$Res>
    implements $SampleEventModelCopyWith<$Res> {
  factory _$$SampleEventModelImplCopyWith(_$SampleEventModelImpl value,
          $Res Function(_$SampleEventModelImpl) then) =
      __$$SampleEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sampleId,
      String eventType,
      String actorId,
      String actorName,
      String actorRole,
      String timestamp,
      GeoLocationModel location,
      String eventHash,
      String? previousEventHash,
      EventMetadataModel? metadata,
      String? notes});

  @override
  $GeoLocationModelCopyWith<$Res> get location;
  @override
  $EventMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$SampleEventModelImplCopyWithImpl<$Res>
    extends _$SampleEventModelCopyWithImpl<$Res, _$SampleEventModelImpl>
    implements _$$SampleEventModelImplCopyWith<$Res> {
  __$$SampleEventModelImplCopyWithImpl(_$SampleEventModelImpl _value,
      $Res Function(_$SampleEventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? eventType = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorRole = null,
    Object? timestamp = null,
    Object? location = null,
    Object? eventHash = null,
    Object? previousEventHash = freezed,
    Object? metadata = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$SampleEventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _value.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel,
      eventHash: null == eventHash
          ? _value.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _value.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadataModel?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleEventModelImpl implements _SampleEventModel {
  const _$SampleEventModelImpl(
      {required this.id,
      required this.sampleId,
      required this.eventType,
      required this.actorId,
      required this.actorName,
      required this.actorRole,
      required this.timestamp,
      required this.location,
      required this.eventHash,
      this.previousEventHash,
      this.metadata,
      this.notes});

  factory _$SampleEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleEventModelImplFromJson(json);

  @override
  final String id;
  @override
  final String sampleId;
  @override
  final String eventType;
  @override
  final String actorId;
  @override
  final String actorName;
  @override
  final String actorRole;
  @override
  final String timestamp;
  @override
  final GeoLocationModel location;
  @override
  final String eventHash;
  @override
  final String? previousEventHash;
  @override
  final EventMetadataModel? metadata;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SampleEventModel(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorRole, actorRole) ||
                other.actorRole == actorRole) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.eventHash, eventHash) ||
                other.eventHash == eventHash) &&
            (identical(other.previousEventHash, previousEventHash) ||
                other.previousEventHash == previousEventHash) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sampleId,
      eventType,
      actorId,
      actorName,
      actorRole,
      timestamp,
      location,
      eventHash,
      previousEventHash,
      metadata,
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleEventModelImplCopyWith<_$SampleEventModelImpl> get copyWith =>
      __$$SampleEventModelImplCopyWithImpl<_$SampleEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleEventModelImplToJson(
      this,
    );
  }
}

abstract class _SampleEventModel implements SampleEventModel {
  const factory _SampleEventModel(
      {required final String id,
      required final String sampleId,
      required final String eventType,
      required final String actorId,
      required final String actorName,
      required final String actorRole,
      required final String timestamp,
      required final GeoLocationModel location,
      required final String eventHash,
      final String? previousEventHash,
      final EventMetadataModel? metadata,
      final String? notes}) = _$SampleEventModelImpl;

  factory _SampleEventModel.fromJson(Map<String, dynamic> json) =
      _$SampleEventModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sampleId;
  @override
  String get eventType;
  @override
  String get actorId;
  @override
  String get actorName;
  @override
  String get actorRole;
  @override
  String get timestamp;
  @override
  GeoLocationModel get location;
  @override
  String get eventHash;
  @override
  String? get previousEventHash;
  @override
  EventMetadataModel? get metadata;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SampleEventModelImplCopyWith<_$SampleEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoLocationModel _$GeoLocationModelFromJson(Map<String, dynamic> json) {
  return _GeoLocationModel.fromJson(json);
}

/// @nodoc
mixin _$GeoLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get altitude => throw _privateConstructorUsedError;
  double? get accuracy => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationModelCopyWith<GeoLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationModelCopyWith<$Res> {
  factory $GeoLocationModelCopyWith(
          GeoLocationModel value, $Res Function(GeoLocationModel) then) =
      _$GeoLocationModelCopyWithImpl<$Res, GeoLocationModel>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double? altitude,
      double? accuracy,
      String? timestamp});
}

/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res, $Val extends GeoLocationModel>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoLocationModelImplCopyWith<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  factory _$$GeoLocationModelImplCopyWith(_$GeoLocationModelImpl value,
          $Res Function(_$GeoLocationModelImpl) then) =
      __$$GeoLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double? altitude,
      double? accuracy,
      String? timestamp});
}

/// @nodoc
class __$$GeoLocationModelImplCopyWithImpl<$Res>
    extends _$GeoLocationModelCopyWithImpl<$Res, _$GeoLocationModelImpl>
    implements _$$GeoLocationModelImplCopyWith<$Res> {
  __$$GeoLocationModelImplCopyWithImpl(_$GeoLocationModelImpl _value,
      $Res Function(_$GeoLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$GeoLocationModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoLocationModelImpl implements _GeoLocationModel {
  const _$GeoLocationModelImpl(
      {required this.latitude,
      required this.longitude,
      this.altitude,
      this.accuracy,
      this.timestamp});

  factory _$GeoLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoLocationModelImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? altitude;
  @override
  final double? accuracy;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, altitude, accuracy, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      __$$GeoLocationModelImplCopyWithImpl<_$GeoLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoLocationModelImplToJson(
      this,
    );
  }
}

abstract class _GeoLocationModel implements GeoLocationModel {
  const factory _GeoLocationModel(
      {required final double latitude,
      required final double longitude,
      final double? altitude,
      final double? accuracy,
      final String? timestamp}) = _$GeoLocationModelImpl;

  factory _GeoLocationModel.fromJson(Map<String, dynamic> json) =
      _$GeoLocationModelImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get altitude;
  @override
  double? get accuracy;
  @override
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventMetadataModel _$EventMetadataModelFromJson(Map<String, dynamic> json) {
  return _EventMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$EventMetadataModel {
  double? get temperature => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;
  String? get bleDeviceId => throw _privateConstructorUsedError;
  bool? get biometricSuccess => throw _privateConstructorUsedError;
  String? get barcodeValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventMetadataModelCopyWith<EventMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMetadataModelCopyWith<$Res> {
  factory $EventMetadataModelCopyWith(
          EventMetadataModel value, $Res Function(EventMetadataModel) then) =
      _$EventMetadataModelCopyWithImpl<$Res, EventMetadataModel>;
  @useResult
  $Res call(
      {double? temperature,
      double? humidity,
      String? deviceId,
      String? appVersion,
      String? bleDeviceId,
      bool? biometricSuccess,
      String? barcodeValue,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$EventMetadataModelCopyWithImpl<$Res, $Val extends EventMetadataModel>
    implements $EventMetadataModelCopyWith<$Res> {
  _$EventMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? bleDeviceId = freezed,
    Object? biometricSuccess = freezed,
    Object? barcodeValue = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _value.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _value.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _value.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventMetadataModelImplCopyWith<$Res>
    implements $EventMetadataModelCopyWith<$Res> {
  factory _$$EventMetadataModelImplCopyWith(_$EventMetadataModelImpl value,
          $Res Function(_$EventMetadataModelImpl) then) =
      __$$EventMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? temperature,
      double? humidity,
      String? deviceId,
      String? appVersion,
      String? bleDeviceId,
      bool? biometricSuccess,
      String? barcodeValue,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$EventMetadataModelImplCopyWithImpl<$Res>
    extends _$EventMetadataModelCopyWithImpl<$Res, _$EventMetadataModelImpl>
    implements _$$EventMetadataModelImplCopyWith<$Res> {
  __$$EventMetadataModelImplCopyWithImpl(_$EventMetadataModelImpl _value,
      $Res Function(_$EventMetadataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? bleDeviceId = freezed,
    Object? biometricSuccess = freezed,
    Object? barcodeValue = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$EventMetadataModelImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _value.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _value.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _value.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventMetadataModelImpl implements _EventMetadataModel {
  const _$EventMetadataModelImpl(
      {this.temperature,
      this.humidity,
      this.deviceId,
      this.appVersion,
      this.bleDeviceId,
      this.biometricSuccess,
      this.barcodeValue,
      final Map<String, dynamic>? additionalData})
      : _additionalData = additionalData;

  factory _$EventMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventMetadataModelImplFromJson(json);

  @override
  final double? temperature;
  @override
  final double? humidity;
  @override
  final String? deviceId;
  @override
  final String? appVersion;
  @override
  final String? bleDeviceId;
  @override
  final bool? biometricSuccess;
  @override
  final String? barcodeValue;
  final Map<String, dynamic>? _additionalData;
  @override
  Map<String, dynamic>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableMapView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EventMetadataModel(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventMetadataModelImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.bleDeviceId, bleDeviceId) ||
                other.bleDeviceId == bleDeviceId) &&
            (identical(other.biometricSuccess, biometricSuccess) ||
                other.biometricSuccess == biometricSuccess) &&
            (identical(other.barcodeValue, barcodeValue) ||
                other.barcodeValue == barcodeValue) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      temperature,
      humidity,
      deviceId,
      appVersion,
      bleDeviceId,
      biometricSuccess,
      barcodeValue,
      const DeepCollectionEquality().hash(_additionalData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventMetadataModelImplCopyWith<_$EventMetadataModelImpl> get copyWith =>
      __$$EventMetadataModelImplCopyWithImpl<_$EventMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _EventMetadataModel implements EventMetadataModel {
  const factory _EventMetadataModel(
      {final double? temperature,
      final double? humidity,
      final String? deviceId,
      final String? appVersion,
      final String? bleDeviceId,
      final bool? biometricSuccess,
      final String? barcodeValue,
      final Map<String, dynamic>? additionalData}) = _$EventMetadataModelImpl;

  factory _EventMetadataModel.fromJson(Map<String, dynamic> json) =
      _$EventMetadataModelImpl.fromJson;

  @override
  double? get temperature;
  @override
  double? get humidity;
  @override
  String? get deviceId;
  @override
  String? get appVersion;
  @override
  String? get bleDeviceId;
  @override
  bool? get biometricSuccess;
  @override
  String? get barcodeValue;
  @override
  Map<String, dynamic>? get additionalData;
  @override
  @JsonKey(ignore: true)
  _$$EventMetadataModelImplCopyWith<_$EventMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiometricVerificationModel _$BiometricVerificationModelFromJson(
    Map<String, dynamic> json) {
  return _BiometricVerificationModel.fromJson(json);
}

/// @nodoc
mixin _$BiometricVerificationModel {
  String get verificationId => throw _privateConstructorUsedError;
  String get patientDeviceId => throw _privateConstructorUsedError;
  String get phlebotomistDeviceId => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get proximityDistance => throw _privateConstructorUsedError;
  int get signalStrength => throw _privateConstructorUsedError;
  String? get failureReason => throw _privateConstructorUsedError;
  int? get attemptCount => throw _privateConstructorUsedError;
  GeoLocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiometricVerificationModelCopyWith<BiometricVerificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricVerificationModelCopyWith<$Res> {
  factory $BiometricVerificationModelCopyWith(BiometricVerificationModel value,
          $Res Function(BiometricVerificationModel) then) =
      _$BiometricVerificationModelCopyWithImpl<$Res,
          BiometricVerificationModel>;
  @useResult
  $Res call(
      {String verificationId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      String timestamp,
      bool success,
      double proximityDistance,
      int signalStrength,
      String? failureReason,
      int? attemptCount,
      GeoLocationModel? location});

  $GeoLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$BiometricVerificationModelCopyWithImpl<$Res,
        $Val extends BiometricVerificationModel>
    implements $BiometricVerificationModelCopyWith<$Res> {
  _$BiometricVerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? timestamp = null,
    Object? success = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? failureReason = freezed,
    Object? attemptCount = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiometricVerificationModelImplCopyWith<$Res>
    implements $BiometricVerificationModelCopyWith<$Res> {
  factory _$$BiometricVerificationModelImplCopyWith(
          _$BiometricVerificationModelImpl value,
          $Res Function(_$BiometricVerificationModelImpl) then) =
      __$$BiometricVerificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String verificationId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      String timestamp,
      bool success,
      double proximityDistance,
      int signalStrength,
      String? failureReason,
      int? attemptCount,
      GeoLocationModel? location});

  @override
  $GeoLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$BiometricVerificationModelImplCopyWithImpl<$Res>
    extends _$BiometricVerificationModelCopyWithImpl<$Res,
        _$BiometricVerificationModelImpl>
    implements _$$BiometricVerificationModelImplCopyWith<$Res> {
  __$$BiometricVerificationModelImplCopyWithImpl(
      _$BiometricVerificationModelImpl _value,
      $Res Function(_$BiometricVerificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? timestamp = null,
    Object? success = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? failureReason = freezed,
    Object? attemptCount = freezed,
    Object? location = freezed,
  }) {
    return _then(_$BiometricVerificationModelImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiometricVerificationModelImpl implements _BiometricVerificationModel {
  const _$BiometricVerificationModelImpl(
      {required this.verificationId,
      required this.patientDeviceId,
      required this.phlebotomistDeviceId,
      required this.timestamp,
      required this.success,
      required this.proximityDistance,
      required this.signalStrength,
      this.failureReason,
      this.attemptCount,
      this.location});

  factory _$BiometricVerificationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BiometricVerificationModelImplFromJson(json);

  @override
  final String verificationId;
  @override
  final String patientDeviceId;
  @override
  final String phlebotomistDeviceId;
  @override
  final String timestamp;
  @override
  final bool success;
  @override
  final double proximityDistance;
  @override
  final int signalStrength;
  @override
  final String? failureReason;
  @override
  final int? attemptCount;
  @override
  final GeoLocationModel? location;

  @override
  String toString() {
    return 'BiometricVerificationModel(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricVerificationModelImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.patientDeviceId, patientDeviceId) ||
                other.patientDeviceId == patientDeviceId) &&
            (identical(other.phlebotomistDeviceId, phlebotomistDeviceId) ||
                other.phlebotomistDeviceId == phlebotomistDeviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.proximityDistance, proximityDistance) ||
                other.proximityDistance == proximityDistance) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.attemptCount, attemptCount) ||
                other.attemptCount == attemptCount) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      verificationId,
      patientDeviceId,
      phlebotomistDeviceId,
      timestamp,
      success,
      proximityDistance,
      signalStrength,
      failureReason,
      attemptCount,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricVerificationModelImplCopyWith<_$BiometricVerificationModelImpl>
      get copyWith => __$$BiometricVerificationModelImplCopyWithImpl<
          _$BiometricVerificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricVerificationModelImplToJson(
      this,
    );
  }
}

abstract class _BiometricVerificationModel
    implements BiometricVerificationModel {
  const factory _BiometricVerificationModel(
      {required final String verificationId,
      required final String patientDeviceId,
      required final String phlebotomistDeviceId,
      required final String timestamp,
      required final bool success,
      required final double proximityDistance,
      required final int signalStrength,
      final String? failureReason,
      final int? attemptCount,
      final GeoLocationModel? location}) = _$BiometricVerificationModelImpl;

  factory _BiometricVerificationModel.fromJson(Map<String, dynamic> json) =
      _$BiometricVerificationModelImpl.fromJson;

  @override
  String get verificationId;
  @override
  String get patientDeviceId;
  @override
  String get phlebotomistDeviceId;
  @override
  String get timestamp;
  @override
  bool get success;
  @override
  double get proximityDistance;
  @override
  int get signalStrength;
  @override
  String? get failureReason;
  @override
  int? get attemptCount;
  @override
  GeoLocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$BiometricVerificationModelImplCopyWith<_$BiometricVerificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
