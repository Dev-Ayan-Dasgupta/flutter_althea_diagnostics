// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleModel {
  String get id;
  String get vialId;
  String get patientAbhaId;
  String get patientName;
  String get orderId;
  List<String> get testIds;
  Map<String, dynamic> get status;
  String get collectionTime;
  SampleIntegrityScoreModel get integrityScore;
  List<SampleEventModel> get chainOfCustody;
  String? get phlebotomistId;
  String? get phlebotomistName;
  String? get labId;
  String? get labName;
  String? get reachedLabTime;
  String? get processingStartTime;
  String? get processingEndTime;
  ColdChainDataModel? get coldChainData;
  BiometricVerificationModel? get biometricVerification;
  PreAnalyticalRiskModel? get preAnalyticalRisk;
  SampleConditionModel? get condition;
  String? get notes;
  List<String> get imageUrls;
  String get createdAt;
  String? get updatedAt;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleModelCopyWith<SampleModel> get copyWith =>
      _$SampleModelCopyWithImpl<SampleModel>(this as SampleModel, _$identity);

  /// Serializes this SampleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vialId, vialId) || other.vialId == vialId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other.testIds, testIds) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.collectionTime, collectionTime) ||
                other.collectionTime == collectionTime) &&
            (identical(other.integrityScore, integrityScore) ||
                other.integrityScore == integrityScore) &&
            const DeepCollectionEquality()
                .equals(other.chainOfCustody, chainOfCustody) &&
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
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vialId,
        patientAbhaId,
        patientName,
        orderId,
        const DeepCollectionEquality().hash(testIds),
        const DeepCollectionEquality().hash(status),
        collectionTime,
        integrityScore,
        const DeepCollectionEquality().hash(chainOfCustody),
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
        const DeepCollectionEquality().hash(imageUrls),
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'SampleModel(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $SampleModelCopyWith<$Res> {
  factory $SampleModelCopyWith(
          SampleModel value, $Res Function(SampleModel) _then) =
      _$SampleModelCopyWithImpl;
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
class _$SampleModelCopyWithImpl<$Res> implements $SampleModelCopyWith<$Res> {
  _$SampleModelCopyWithImpl(this._self, this._then);

  final SampleModel _self;
  final $Res Function(SampleModel) _then;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vialId: null == vialId
          ? _self.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _self.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testIds: null == testIds
          ? _self.testIds
          : testIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      collectionTime: null == collectionTime
          ? _self.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as String,
      integrityScore: null == integrityScore
          ? _self.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScoreModel,
      chainOfCustody: null == chainOfCustody
          ? _self.chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEventModel>,
      phlebotomistId: freezed == phlebotomistId
          ? _self.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String?,
      phlebotomistName: freezed == phlebotomistName
          ? _self.phlebotomistName
          : phlebotomistName // ignore: cast_nullable_to_non_nullable
              as String?,
      labId: freezed == labId
          ? _self.labId
          : labId // ignore: cast_nullable_to_non_nullable
              as String?,
      labName: freezed == labName
          ? _self.labName
          : labName // ignore: cast_nullable_to_non_nullable
              as String?,
      reachedLabTime: freezed == reachedLabTime
          ? _self.reachedLabTime
          : reachedLabTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingStartTime: freezed == processingStartTime
          ? _self.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingEndTime: freezed == processingEndTime
          ? _self.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      coldChainData: freezed == coldChainData
          ? _self.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainDataModel?,
      biometricVerification: freezed == biometricVerification
          ? _self.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerificationModel?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _self.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskModel?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleConditionModel?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _self.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreModelCopyWith<$Res> get integrityScore {
    return $SampleIntegrityScoreModelCopyWith<$Res>(_self.integrityScore,
        (value) {
      return _then(_self.copyWith(integrityScore: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainDataModelCopyWith<$Res>? get coldChainData {
    if (_self.coldChainData == null) {
      return null;
    }

    return $ColdChainDataModelCopyWith<$Res>(_self.coldChainData!, (value) {
      return _then(_self.copyWith(coldChainData: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiometricVerificationModelCopyWith<$Res>? get biometricVerification {
    if (_self.biometricVerification == null) {
      return null;
    }

    return $BiometricVerificationModelCopyWith<$Res>(
        _self.biometricVerification!, (value) {
      return _then(_self.copyWith(biometricVerification: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreAnalyticalRiskModelCopyWith<$Res>? get preAnalyticalRisk {
    if (_self.preAnalyticalRisk == null) {
      return null;
    }

    return $PreAnalyticalRiskModelCopyWith<$Res>(_self.preAnalyticalRisk!,
        (value) {
      return _then(_self.copyWith(preAnalyticalRisk: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleConditionModelCopyWith<$Res>? get condition {
    if (_self.condition == null) {
      return null;
    }

    return $SampleConditionModelCopyWith<$Res>(_self.condition!, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SampleModel].
extension SampleModelPatterns on SampleModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SampleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SampleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SampleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleModel() when $default != null:
        return $default(
            _that.id,
            _that.vialId,
            _that.patientAbhaId,
            _that.patientName,
            _that.orderId,
            _that.testIds,
            _that.status,
            _that.collectionTime,
            _that.integrityScore,
            _that.chainOfCustody,
            _that.phlebotomistId,
            _that.phlebotomistName,
            _that.labId,
            _that.labName,
            _that.reachedLabTime,
            _that.processingStartTime,
            _that.processingEndTime,
            _that.coldChainData,
            _that.biometricVerification,
            _that.preAnalyticalRisk,
            _that.condition,
            _that.notes,
            _that.imageUrls,
            _that.createdAt,
            _that.updatedAt);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleModel():
        return $default(
            _that.id,
            _that.vialId,
            _that.patientAbhaId,
            _that.patientName,
            _that.orderId,
            _that.testIds,
            _that.status,
            _that.collectionTime,
            _that.integrityScore,
            _that.chainOfCustody,
            _that.phlebotomistId,
            _that.phlebotomistName,
            _that.labId,
            _that.labName,
            _that.reachedLabTime,
            _that.processingStartTime,
            _that.processingEndTime,
            _that.coldChainData,
            _that.biometricVerification,
            _that.preAnalyticalRisk,
            _that.condition,
            _that.notes,
            _that.imageUrls,
            _that.createdAt,
            _that.updatedAt);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            String? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleModel() when $default != null:
        return $default(
            _that.id,
            _that.vialId,
            _that.patientAbhaId,
            _that.patientName,
            _that.orderId,
            _that.testIds,
            _that.status,
            _that.collectionTime,
            _that.integrityScore,
            _that.chainOfCustody,
            _that.phlebotomistId,
            _that.phlebotomistName,
            _that.labId,
            _that.labName,
            _that.reachedLabTime,
            _that.processingStartTime,
            _that.processingEndTime,
            _that.coldChainData,
            _that.biometricVerification,
            _that.preAnalyticalRisk,
            _that.condition,
            _that.notes,
            _that.imageUrls,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SampleModel implements SampleModel {
  const _SampleModel(
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
  factory _SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);

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

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleModelCopyWith<_SampleModel> get copyWith =>
      __$SampleModelCopyWithImpl<_SampleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SampleModel(id: $id, vialId: $vialId, patientAbhaId: $patientAbhaId, patientName: $patientName, orderId: $orderId, testIds: $testIds, status: $status, collectionTime: $collectionTime, integrityScore: $integrityScore, chainOfCustody: $chainOfCustody, phlebotomistId: $phlebotomistId, phlebotomistName: $phlebotomistName, labId: $labId, labName: $labName, reachedLabTime: $reachedLabTime, processingStartTime: $processingStartTime, processingEndTime: $processingEndTime, coldChainData: $coldChainData, biometricVerification: $biometricVerification, preAnalyticalRisk: $preAnalyticalRisk, condition: $condition, notes: $notes, imageUrls: $imageUrls, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SampleModelCopyWith<$Res>
    implements $SampleModelCopyWith<$Res> {
  factory _$SampleModelCopyWith(
          _SampleModel value, $Res Function(_SampleModel) _then) =
      __$SampleModelCopyWithImpl;
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
class __$SampleModelCopyWithImpl<$Res> implements _$SampleModelCopyWith<$Res> {
  __$SampleModelCopyWithImpl(this._self, this._then);

  final _SampleModel _self;
  final $Res Function(_SampleModel) _then;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SampleModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vialId: null == vialId
          ? _self.vialId
          : vialId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _self.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testIds: null == testIds
          ? _self._testIds
          : testIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _self._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      collectionTime: null == collectionTime
          ? _self.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as String,
      integrityScore: null == integrityScore
          ? _self.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as SampleIntegrityScoreModel,
      chainOfCustody: null == chainOfCustody
          ? _self._chainOfCustody
          : chainOfCustody // ignore: cast_nullable_to_non_nullable
              as List<SampleEventModel>,
      phlebotomistId: freezed == phlebotomistId
          ? _self.phlebotomistId
          : phlebotomistId // ignore: cast_nullable_to_non_nullable
              as String?,
      phlebotomistName: freezed == phlebotomistName
          ? _self.phlebotomistName
          : phlebotomistName // ignore: cast_nullable_to_non_nullable
              as String?,
      labId: freezed == labId
          ? _self.labId
          : labId // ignore: cast_nullable_to_non_nullable
              as String?,
      labName: freezed == labName
          ? _self.labName
          : labName // ignore: cast_nullable_to_non_nullable
              as String?,
      reachedLabTime: freezed == reachedLabTime
          ? _self.reachedLabTime
          : reachedLabTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingStartTime: freezed == processingStartTime
          ? _self.processingStartTime
          : processingStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      processingEndTime: freezed == processingEndTime
          ? _self.processingEndTime
          : processingEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      coldChainData: freezed == coldChainData
          ? _self.coldChainData
          : coldChainData // ignore: cast_nullable_to_non_nullable
              as ColdChainDataModel?,
      biometricVerification: freezed == biometricVerification
          ? _self.biometricVerification
          : biometricVerification // ignore: cast_nullable_to_non_nullable
              as BiometricVerificationModel?,
      preAnalyticalRisk: freezed == preAnalyticalRisk
          ? _self.preAnalyticalRisk
          : preAnalyticalRisk // ignore: cast_nullable_to_non_nullable
              as PreAnalyticalRiskModel?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as SampleConditionModel?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _self._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreModelCopyWith<$Res> get integrityScore {
    return $SampleIntegrityScoreModelCopyWith<$Res>(_self.integrityScore,
        (value) {
      return _then(_self.copyWith(integrityScore: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainDataModelCopyWith<$Res>? get coldChainData {
    if (_self.coldChainData == null) {
      return null;
    }

    return $ColdChainDataModelCopyWith<$Res>(_self.coldChainData!, (value) {
      return _then(_self.copyWith(coldChainData: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiometricVerificationModelCopyWith<$Res>? get biometricVerification {
    if (_self.biometricVerification == null) {
      return null;
    }

    return $BiometricVerificationModelCopyWith<$Res>(
        _self.biometricVerification!, (value) {
      return _then(_self.copyWith(biometricVerification: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreAnalyticalRiskModelCopyWith<$Res>? get preAnalyticalRisk {
    if (_self.preAnalyticalRisk == null) {
      return null;
    }

    return $PreAnalyticalRiskModelCopyWith<$Res>(_self.preAnalyticalRisk!,
        (value) {
      return _then(_self.copyWith(preAnalyticalRisk: value));
    });
  }

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleConditionModelCopyWith<$Res>? get condition {
    if (_self.condition == null) {
      return null;
    }

    return $SampleConditionModelCopyWith<$Res>(_self.condition!, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }
}

/// @nodoc
mixin _$SampleConditionModel {
  bool get isHemolyzed;
  bool get isClotted;
  bool get isLipemic;
  bool get isIcteric;
  String get volumeStatus;
  String get containerIntegrity;
  String? get notes;

  /// Create a copy of SampleConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleConditionModelCopyWith<SampleConditionModel> get copyWith =>
      _$SampleConditionModelCopyWithImpl<SampleConditionModel>(
          this as SampleConditionModel, _$identity);

  /// Serializes this SampleConditionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleConditionModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHemolyzed, isClotted,
      isLipemic, isIcteric, volumeStatus, containerIntegrity, notes);

  @override
  String toString() {
    return 'SampleConditionModel(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $SampleConditionModelCopyWith<$Res> {
  factory $SampleConditionModelCopyWith(SampleConditionModel value,
          $Res Function(SampleConditionModel) _then) =
      _$SampleConditionModelCopyWithImpl;
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
class _$SampleConditionModelCopyWithImpl<$Res>
    implements $SampleConditionModelCopyWith<$Res> {
  _$SampleConditionModelCopyWithImpl(this._self, this._then);

  final SampleConditionModel _self;
  final $Res Function(SampleConditionModel) _then;

  /// Create a copy of SampleConditionModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      isHemolyzed: null == isHemolyzed
          ? _self.isHemolyzed
          : isHemolyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      isClotted: null == isClotted
          ? _self.isClotted
          : isClotted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLipemic: null == isLipemic
          ? _self.isLipemic
          : isLipemic // ignore: cast_nullable_to_non_nullable
              as bool,
      isIcteric: null == isIcteric
          ? _self.isIcteric
          : isIcteric // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeStatus: null == volumeStatus
          ? _self.volumeStatus
          : volumeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      containerIntegrity: null == containerIntegrity
          ? _self.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SampleConditionModel].
extension SampleConditionModelPatterns on SampleConditionModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SampleConditionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SampleConditionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SampleConditionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isHemolyzed,
            bool isClotted,
            bool isLipemic,
            bool isIcteric,
            String volumeStatus,
            String containerIntegrity,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel() when $default != null:
        return $default(
            _that.isHemolyzed,
            _that.isClotted,
            _that.isLipemic,
            _that.isIcteric,
            _that.volumeStatus,
            _that.containerIntegrity,
            _that.notes);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isHemolyzed,
            bool isClotted,
            bool isLipemic,
            bool isIcteric,
            String volumeStatus,
            String containerIntegrity,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel():
        return $default(
            _that.isHemolyzed,
            _that.isClotted,
            _that.isLipemic,
            _that.isIcteric,
            _that.volumeStatus,
            _that.containerIntegrity,
            _that.notes);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isHemolyzed,
            bool isClotted,
            bool isLipemic,
            bool isIcteric,
            String volumeStatus,
            String containerIntegrity,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleConditionModel() when $default != null:
        return $default(
            _that.isHemolyzed,
            _that.isClotted,
            _that.isLipemic,
            _that.isIcteric,
            _that.volumeStatus,
            _that.containerIntegrity,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SampleConditionModel implements SampleConditionModel {
  const _SampleConditionModel(
      {required this.isHemolyzed,
      required this.isClotted,
      required this.isLipemic,
      required this.isIcteric,
      required this.volumeStatus,
      required this.containerIntegrity,
      this.notes});
  factory _SampleConditionModel.fromJson(Map<String, dynamic> json) =>
      _$SampleConditionModelFromJson(json);

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

  /// Create a copy of SampleConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleConditionModelCopyWith<_SampleConditionModel> get copyWith =>
      __$SampleConditionModelCopyWithImpl<_SampleConditionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleConditionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleConditionModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHemolyzed, isClotted,
      isLipemic, isIcteric, volumeStatus, containerIntegrity, notes);

  @override
  String toString() {
    return 'SampleConditionModel(isHemolyzed: $isHemolyzed, isClotted: $isClotted, isLipemic: $isLipemic, isIcteric: $isIcteric, volumeStatus: $volumeStatus, containerIntegrity: $containerIntegrity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$SampleConditionModelCopyWith<$Res>
    implements $SampleConditionModelCopyWith<$Res> {
  factory _$SampleConditionModelCopyWith(_SampleConditionModel value,
          $Res Function(_SampleConditionModel) _then) =
      __$SampleConditionModelCopyWithImpl;
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
class __$SampleConditionModelCopyWithImpl<$Res>
    implements _$SampleConditionModelCopyWith<$Res> {
  __$SampleConditionModelCopyWithImpl(this._self, this._then);

  final _SampleConditionModel _self;
  final $Res Function(_SampleConditionModel) _then;

  /// Create a copy of SampleConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isHemolyzed = null,
    Object? isClotted = null,
    Object? isLipemic = null,
    Object? isIcteric = null,
    Object? volumeStatus = null,
    Object? containerIntegrity = null,
    Object? notes = freezed,
  }) {
    return _then(_SampleConditionModel(
      isHemolyzed: null == isHemolyzed
          ? _self.isHemolyzed
          : isHemolyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      isClotted: null == isClotted
          ? _self.isClotted
          : isClotted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLipemic: null == isLipemic
          ? _self.isLipemic
          : isLipemic // ignore: cast_nullable_to_non_nullable
              as bool,
      isIcteric: null == isIcteric
          ? _self.isIcteric
          : isIcteric // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeStatus: null == volumeStatus
          ? _self.volumeStatus
          : volumeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      containerIntegrity: null == containerIntegrity
          ? _self.containerIntegrity
          : containerIntegrity // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SampleEventModel {
  String get id;
  String get sampleId;
  String get eventType;
  String get actorId;
  String get actorName;
  String get actorRole;
  String get timestamp;
  GeoLocationModel get location;
  String get eventHash;
  String? get previousEventHash;
  EventMetadataModel? get metadata;
  String? get notes;

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleEventModelCopyWith<SampleEventModel> get copyWith =>
      _$SampleEventModelCopyWithImpl<SampleEventModel>(
          this as SampleEventModel, _$identity);

  /// Serializes this SampleEventModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleEventModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SampleEventModel(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $SampleEventModelCopyWith<$Res> {
  factory $SampleEventModelCopyWith(
          SampleEventModel value, $Res Function(SampleEventModel) _then) =
      _$SampleEventModelCopyWithImpl;
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
class _$SampleEventModelCopyWithImpl<$Res>
    implements $SampleEventModelCopyWith<$Res> {
  _$SampleEventModelCopyWithImpl(this._self, this._then);

  final SampleEventModel _self;
  final $Res Function(SampleEventModel) _then;

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _self.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _self.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _self.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel,
      eventHash: null == eventHash
          ? _self.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _self.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadataModel?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res> get location {
    return $GeoLocationModelCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventMetadataModelCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $EventMetadataModelCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SampleEventModel].
extension SampleEventModelPatterns on SampleEventModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SampleEventModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SampleEventModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SampleEventModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel() when $default != null:
        return $default(
            _that.id,
            _that.sampleId,
            _that.eventType,
            _that.actorId,
            _that.actorName,
            _that.actorRole,
            _that.timestamp,
            _that.location,
            _that.eventHash,
            _that.previousEventHash,
            _that.metadata,
            _that.notes);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel():
        return $default(
            _that.id,
            _that.sampleId,
            _that.eventType,
            _that.actorId,
            _that.actorName,
            _that.actorRole,
            _that.timestamp,
            _that.location,
            _that.eventHash,
            _that.previousEventHash,
            _that.metadata,
            _that.notes);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleEventModel() when $default != null:
        return $default(
            _that.id,
            _that.sampleId,
            _that.eventType,
            _that.actorId,
            _that.actorName,
            _that.actorRole,
            _that.timestamp,
            _that.location,
            _that.eventHash,
            _that.previousEventHash,
            _that.metadata,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SampleEventModel implements SampleEventModel {
  const _SampleEventModel(
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
  factory _SampleEventModel.fromJson(Map<String, dynamic> json) =>
      _$SampleEventModelFromJson(json);

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

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleEventModelCopyWith<_SampleEventModel> get copyWith =>
      __$SampleEventModelCopyWithImpl<_SampleEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleEventModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleEventModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SampleEventModel(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$SampleEventModelCopyWith<$Res>
    implements $SampleEventModelCopyWith<$Res> {
  factory _$SampleEventModelCopyWith(
          _SampleEventModel value, $Res Function(_SampleEventModel) _then) =
      __$SampleEventModelCopyWithImpl;
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
class __$SampleEventModelCopyWithImpl<$Res>
    implements _$SampleEventModelCopyWith<$Res> {
  __$SampleEventModelCopyWithImpl(this._self, this._then);

  final _SampleEventModel _self;
  final $Res Function(_SampleEventModel) _then;

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SampleEventModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _self.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _self.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _self.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel,
      eventHash: null == eventHash
          ? _self.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _self.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadataModel?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res> get location {
    return $GeoLocationModelCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of SampleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventMetadataModelCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $EventMetadataModelCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
mixin _$GeoLocationModel {
  double get latitude;
  double get longitude;
  double? get altitude;
  double? get accuracy;
  String? get timestamp;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<GeoLocationModel> get copyWith =>
      _$GeoLocationModelCopyWithImpl<GeoLocationModel>(
          this as GeoLocationModel, _$identity);

  /// Serializes this GeoLocationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeoLocationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, altitude, accuracy, timestamp);

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class $GeoLocationModelCopyWith<$Res> {
  factory $GeoLocationModelCopyWith(
          GeoLocationModel value, $Res Function(GeoLocationModel) _then) =
      _$GeoLocationModelCopyWithImpl;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double? altitude,
      double? accuracy,
      String? timestamp});
}

/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._self, this._then);

  final GeoLocationModel _self;
  final $Res Function(GeoLocationModel) _then;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _self.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _self.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeoLocationModel].
extension GeoLocationModelPatterns on GeoLocationModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GeoLocationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GeoLocationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GeoLocationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double latitude, double longitude, double? altitude,
            double? accuracy, String? timestamp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel() when $default != null:
        return $default(_that.latitude, _that.longitude, _that.altitude,
            _that.accuracy, _that.timestamp);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double latitude, double longitude, double? altitude,
            double? accuracy, String? timestamp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel():
        return $default(_that.latitude, _that.longitude, _that.altitude,
            _that.accuracy, _that.timestamp);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double latitude, double longitude, double? altitude,
            double? accuracy, String? timestamp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeoLocationModel() when $default != null:
        return $default(_that.latitude, _that.longitude, _that.altitude,
            _that.accuracy, _that.timestamp);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeoLocationModel implements GeoLocationModel {
  const _GeoLocationModel(
      {required this.latitude,
      required this.longitude,
      this.altitude,
      this.accuracy,
      this.timestamp});
  factory _GeoLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationModelFromJson(json);

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

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoLocationModelCopyWith<_GeoLocationModel> get copyWith =>
      __$GeoLocationModelCopyWithImpl<_GeoLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeoLocationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoLocationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, altitude, accuracy, timestamp);

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class _$GeoLocationModelCopyWith<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  factory _$GeoLocationModelCopyWith(
          _GeoLocationModel value, $Res Function(_GeoLocationModel) _then) =
      __$GeoLocationModelCopyWithImpl;
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
class __$GeoLocationModelCopyWithImpl<$Res>
    implements _$GeoLocationModelCopyWith<$Res> {
  __$GeoLocationModelCopyWithImpl(this._self, this._then);

  final _GeoLocationModel _self;
  final $Res Function(_GeoLocationModel) _then;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_GeoLocationModel(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _self.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _self.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$EventMetadataModel {
  double? get temperature;
  double? get humidity;
  String? get deviceId;
  String? get appVersion;
  String? get bleDeviceId;
  bool? get biometricSuccess;
  String? get barcodeValue;
  Map<String, dynamic>? get additionalData;

  /// Create a copy of EventMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventMetadataModelCopyWith<EventMetadataModel> get copyWith =>
      _$EventMetadataModelCopyWithImpl<EventMetadataModel>(
          this as EventMetadataModel, _$identity);

  /// Serializes this EventMetadataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventMetadataModel &&
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
                .equals(other.additionalData, additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(additionalData));

  @override
  String toString() {
    return 'EventMetadataModel(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
  }
}

/// @nodoc
abstract mixin class $EventMetadataModelCopyWith<$Res> {
  factory $EventMetadataModelCopyWith(
          EventMetadataModel value, $Res Function(EventMetadataModel) _then) =
      _$EventMetadataModelCopyWithImpl;
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
class _$EventMetadataModelCopyWithImpl<$Res>
    implements $EventMetadataModelCopyWith<$Res> {
  _$EventMetadataModelCopyWithImpl(this._self, this._then);

  final EventMetadataModel _self;
  final $Res Function(EventMetadataModel) _then;

  /// Create a copy of EventMetadataModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _self.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _self.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _self.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _self.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EventMetadataModel].
extension EventMetadataModelPatterns on EventMetadataModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventMetadataModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventMetadataModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventMetadataModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double? temperature,
            double? humidity,
            String? deviceId,
            String? appVersion,
            String? bleDeviceId,
            bool? biometricSuccess,
            String? barcodeValue,
            Map<String, dynamic>? additionalData)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel() when $default != null:
        return $default(
            _that.temperature,
            _that.humidity,
            _that.deviceId,
            _that.appVersion,
            _that.bleDeviceId,
            _that.biometricSuccess,
            _that.barcodeValue,
            _that.additionalData);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double? temperature,
            double? humidity,
            String? deviceId,
            String? appVersion,
            String? bleDeviceId,
            bool? biometricSuccess,
            String? barcodeValue,
            Map<String, dynamic>? additionalData)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel():
        return $default(
            _that.temperature,
            _that.humidity,
            _that.deviceId,
            _that.appVersion,
            _that.bleDeviceId,
            _that.biometricSuccess,
            _that.barcodeValue,
            _that.additionalData);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double? temperature,
            double? humidity,
            String? deviceId,
            String? appVersion,
            String? bleDeviceId,
            bool? biometricSuccess,
            String? barcodeValue,
            Map<String, dynamic>? additionalData)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EventMetadataModel() when $default != null:
        return $default(
            _that.temperature,
            _that.humidity,
            _that.deviceId,
            _that.appVersion,
            _that.bleDeviceId,
            _that.biometricSuccess,
            _that.barcodeValue,
            _that.additionalData);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EventMetadataModel implements EventMetadataModel {
  const _EventMetadataModel(
      {this.temperature,
      this.humidity,
      this.deviceId,
      this.appVersion,
      this.bleDeviceId,
      this.biometricSuccess,
      this.barcodeValue,
      final Map<String, dynamic>? additionalData})
      : _additionalData = additionalData;
  factory _EventMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$EventMetadataModelFromJson(json);

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

  /// Create a copy of EventMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventMetadataModelCopyWith<_EventMetadataModel> get copyWith =>
      __$EventMetadataModelCopyWithImpl<_EventMetadataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EventMetadataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventMetadataModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'EventMetadataModel(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
  }
}

/// @nodoc
abstract mixin class _$EventMetadataModelCopyWith<$Res>
    implements $EventMetadataModelCopyWith<$Res> {
  factory _$EventMetadataModelCopyWith(
          _EventMetadataModel value, $Res Function(_EventMetadataModel) _then) =
      __$EventMetadataModelCopyWithImpl;
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
class __$EventMetadataModelCopyWithImpl<$Res>
    implements _$EventMetadataModelCopyWith<$Res> {
  __$EventMetadataModelCopyWithImpl(this._self, this._then);

  final _EventMetadataModel _self;
  final $Res Function(_EventMetadataModel) _then;

  /// Create a copy of EventMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_EventMetadataModel(
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _self.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _self.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _self.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _self._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$BiometricVerificationModel {
  String get verificationId;
  String get patientDeviceId;
  String get phlebotomistDeviceId;
  String get timestamp;
  bool get success;
  double get proximityDistance;
  int get signalStrength;
  String? get failureReason;
  int? get attemptCount;
  GeoLocationModel? get location;

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BiometricVerificationModelCopyWith<BiometricVerificationModel>
      get copyWith =>
          _$BiometricVerificationModelCopyWithImpl<BiometricVerificationModel>(
              this as BiometricVerificationModel, _$identity);

  /// Serializes this BiometricVerificationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BiometricVerificationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'BiometricVerificationModel(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }
}

/// @nodoc
abstract mixin class $BiometricVerificationModelCopyWith<$Res> {
  factory $BiometricVerificationModelCopyWith(BiometricVerificationModel value,
          $Res Function(BiometricVerificationModel) _then) =
      _$BiometricVerificationModelCopyWithImpl;
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
class _$BiometricVerificationModelCopyWithImpl<$Res>
    implements $BiometricVerificationModelCopyWith<$Res> {
  _$BiometricVerificationModelCopyWithImpl(this._self, this._then);

  final BiometricVerificationModel _self;
  final $Res Function(BiometricVerificationModel) _then;

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      verificationId: null == verificationId
          ? _self.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _self.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _self.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _self.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _self.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
    ));
  }

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BiometricVerificationModel].
extension BiometricVerificationModelPatterns on BiometricVerificationModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BiometricVerificationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BiometricVerificationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BiometricVerificationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            String timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocationModel? location)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel() when $default != null:
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            String timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocationModel? location)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel():
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            String timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocationModel? location)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerificationModel() when $default != null:
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BiometricVerificationModel implements BiometricVerificationModel {
  const _BiometricVerificationModel(
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
  factory _BiometricVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$BiometricVerificationModelFromJson(json);

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

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BiometricVerificationModelCopyWith<_BiometricVerificationModel>
      get copyWith => __$BiometricVerificationModelCopyWithImpl<
          _BiometricVerificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BiometricVerificationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BiometricVerificationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'BiometricVerificationModel(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$BiometricVerificationModelCopyWith<$Res>
    implements $BiometricVerificationModelCopyWith<$Res> {
  factory _$BiometricVerificationModelCopyWith(
          _BiometricVerificationModel value,
          $Res Function(_BiometricVerificationModel) _then) =
      __$BiometricVerificationModelCopyWithImpl;
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
class __$BiometricVerificationModelCopyWithImpl<$Res>
    implements _$BiometricVerificationModelCopyWith<$Res> {
  __$BiometricVerificationModelCopyWithImpl(this._self, this._then);

  final _BiometricVerificationModel _self;
  final $Res Function(_BiometricVerificationModel) _then;

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_BiometricVerificationModel(
      verificationId: null == verificationId
          ? _self.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _self.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _self.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _self.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _self.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
    ));
  }

  /// Create a copy of BiometricVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
