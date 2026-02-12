// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabResult {
  String get id;
  String get sampleId;
  String get patientAbhaId;
  String get orderId;
  List<TestResult> get testResults;
  ResultStatus get status;
  String? get pathologistId;
  String? get pathologistName;
  String? get clinicalInterpretation;
  String? get digitalSignature;
  DateTime? get signedOffAt;
  DateTime get createdAt;
  DateTime? get updatedAt;
  String? get pdfUrl;
  bool? get pushedToAbha;
  DateTime? get abhaPushTime;

  /// Create a copy of LabResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabResultCopyWith<LabResult> get copyWith =>
      _$LabResultCopyWithImpl<LabResult>(this as LabResult, _$identity);

  /// Serializes this LabResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other.testResults, testResults) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pathologistId, pathologistId) ||
                other.pathologistId == pathologistId) &&
            (identical(other.pathologistName, pathologistName) ||
                other.pathologistName == pathologistName) &&
            (identical(other.clinicalInterpretation, clinicalInterpretation) ||
                other.clinicalInterpretation == clinicalInterpretation) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature) &&
            (identical(other.signedOffAt, signedOffAt) ||
                other.signedOffAt == signedOffAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.pushedToAbha, pushedToAbha) ||
                other.pushedToAbha == pushedToAbha) &&
            (identical(other.abhaPushTime, abhaPushTime) ||
                other.abhaPushTime == abhaPushTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sampleId,
      patientAbhaId,
      orderId,
      const DeepCollectionEquality().hash(testResults),
      status,
      pathologistId,
      pathologistName,
      clinicalInterpretation,
      digitalSignature,
      signedOffAt,
      createdAt,
      updatedAt,
      pdfUrl,
      pushedToAbha,
      abhaPushTime);

  @override
  String toString() {
    return 'LabResult(id: $id, sampleId: $sampleId, patientAbhaId: $patientAbhaId, orderId: $orderId, testResults: $testResults, status: $status, pathologistId: $pathologistId, pathologistName: $pathologistName, clinicalInterpretation: $clinicalInterpretation, digitalSignature: $digitalSignature, signedOffAt: $signedOffAt, createdAt: $createdAt, updatedAt: $updatedAt, pdfUrl: $pdfUrl, pushedToAbha: $pushedToAbha, abhaPushTime: $abhaPushTime)';
  }
}

/// @nodoc
abstract mixin class $LabResultCopyWith<$Res> {
  factory $LabResultCopyWith(LabResult value, $Res Function(LabResult) _then) =
      _$LabResultCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String sampleId,
      String patientAbhaId,
      String orderId,
      List<TestResult> testResults,
      ResultStatus status,
      String? pathologistId,
      String? pathologistName,
      String? clinicalInterpretation,
      String? digitalSignature,
      DateTime? signedOffAt,
      DateTime createdAt,
      DateTime? updatedAt,
      String? pdfUrl,
      bool? pushedToAbha,
      DateTime? abhaPushTime});
}

/// @nodoc
class _$LabResultCopyWithImpl<$Res> implements $LabResultCopyWith<$Res> {
  _$LabResultCopyWithImpl(this._self, this._then);

  final LabResult _self;
  final $Res Function(LabResult) _then;

  /// Create a copy of LabResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? patientAbhaId = null,
    Object? orderId = null,
    Object? testResults = null,
    Object? status = null,
    Object? pathologistId = freezed,
    Object? pathologistName = freezed,
    Object? clinicalInterpretation = freezed,
    Object? digitalSignature = freezed,
    Object? signedOffAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? pdfUrl = freezed,
    Object? pushedToAbha = freezed,
    Object? abhaPushTime = freezed,
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
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testResults: null == testResults
          ? _self.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      pathologistId: freezed == pathologistId
          ? _self.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String?,
      pathologistName: freezed == pathologistName
          ? _self.pathologistName
          : pathologistName // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalInterpretation: freezed == clinicalInterpretation
          ? _self.clinicalInterpretation
          : clinicalInterpretation // ignore: cast_nullable_to_non_nullable
              as String?,
      digitalSignature: freezed == digitalSignature
          ? _self.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      signedOffAt: freezed == signedOffAt
          ? _self.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pdfUrl: freezed == pdfUrl
          ? _self.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedToAbha: freezed == pushedToAbha
          ? _self.pushedToAbha
          : pushedToAbha // ignore: cast_nullable_to_non_nullable
              as bool?,
      abhaPushTime: freezed == abhaPushTime
          ? _self.abhaPushTime
          : abhaPushTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LabResult].
extension LabResultPatterns on LabResult {
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
    TResult Function(_LabResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabResult() when $default != null:
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
    TResult Function(_LabResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabResult():
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
    TResult? Function(_LabResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabResult() when $default != null:
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
            String patientAbhaId,
            String orderId,
            List<TestResult> testResults,
            ResultStatus status,
            String? pathologistId,
            String? pathologistName,
            String? clinicalInterpretation,
            String? digitalSignature,
            DateTime? signedOffAt,
            DateTime createdAt,
            DateTime? updatedAt,
            String? pdfUrl,
            bool? pushedToAbha,
            DateTime? abhaPushTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabResult() when $default != null:
        return $default(
            _that.id,
            _that.sampleId,
            _that.patientAbhaId,
            _that.orderId,
            _that.testResults,
            _that.status,
            _that.pathologistId,
            _that.pathologistName,
            _that.clinicalInterpretation,
            _that.digitalSignature,
            _that.signedOffAt,
            _that.createdAt,
            _that.updatedAt,
            _that.pdfUrl,
            _that.pushedToAbha,
            _that.abhaPushTime);
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
            String patientAbhaId,
            String orderId,
            List<TestResult> testResults,
            ResultStatus status,
            String? pathologistId,
            String? pathologistName,
            String? clinicalInterpretation,
            String? digitalSignature,
            DateTime? signedOffAt,
            DateTime createdAt,
            DateTime? updatedAt,
            String? pdfUrl,
            bool? pushedToAbha,
            DateTime? abhaPushTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabResult():
        return $default(
            _that.id,
            _that.sampleId,
            _that.patientAbhaId,
            _that.orderId,
            _that.testResults,
            _that.status,
            _that.pathologistId,
            _that.pathologistName,
            _that.clinicalInterpretation,
            _that.digitalSignature,
            _that.signedOffAt,
            _that.createdAt,
            _that.updatedAt,
            _that.pdfUrl,
            _that.pushedToAbha,
            _that.abhaPushTime);
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
            String patientAbhaId,
            String orderId,
            List<TestResult> testResults,
            ResultStatus status,
            String? pathologistId,
            String? pathologistName,
            String? clinicalInterpretation,
            String? digitalSignature,
            DateTime? signedOffAt,
            DateTime createdAt,
            DateTime? updatedAt,
            String? pdfUrl,
            bool? pushedToAbha,
            DateTime? abhaPushTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabResult() when $default != null:
        return $default(
            _that.id,
            _that.sampleId,
            _that.patientAbhaId,
            _that.orderId,
            _that.testResults,
            _that.status,
            _that.pathologistId,
            _that.pathologistName,
            _that.clinicalInterpretation,
            _that.digitalSignature,
            _that.signedOffAt,
            _that.createdAt,
            _that.updatedAt,
            _that.pdfUrl,
            _that.pushedToAbha,
            _that.abhaPushTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LabResult implements LabResult {
  const _LabResult(
      {required this.id,
      required this.sampleId,
      required this.patientAbhaId,
      required this.orderId,
      required final List<TestResult> testResults,
      required this.status,
      this.pathologistId,
      this.pathologistName,
      this.clinicalInterpretation,
      this.digitalSignature,
      this.signedOffAt,
      required this.createdAt,
      this.updatedAt,
      this.pdfUrl,
      this.pushedToAbha,
      this.abhaPushTime})
      : _testResults = testResults;
  factory _LabResult.fromJson(Map<String, dynamic> json) =>
      _$LabResultFromJson(json);

  @override
  final String id;
  @override
  final String sampleId;
  @override
  final String patientAbhaId;
  @override
  final String orderId;
  final List<TestResult> _testResults;
  @override
  List<TestResult> get testResults {
    if (_testResults is EqualUnmodifiableListView) return _testResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testResults);
  }

  @override
  final ResultStatus status;
  @override
  final String? pathologistId;
  @override
  final String? pathologistName;
  @override
  final String? clinicalInterpretation;
  @override
  final String? digitalSignature;
  @override
  final DateTime? signedOffAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? pdfUrl;
  @override
  final bool? pushedToAbha;
  @override
  final DateTime? abhaPushTime;

  /// Create a copy of LabResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabResultCopyWith<_LabResult> get copyWith =>
      __$LabResultCopyWithImpl<_LabResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LabResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._testResults, _testResults) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pathologistId, pathologistId) ||
                other.pathologistId == pathologistId) &&
            (identical(other.pathologistName, pathologistName) ||
                other.pathologistName == pathologistName) &&
            (identical(other.clinicalInterpretation, clinicalInterpretation) ||
                other.clinicalInterpretation == clinicalInterpretation) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature) &&
            (identical(other.signedOffAt, signedOffAt) ||
                other.signedOffAt == signedOffAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.pushedToAbha, pushedToAbha) ||
                other.pushedToAbha == pushedToAbha) &&
            (identical(other.abhaPushTime, abhaPushTime) ||
                other.abhaPushTime == abhaPushTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sampleId,
      patientAbhaId,
      orderId,
      const DeepCollectionEquality().hash(_testResults),
      status,
      pathologistId,
      pathologistName,
      clinicalInterpretation,
      digitalSignature,
      signedOffAt,
      createdAt,
      updatedAt,
      pdfUrl,
      pushedToAbha,
      abhaPushTime);

  @override
  String toString() {
    return 'LabResult(id: $id, sampleId: $sampleId, patientAbhaId: $patientAbhaId, orderId: $orderId, testResults: $testResults, status: $status, pathologistId: $pathologistId, pathologistName: $pathologistName, clinicalInterpretation: $clinicalInterpretation, digitalSignature: $digitalSignature, signedOffAt: $signedOffAt, createdAt: $createdAt, updatedAt: $updatedAt, pdfUrl: $pdfUrl, pushedToAbha: $pushedToAbha, abhaPushTime: $abhaPushTime)';
  }
}

/// @nodoc
abstract mixin class _$LabResultCopyWith<$Res>
    implements $LabResultCopyWith<$Res> {
  factory _$LabResultCopyWith(
          _LabResult value, $Res Function(_LabResult) _then) =
      __$LabResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String sampleId,
      String patientAbhaId,
      String orderId,
      List<TestResult> testResults,
      ResultStatus status,
      String? pathologistId,
      String? pathologistName,
      String? clinicalInterpretation,
      String? digitalSignature,
      DateTime? signedOffAt,
      DateTime createdAt,
      DateTime? updatedAt,
      String? pdfUrl,
      bool? pushedToAbha,
      DateTime? abhaPushTime});
}

/// @nodoc
class __$LabResultCopyWithImpl<$Res> implements _$LabResultCopyWith<$Res> {
  __$LabResultCopyWithImpl(this._self, this._then);

  final _LabResult _self;
  final $Res Function(_LabResult) _then;

  /// Create a copy of LabResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? patientAbhaId = null,
    Object? orderId = null,
    Object? testResults = null,
    Object? status = null,
    Object? pathologistId = freezed,
    Object? pathologistName = freezed,
    Object? clinicalInterpretation = freezed,
    Object? digitalSignature = freezed,
    Object? signedOffAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? pdfUrl = freezed,
    Object? pushedToAbha = freezed,
    Object? abhaPushTime = freezed,
  }) {
    return _then(_LabResult(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testResults: null == testResults
          ? _self._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      pathologistId: freezed == pathologistId
          ? _self.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String?,
      pathologistName: freezed == pathologistName
          ? _self.pathologistName
          : pathologistName // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalInterpretation: freezed == clinicalInterpretation
          ? _self.clinicalInterpretation
          : clinicalInterpretation // ignore: cast_nullable_to_non_nullable
              as String?,
      digitalSignature: freezed == digitalSignature
          ? _self.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      signedOffAt: freezed == signedOffAt
          ? _self.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pdfUrl: freezed == pdfUrl
          ? _self.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedToAbha: freezed == pushedToAbha
          ? _self.pushedToAbha
          : pushedToAbha // ignore: cast_nullable_to_non_nullable
              as bool?,
      abhaPushTime: freezed == abhaPushTime
          ? _self.abhaPushTime
          : abhaPushTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$TestResult {
  String get testId;
  String get testName;
  String get loincCode; // LOINC standard code
  List<ParameterResult> get parameters;
  String? get methodology;
  String? get specimenType;
  DateTime? get analyzedAt;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestResultCopyWith<TestResult> get copyWith =>
      _$TestResultCopyWithImpl<TestResult>(this as TestResult, _$identity);

  /// Serializes this TestResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestResult &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.loincCode, loincCode) ||
                other.loincCode == loincCode) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            (identical(other.specimenType, specimenType) ||
                other.specimenType == specimenType) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      testId,
      testName,
      loincCode,
      const DeepCollectionEquality().hash(parameters),
      methodology,
      specimenType,
      analyzedAt);

  @override
  String toString() {
    return 'TestResult(testId: $testId, testName: $testName, loincCode: $loincCode, parameters: $parameters, methodology: $methodology, specimenType: $specimenType, analyzedAt: $analyzedAt)';
  }
}

/// @nodoc
abstract mixin class $TestResultCopyWith<$Res> {
  factory $TestResultCopyWith(
          TestResult value, $Res Function(TestResult) _then) =
      _$TestResultCopyWithImpl;
  @useResult
  $Res call(
      {String testId,
      String testName,
      String loincCode,
      List<ParameterResult> parameters,
      String? methodology,
      String? specimenType,
      DateTime? analyzedAt});
}

/// @nodoc
class _$TestResultCopyWithImpl<$Res> implements $TestResultCopyWith<$Res> {
  _$TestResultCopyWithImpl(this._self, this._then);

  final TestResult _self;
  final $Res Function(TestResult) _then;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testName = null,
    Object? loincCode = null,
    Object? parameters = null,
    Object? methodology = freezed,
    Object? specimenType = freezed,
    Object? analyzedAt = freezed,
  }) {
    return _then(_self.copyWith(
      testId: null == testId
          ? _self.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _self.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _self.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParameterResult>,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      specimenType: freezed == specimenType
          ? _self.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzedAt: freezed == analyzedAt
          ? _self.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestResult].
extension TestResultPatterns on TestResult {
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
    TResult Function(_TestResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestResult() when $default != null:
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
    TResult Function(_TestResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestResult():
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
    TResult? Function(_TestResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestResult() when $default != null:
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
            String testId,
            String testName,
            String loincCode,
            List<ParameterResult> parameters,
            String? methodology,
            String? specimenType,
            DateTime? analyzedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestResult() when $default != null:
        return $default(
            _that.testId,
            _that.testName,
            _that.loincCode,
            _that.parameters,
            _that.methodology,
            _that.specimenType,
            _that.analyzedAt);
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
            String testId,
            String testName,
            String loincCode,
            List<ParameterResult> parameters,
            String? methodology,
            String? specimenType,
            DateTime? analyzedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestResult():
        return $default(
            _that.testId,
            _that.testName,
            _that.loincCode,
            _that.parameters,
            _that.methodology,
            _that.specimenType,
            _that.analyzedAt);
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
            String testId,
            String testName,
            String loincCode,
            List<ParameterResult> parameters,
            String? methodology,
            String? specimenType,
            DateTime? analyzedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestResult() when $default != null:
        return $default(
            _that.testId,
            _that.testName,
            _that.loincCode,
            _that.parameters,
            _that.methodology,
            _that.specimenType,
            _that.analyzedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestResult implements TestResult {
  const _TestResult(
      {required this.testId,
      required this.testName,
      required this.loincCode,
      required final List<ParameterResult> parameters,
      this.methodology,
      this.specimenType,
      this.analyzedAt})
      : _parameters = parameters;
  factory _TestResult.fromJson(Map<String, dynamic> json) =>
      _$TestResultFromJson(json);

  @override
  final String testId;
  @override
  final String testName;
  @override
  final String loincCode;
// LOINC standard code
  final List<ParameterResult> _parameters;
// LOINC standard code
  @override
  List<ParameterResult> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  final String? methodology;
  @override
  final String? specimenType;
  @override
  final DateTime? analyzedAt;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestResultCopyWith<_TestResult> get copyWith =>
      __$TestResultCopyWithImpl<_TestResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestResult &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.loincCode, loincCode) ||
                other.loincCode == loincCode) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            (identical(other.specimenType, specimenType) ||
                other.specimenType == specimenType) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      testId,
      testName,
      loincCode,
      const DeepCollectionEquality().hash(_parameters),
      methodology,
      specimenType,
      analyzedAt);

  @override
  String toString() {
    return 'TestResult(testId: $testId, testName: $testName, loincCode: $loincCode, parameters: $parameters, methodology: $methodology, specimenType: $specimenType, analyzedAt: $analyzedAt)';
  }
}

/// @nodoc
abstract mixin class _$TestResultCopyWith<$Res>
    implements $TestResultCopyWith<$Res> {
  factory _$TestResultCopyWith(
          _TestResult value, $Res Function(_TestResult) _then) =
      __$TestResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String testId,
      String testName,
      String loincCode,
      List<ParameterResult> parameters,
      String? methodology,
      String? specimenType,
      DateTime? analyzedAt});
}

/// @nodoc
class __$TestResultCopyWithImpl<$Res> implements _$TestResultCopyWith<$Res> {
  __$TestResultCopyWithImpl(this._self, this._then);

  final _TestResult _self;
  final $Res Function(_TestResult) _then;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? testId = null,
    Object? testName = null,
    Object? loincCode = null,
    Object? parameters = null,
    Object? methodology = freezed,
    Object? specimenType = freezed,
    Object? analyzedAt = freezed,
  }) {
    return _then(_TestResult(
      testId: null == testId
          ? _self.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _self.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _self.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParameterResult>,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      specimenType: freezed == specimenType
          ? _self.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzedAt: freezed == analyzedAt
          ? _self.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$ParameterResult {
  String get parameterId;
  String get parameterName;
  String get loincCode;
  ResultValue get value;
  String get unit;
  ReferenceRange get referenceRange;
  ResultFlag get flag;
  String? get notes;
  List<double>? get historicalValues; // For sparkline
  bool? get requiresDoubleEntry;
  String? get verifiedValue;
  bool? get isVerified;

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParameterResultCopyWith<ParameterResult> get copyWith =>
      _$ParameterResultCopyWithImpl<ParameterResult>(
          this as ParameterResult, _$identity);

  /// Serializes this ParameterResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParameterResult &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.loincCode, loincCode) ||
                other.loincCode == loincCode) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.referenceRange, referenceRange) ||
                other.referenceRange == referenceRange) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.historicalValues, historicalValues) &&
            (identical(other.requiresDoubleEntry, requiresDoubleEntry) ||
                other.requiresDoubleEntry == requiresDoubleEntry) &&
            (identical(other.verifiedValue, verifiedValue) ||
                other.verifiedValue == verifiedValue) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parameterId,
      parameterName,
      loincCode,
      value,
      unit,
      referenceRange,
      flag,
      notes,
      const DeepCollectionEquality().hash(historicalValues),
      requiresDoubleEntry,
      verifiedValue,
      isVerified);

  @override
  String toString() {
    return 'ParameterResult(parameterId: $parameterId, parameterName: $parameterName, loincCode: $loincCode, value: $value, unit: $unit, referenceRange: $referenceRange, flag: $flag, notes: $notes, historicalValues: $historicalValues, requiresDoubleEntry: $requiresDoubleEntry, verifiedValue: $verifiedValue, isVerified: $isVerified)';
  }
}

/// @nodoc
abstract mixin class $ParameterResultCopyWith<$Res> {
  factory $ParameterResultCopyWith(
          ParameterResult value, $Res Function(ParameterResult) _then) =
      _$ParameterResultCopyWithImpl;
  @useResult
  $Res call(
      {String parameterId,
      String parameterName,
      String loincCode,
      ResultValue value,
      String unit,
      ReferenceRange referenceRange,
      ResultFlag flag,
      String? notes,
      List<double>? historicalValues,
      bool? requiresDoubleEntry,
      String? verifiedValue,
      bool? isVerified});

  $ResultValueCopyWith<$Res> get value;
  $ReferenceRangeCopyWith<$Res> get referenceRange;
}

/// @nodoc
class _$ParameterResultCopyWithImpl<$Res>
    implements $ParameterResultCopyWith<$Res> {
  _$ParameterResultCopyWithImpl(this._self, this._then);

  final ParameterResult _self;
  final $Res Function(ParameterResult) _then;

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterId = null,
    Object? parameterName = null,
    Object? loincCode = null,
    Object? value = null,
    Object? unit = null,
    Object? referenceRange = null,
    Object? flag = null,
    Object? notes = freezed,
    Object? historicalValues = freezed,
    Object? requiresDoubleEntry = freezed,
    Object? verifiedValue = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_self.copyWith(
      parameterId: null == parameterId
          ? _self.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _self.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _self.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: null == referenceRange
          ? _self.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as ReferenceRange,
      flag: null == flag
          ? _self.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as ResultFlag,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      historicalValues: freezed == historicalValues
          ? _self.historicalValues
          : historicalValues // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      requiresDoubleEntry: freezed == requiresDoubleEntry
          ? _self.requiresDoubleEntry
          : requiresDoubleEntry // ignore: cast_nullable_to_non_nullable
              as bool?,
      verifiedValue: freezed == verifiedValue
          ? _self.verifiedValue
          : verifiedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultValueCopyWith<$Res> get value {
    return $ResultValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceRangeCopyWith<$Res> get referenceRange {
    return $ReferenceRangeCopyWith<$Res>(_self.referenceRange, (value) {
      return _then(_self.copyWith(referenceRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ParameterResult].
extension ParameterResultPatterns on ParameterResult {
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
    TResult Function(_ParameterResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParameterResult() when $default != null:
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
    TResult Function(_ParameterResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParameterResult():
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
    TResult? Function(_ParameterResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParameterResult() when $default != null:
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
            String parameterId,
            String parameterName,
            String loincCode,
            ResultValue value,
            String unit,
            ReferenceRange referenceRange,
            ResultFlag flag,
            String? notes,
            List<double>? historicalValues,
            bool? requiresDoubleEntry,
            String? verifiedValue,
            bool? isVerified)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParameterResult() when $default != null:
        return $default(
            _that.parameterId,
            _that.parameterName,
            _that.loincCode,
            _that.value,
            _that.unit,
            _that.referenceRange,
            _that.flag,
            _that.notes,
            _that.historicalValues,
            _that.requiresDoubleEntry,
            _that.verifiedValue,
            _that.isVerified);
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
            String parameterId,
            String parameterName,
            String loincCode,
            ResultValue value,
            String unit,
            ReferenceRange referenceRange,
            ResultFlag flag,
            String? notes,
            List<double>? historicalValues,
            bool? requiresDoubleEntry,
            String? verifiedValue,
            bool? isVerified)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParameterResult():
        return $default(
            _that.parameterId,
            _that.parameterName,
            _that.loincCode,
            _that.value,
            _that.unit,
            _that.referenceRange,
            _that.flag,
            _that.notes,
            _that.historicalValues,
            _that.requiresDoubleEntry,
            _that.verifiedValue,
            _that.isVerified);
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
            String parameterId,
            String parameterName,
            String loincCode,
            ResultValue value,
            String unit,
            ReferenceRange referenceRange,
            ResultFlag flag,
            String? notes,
            List<double>? historicalValues,
            bool? requiresDoubleEntry,
            String? verifiedValue,
            bool? isVerified)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ParameterResult() when $default != null:
        return $default(
            _that.parameterId,
            _that.parameterName,
            _that.loincCode,
            _that.value,
            _that.unit,
            _that.referenceRange,
            _that.flag,
            _that.notes,
            _that.historicalValues,
            _that.requiresDoubleEntry,
            _that.verifiedValue,
            _that.isVerified);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ParameterResult implements ParameterResult {
  const _ParameterResult(
      {required this.parameterId,
      required this.parameterName,
      required this.loincCode,
      required this.value,
      required this.unit,
      required this.referenceRange,
      required this.flag,
      this.notes,
      final List<double>? historicalValues,
      this.requiresDoubleEntry,
      this.verifiedValue,
      this.isVerified})
      : _historicalValues = historicalValues;
  factory _ParameterResult.fromJson(Map<String, dynamic> json) =>
      _$ParameterResultFromJson(json);

  @override
  final String parameterId;
  @override
  final String parameterName;
  @override
  final String loincCode;
  @override
  final ResultValue value;
  @override
  final String unit;
  @override
  final ReferenceRange referenceRange;
  @override
  final ResultFlag flag;
  @override
  final String? notes;
  final List<double>? _historicalValues;
  @override
  List<double>? get historicalValues {
    final value = _historicalValues;
    if (value == null) return null;
    if (_historicalValues is EqualUnmodifiableListView)
      return _historicalValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// For sparkline
  @override
  final bool? requiresDoubleEntry;
  @override
  final String? verifiedValue;
  @override
  final bool? isVerified;

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParameterResultCopyWith<_ParameterResult> get copyWith =>
      __$ParameterResultCopyWithImpl<_ParameterResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ParameterResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParameterResult &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.loincCode, loincCode) ||
                other.loincCode == loincCode) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.referenceRange, referenceRange) ||
                other.referenceRange == referenceRange) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._historicalValues, _historicalValues) &&
            (identical(other.requiresDoubleEntry, requiresDoubleEntry) ||
                other.requiresDoubleEntry == requiresDoubleEntry) &&
            (identical(other.verifiedValue, verifiedValue) ||
                other.verifiedValue == verifiedValue) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parameterId,
      parameterName,
      loincCode,
      value,
      unit,
      referenceRange,
      flag,
      notes,
      const DeepCollectionEquality().hash(_historicalValues),
      requiresDoubleEntry,
      verifiedValue,
      isVerified);

  @override
  String toString() {
    return 'ParameterResult(parameterId: $parameterId, parameterName: $parameterName, loincCode: $loincCode, value: $value, unit: $unit, referenceRange: $referenceRange, flag: $flag, notes: $notes, historicalValues: $historicalValues, requiresDoubleEntry: $requiresDoubleEntry, verifiedValue: $verifiedValue, isVerified: $isVerified)';
  }
}

/// @nodoc
abstract mixin class _$ParameterResultCopyWith<$Res>
    implements $ParameterResultCopyWith<$Res> {
  factory _$ParameterResultCopyWith(
          _ParameterResult value, $Res Function(_ParameterResult) _then) =
      __$ParameterResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String parameterId,
      String parameterName,
      String loincCode,
      ResultValue value,
      String unit,
      ReferenceRange referenceRange,
      ResultFlag flag,
      String? notes,
      List<double>? historicalValues,
      bool? requiresDoubleEntry,
      String? verifiedValue,
      bool? isVerified});

  @override
  $ResultValueCopyWith<$Res> get value;
  @override
  $ReferenceRangeCopyWith<$Res> get referenceRange;
}

/// @nodoc
class __$ParameterResultCopyWithImpl<$Res>
    implements _$ParameterResultCopyWith<$Res> {
  __$ParameterResultCopyWithImpl(this._self, this._then);

  final _ParameterResult _self;
  final $Res Function(_ParameterResult) _then;

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parameterId = null,
    Object? parameterName = null,
    Object? loincCode = null,
    Object? value = null,
    Object? unit = null,
    Object? referenceRange = null,
    Object? flag = null,
    Object? notes = freezed,
    Object? historicalValues = freezed,
    Object? requiresDoubleEntry = freezed,
    Object? verifiedValue = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_ParameterResult(
      parameterId: null == parameterId
          ? _self.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _self.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _self.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: null == referenceRange
          ? _self.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as ReferenceRange,
      flag: null == flag
          ? _self.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as ResultFlag,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      historicalValues: freezed == historicalValues
          ? _self._historicalValues
          : historicalValues // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      requiresDoubleEntry: freezed == requiresDoubleEntry
          ? _self.requiresDoubleEntry
          : requiresDoubleEntry // ignore: cast_nullable_to_non_nullable
              as bool?,
      verifiedValue: freezed == verifiedValue
          ? _self.verifiedValue
          : verifiedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultValueCopyWith<$Res> get value {
    return $ResultValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }

  /// Create a copy of ParameterResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceRangeCopyWith<$Res> get referenceRange {
    return $ReferenceRangeCopyWith<$Res>(_self.referenceRange, (value) {
      return _then(_self.copyWith(referenceRange: value));
    });
  }
}

ResultValue _$ResultValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'numeric':
      return NumericResultValue.fromJson(json);
    case 'text':
      return TextResultValue.fromJson(json);
    case 'range':
      return RangeResultValue.fromJson(json);
    case 'qualitative':
      return QualitativeResultValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ResultValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ResultValue {
  /// Serializes this ResultValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultValue);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResultValue()';
  }
}

/// @nodoc
class $ResultValueCopyWith<$Res> {
  $ResultValueCopyWith(ResultValue _, $Res Function(ResultValue) __);
}

/// Adds pattern-matching-related methods to [ResultValue].
extension ResultValuePatterns on ResultValue {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue() when numeric != null:
        return numeric(_that);
      case TextResultValue() when text != null:
        return text(_that);
      case RangeResultValue() when range != null:
        return range(_that);
      case QualitativeResultValue() when qualitative != null:
        return qualitative(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue():
        return numeric(_that);
      case TextResultValue():
        return text(_that);
      case RangeResultValue():
        return range(_that);
      case QualitativeResultValue():
        return qualitative(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue() when numeric != null:
        return numeric(_that);
      case TextResultValue() when text != null:
        return text(_that);
      case RangeResultValue() when range != null:
        return range(_that);
      case QualitativeResultValue() when qualitative != null:
        return qualitative(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue() when numeric != null:
        return numeric(_that.value);
      case TextResultValue() when text != null:
        return text(_that.value);
      case RangeResultValue() when range != null:
        return range(_that.min, _that.max);
      case QualitativeResultValue() when qualitative != null:
        return qualitative(_that.value, _that.options);
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
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue():
        return numeric(_that.value);
      case TextResultValue():
        return text(_that.value);
      case RangeResultValue():
        return range(_that.min, _that.max);
      case QualitativeResultValue():
        return qualitative(_that.value, _that.options);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) {
    final _that = this;
    switch (_that) {
      case NumericResultValue() when numeric != null:
        return numeric(_that.value);
      case TextResultValue() when text != null:
        return text(_that.value);
      case RangeResultValue() when range != null:
        return range(_that.min, _that.max);
      case QualitativeResultValue() when qualitative != null:
        return qualitative(_that.value, _that.options);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class NumericResultValue implements ResultValue {
  const NumericResultValue({required this.value, final String? $type})
      : $type = $type ?? 'numeric';
  factory NumericResultValue.fromJson(Map<String, dynamic> json) =>
      _$NumericResultValueFromJson(json);

  final double value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumericResultValueCopyWith<NumericResultValue> get copyWith =>
      _$NumericResultValueCopyWithImpl<NumericResultValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumericResultValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumericResultValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResultValue.numeric(value: $value)';
  }
}

/// @nodoc
abstract mixin class $NumericResultValueCopyWith<$Res>
    implements $ResultValueCopyWith<$Res> {
  factory $NumericResultValueCopyWith(
          NumericResultValue value, $Res Function(NumericResultValue) _then) =
      _$NumericResultValueCopyWithImpl;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$NumericResultValueCopyWithImpl<$Res>
    implements $NumericResultValueCopyWith<$Res> {
  _$NumericResultValueCopyWithImpl(this._self, this._then);

  final NumericResultValue _self;
  final $Res Function(NumericResultValue) _then;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(NumericResultValue(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TextResultValue implements ResultValue {
  const TextResultValue({required this.value, final String? $type})
      : $type = $type ?? 'text';
  factory TextResultValue.fromJson(Map<String, dynamic> json) =>
      _$TextResultValueFromJson(json);

  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextResultValueCopyWith<TextResultValue> get copyWith =>
      _$TextResultValueCopyWithImpl<TextResultValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextResultValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextResultValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResultValue.text(value: $value)';
  }
}

/// @nodoc
abstract mixin class $TextResultValueCopyWith<$Res>
    implements $ResultValueCopyWith<$Res> {
  factory $TextResultValueCopyWith(
          TextResultValue value, $Res Function(TextResultValue) _then) =
      _$TextResultValueCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TextResultValueCopyWithImpl<$Res>
    implements $TextResultValueCopyWith<$Res> {
  _$TextResultValueCopyWithImpl(this._self, this._then);

  final TextResultValue _self;
  final $Res Function(TextResultValue) _then;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(TextResultValue(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RangeResultValue implements ResultValue {
  const RangeResultValue(
      {required this.min, required this.max, final String? $type})
      : $type = $type ?? 'range';
  factory RangeResultValue.fromJson(Map<String, dynamic> json) =>
      _$RangeResultValueFromJson(json);

  final double min;
  final double max;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RangeResultValueCopyWith<RangeResultValue> get copyWith =>
      _$RangeResultValueCopyWithImpl<RangeResultValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RangeResultValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RangeResultValue &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @override
  String toString() {
    return 'ResultValue.range(min: $min, max: $max)';
  }
}

/// @nodoc
abstract mixin class $RangeResultValueCopyWith<$Res>
    implements $ResultValueCopyWith<$Res> {
  factory $RangeResultValueCopyWith(
          RangeResultValue value, $Res Function(RangeResultValue) _then) =
      _$RangeResultValueCopyWithImpl;
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class _$RangeResultValueCopyWithImpl<$Res>
    implements $RangeResultValueCopyWith<$Res> {
  _$RangeResultValueCopyWithImpl(this._self, this._then);

  final RangeResultValue _self;
  final $Res Function(RangeResultValue) _then;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(RangeResultValue(
      min: null == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class QualitativeResultValue implements ResultValue {
  const QualitativeResultValue(
      {required this.value, final List<String>? options, final String? $type})
      : _options = options,
        $type = $type ?? 'qualitative';
  factory QualitativeResultValue.fromJson(Map<String, dynamic> json) =>
      _$QualitativeResultValueFromJson(json);

  final String value;
  final List<String>? _options;
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QualitativeResultValueCopyWith<QualitativeResultValue> get copyWith =>
      _$QualitativeResultValueCopyWithImpl<QualitativeResultValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QualitativeResultValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QualitativeResultValue &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_options));

  @override
  String toString() {
    return 'ResultValue.qualitative(value: $value, options: $options)';
  }
}

/// @nodoc
abstract mixin class $QualitativeResultValueCopyWith<$Res>
    implements $ResultValueCopyWith<$Res> {
  factory $QualitativeResultValueCopyWith(QualitativeResultValue value,
          $Res Function(QualitativeResultValue) _then) =
      _$QualitativeResultValueCopyWithImpl;
  @useResult
  $Res call({String value, List<String>? options});
}

/// @nodoc
class _$QualitativeResultValueCopyWithImpl<$Res>
    implements $QualitativeResultValueCopyWith<$Res> {
  _$QualitativeResultValueCopyWithImpl(this._self, this._then);

  final QualitativeResultValue _self;
  final $Res Function(QualitativeResultValue) _then;

  /// Create a copy of ResultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? options = freezed,
  }) {
    return _then(QualitativeResultValue(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$ReferenceRange {
  double? get min;
  double? get max;
  String? get textRange;
  String get ageGroup;
  String get gender;
  String? get condition;

  /// Create a copy of ReferenceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferenceRangeCopyWith<ReferenceRange> get copyWith =>
      _$ReferenceRangeCopyWithImpl<ReferenceRange>(
          this as ReferenceRange, _$identity);

  /// Serializes this ReferenceRange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReferenceRange &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.textRange, textRange) ||
                other.textRange == textRange) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, min, max, textRange, ageGroup, gender, condition);

  @override
  String toString() {
    return 'ReferenceRange(min: $min, max: $max, textRange: $textRange, ageGroup: $ageGroup, gender: $gender, condition: $condition)';
  }
}

/// @nodoc
abstract mixin class $ReferenceRangeCopyWith<$Res> {
  factory $ReferenceRangeCopyWith(
          ReferenceRange value, $Res Function(ReferenceRange) _then) =
      _$ReferenceRangeCopyWithImpl;
  @useResult
  $Res call(
      {double? min,
      double? max,
      String? textRange,
      String ageGroup,
      String gender,
      String? condition});
}

/// @nodoc
class _$ReferenceRangeCopyWithImpl<$Res>
    implements $ReferenceRangeCopyWith<$Res> {
  _$ReferenceRangeCopyWithImpl(this._self, this._then);

  final ReferenceRange _self;
  final $Res Function(ReferenceRange) _then;

  /// Create a copy of ReferenceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? textRange = freezed,
    Object? ageGroup = null,
    Object? gender = null,
    Object? condition = freezed,
  }) {
    return _then(_self.copyWith(
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      textRange: freezed == textRange
          ? _self.textRange
          : textRange // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: null == ageGroup
          ? _self.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReferenceRange].
extension ReferenceRangePatterns on ReferenceRange {
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
    TResult Function(_ReferenceRange value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange() when $default != null:
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
    TResult Function(_ReferenceRange value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange():
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
    TResult? Function(_ReferenceRange value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange() when $default != null:
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
    TResult Function(double? min, double? max, String? textRange,
            String ageGroup, String gender, String? condition)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange() when $default != null:
        return $default(_that.min, _that.max, _that.textRange, _that.ageGroup,
            _that.gender, _that.condition);
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
    TResult Function(double? min, double? max, String? textRange,
            String ageGroup, String gender, String? condition)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange():
        return $default(_that.min, _that.max, _that.textRange, _that.ageGroup,
            _that.gender, _that.condition);
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
    TResult? Function(double? min, double? max, String? textRange,
            String ageGroup, String gender, String? condition)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferenceRange() when $default != null:
        return $default(_that.min, _that.max, _that.textRange, _that.ageGroup,
            _that.gender, _that.condition);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReferenceRange implements ReferenceRange {
  const _ReferenceRange(
      {this.min,
      this.max,
      this.textRange,
      required this.ageGroup,
      required this.gender,
      this.condition});
  factory _ReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$ReferenceRangeFromJson(json);

  @override
  final double? min;
  @override
  final double? max;
  @override
  final String? textRange;
  @override
  final String ageGroup;
  @override
  final String gender;
  @override
  final String? condition;

  /// Create a copy of ReferenceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferenceRangeCopyWith<_ReferenceRange> get copyWith =>
      __$ReferenceRangeCopyWithImpl<_ReferenceRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferenceRangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReferenceRange &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.textRange, textRange) ||
                other.textRange == textRange) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, min, max, textRange, ageGroup, gender, condition);

  @override
  String toString() {
    return 'ReferenceRange(min: $min, max: $max, textRange: $textRange, ageGroup: $ageGroup, gender: $gender, condition: $condition)';
  }
}

/// @nodoc
abstract mixin class _$ReferenceRangeCopyWith<$Res>
    implements $ReferenceRangeCopyWith<$Res> {
  factory _$ReferenceRangeCopyWith(
          _ReferenceRange value, $Res Function(_ReferenceRange) _then) =
      __$ReferenceRangeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? min,
      double? max,
      String? textRange,
      String ageGroup,
      String gender,
      String? condition});
}

/// @nodoc
class __$ReferenceRangeCopyWithImpl<$Res>
    implements _$ReferenceRangeCopyWith<$Res> {
  __$ReferenceRangeCopyWithImpl(this._self, this._then);

  final _ReferenceRange _self;
  final $Res Function(_ReferenceRange) _then;

  /// Create a copy of ReferenceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? textRange = freezed,
    Object? ageGroup = null,
    Object? gender = null,
    Object? condition = freezed,
  }) {
    return _then(_ReferenceRange(
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      textRange: freezed == textRange
          ? _self.textRange
          : textRange // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: null == ageGroup
          ? _self.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
