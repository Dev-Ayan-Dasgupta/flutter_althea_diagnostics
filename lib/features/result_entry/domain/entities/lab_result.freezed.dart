// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabResult _$LabResultFromJson(Map<String, dynamic> json) {
  return _LabResult.fromJson(json);
}

/// @nodoc
mixin _$LabResult {
  String get id => throw _privateConstructorUsedError;
  String get sampleId => throw _privateConstructorUsedError;
  String get patientAbhaId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  List<TestResult> get testResults => throw _privateConstructorUsedError;
  ResultStatus get status => throw _privateConstructorUsedError;
  String? get pathologistId => throw _privateConstructorUsedError;
  String? get pathologistName => throw _privateConstructorUsedError;
  String? get clinicalInterpretation => throw _privateConstructorUsedError;
  String? get digitalSignature => throw _privateConstructorUsedError;
  DateTime? get signedOffAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  bool? get pushedToAbha => throw _privateConstructorUsedError;
  DateTime? get abhaPushTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabResultCopyWith<LabResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabResultCopyWith<$Res> {
  factory $LabResultCopyWith(LabResult value, $Res Function(LabResult) then) =
      _$LabResultCopyWithImpl<$Res, LabResult>;
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
class _$LabResultCopyWithImpl<$Res, $Val extends LabResult>
    implements $LabResultCopyWith<$Res> {
  _$LabResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testResults: null == testResults
          ? _value.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      pathologistId: freezed == pathologistId
          ? _value.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String?,
      pathologistName: freezed == pathologistName
          ? _value.pathologistName
          : pathologistName // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalInterpretation: freezed == clinicalInterpretation
          ? _value.clinicalInterpretation
          : clinicalInterpretation // ignore: cast_nullable_to_non_nullable
              as String?,
      digitalSignature: freezed == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      signedOffAt: freezed == signedOffAt
          ? _value.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedToAbha: freezed == pushedToAbha
          ? _value.pushedToAbha
          : pushedToAbha // ignore: cast_nullable_to_non_nullable
              as bool?,
      abhaPushTime: freezed == abhaPushTime
          ? _value.abhaPushTime
          : abhaPushTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabResultImplCopyWith<$Res>
    implements $LabResultCopyWith<$Res> {
  factory _$$LabResultImplCopyWith(
          _$LabResultImpl value, $Res Function(_$LabResultImpl) then) =
      __$$LabResultImplCopyWithImpl<$Res>;
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
class __$$LabResultImplCopyWithImpl<$Res>
    extends _$LabResultCopyWithImpl<$Res, _$LabResultImpl>
    implements _$$LabResultImplCopyWith<$Res> {
  __$$LabResultImplCopyWithImpl(
      _$LabResultImpl _value, $Res Function(_$LabResultImpl) _then)
      : super(_value, _then);

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
    return _then(_$LabResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      testResults: null == testResults
          ? _value._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      pathologistId: freezed == pathologistId
          ? _value.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String?,
      pathologistName: freezed == pathologistName
          ? _value.pathologistName
          : pathologistName // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalInterpretation: freezed == clinicalInterpretation
          ? _value.clinicalInterpretation
          : clinicalInterpretation // ignore: cast_nullable_to_non_nullable
              as String?,
      digitalSignature: freezed == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      signedOffAt: freezed == signedOffAt
          ? _value.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedToAbha: freezed == pushedToAbha
          ? _value.pushedToAbha
          : pushedToAbha // ignore: cast_nullable_to_non_nullable
              as bool?,
      abhaPushTime: freezed == abhaPushTime
          ? _value.abhaPushTime
          : abhaPushTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabResultImpl implements _LabResult {
  const _$LabResultImpl(
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

  factory _$LabResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabResultImplFromJson(json);

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

  @override
  String toString() {
    return 'LabResult(id: $id, sampleId: $sampleId, patientAbhaId: $patientAbhaId, orderId: $orderId, testResults: $testResults, status: $status, pathologistId: $pathologistId, pathologistName: $pathologistName, clinicalInterpretation: $clinicalInterpretation, digitalSignature: $digitalSignature, signedOffAt: $signedOffAt, createdAt: $createdAt, updatedAt: $updatedAt, pdfUrl: $pdfUrl, pushedToAbha: $pushedToAbha, abhaPushTime: $abhaPushTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabResultImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabResultImplCopyWith<_$LabResultImpl> get copyWith =>
      __$$LabResultImplCopyWithImpl<_$LabResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabResultImplToJson(
      this,
    );
  }
}

abstract class _LabResult implements LabResult {
  const factory _LabResult(
      {required final String id,
      required final String sampleId,
      required final String patientAbhaId,
      required final String orderId,
      required final List<TestResult> testResults,
      required final ResultStatus status,
      final String? pathologistId,
      final String? pathologistName,
      final String? clinicalInterpretation,
      final String? digitalSignature,
      final DateTime? signedOffAt,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final String? pdfUrl,
      final bool? pushedToAbha,
      final DateTime? abhaPushTime}) = _$LabResultImpl;

  factory _LabResult.fromJson(Map<String, dynamic> json) =
      _$LabResultImpl.fromJson;

  @override
  String get id;
  @override
  String get sampleId;
  @override
  String get patientAbhaId;
  @override
  String get orderId;
  @override
  List<TestResult> get testResults;
  @override
  ResultStatus get status;
  @override
  String? get pathologistId;
  @override
  String? get pathologistName;
  @override
  String? get clinicalInterpretation;
  @override
  String? get digitalSignature;
  @override
  DateTime? get signedOffAt;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get pdfUrl;
  @override
  bool? get pushedToAbha;
  @override
  DateTime? get abhaPushTime;
  @override
  @JsonKey(ignore: true)
  _$$LabResultImplCopyWith<_$LabResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestResult _$TestResultFromJson(Map<String, dynamic> json) {
  return _TestResult.fromJson(json);
}

/// @nodoc
mixin _$TestResult {
  String get testId => throw _privateConstructorUsedError;
  String get testName => throw _privateConstructorUsedError;
  String get loincCode =>
      throw _privateConstructorUsedError; // LOINC standard code
  List<ParameterResult> get parameters => throw _privateConstructorUsedError;
  String? get methodology => throw _privateConstructorUsedError;
  String? get specimenType => throw _privateConstructorUsedError;
  DateTime? get analyzedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultCopyWith<TestResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultCopyWith<$Res> {
  factory $TestResultCopyWith(
          TestResult value, $Res Function(TestResult) then) =
      _$TestResultCopyWithImpl<$Res, TestResult>;
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
class _$TestResultCopyWithImpl<$Res, $Val extends TestResult>
    implements $TestResultCopyWith<$Res> {
  _$TestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _value.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParameterResult>,
      methodology: freezed == methodology
          ? _value.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      specimenType: freezed == specimenType
          ? _value.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzedAt: freezed == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResultImplCopyWith<$Res>
    implements $TestResultCopyWith<$Res> {
  factory _$$TestResultImplCopyWith(
          _$TestResultImpl value, $Res Function(_$TestResultImpl) then) =
      __$$TestResultImplCopyWithImpl<$Res>;
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
class __$$TestResultImplCopyWithImpl<$Res>
    extends _$TestResultCopyWithImpl<$Res, _$TestResultImpl>
    implements _$$TestResultImplCopyWith<$Res> {
  __$$TestResultImplCopyWithImpl(
      _$TestResultImpl _value, $Res Function(_$TestResultImpl) _then)
      : super(_value, _then);

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
    return _then(_$TestResultImpl(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _value.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParameterResult>,
      methodology: freezed == methodology
          ? _value.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      specimenType: freezed == specimenType
          ? _value.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzedAt: freezed == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultImpl implements _TestResult {
  const _$TestResultImpl(
      {required this.testId,
      required this.testName,
      required this.loincCode,
      required final List<ParameterResult> parameters,
      this.methodology,
      this.specimenType,
      this.analyzedAt})
      : _parameters = parameters;

  factory _$TestResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultImplFromJson(json);

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

  @override
  String toString() {
    return 'TestResult(testId: $testId, testName: $testName, loincCode: $loincCode, parameters: $parameters, methodology: $methodology, specimenType: $specimenType, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      __$$TestResultImplCopyWithImpl<_$TestResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultImplToJson(
      this,
    );
  }
}

abstract class _TestResult implements TestResult {
  const factory _TestResult(
      {required final String testId,
      required final String testName,
      required final String loincCode,
      required final List<ParameterResult> parameters,
      final String? methodology,
      final String? specimenType,
      final DateTime? analyzedAt}) = _$TestResultImpl;

  factory _TestResult.fromJson(Map<String, dynamic> json) =
      _$TestResultImpl.fromJson;

  @override
  String get testId;
  @override
  String get testName;
  @override
  String get loincCode;
  @override // LOINC standard code
  List<ParameterResult> get parameters;
  @override
  String? get methodology;
  @override
  String? get specimenType;
  @override
  DateTime? get analyzedAt;
  @override
  @JsonKey(ignore: true)
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParameterResult _$ParameterResultFromJson(Map<String, dynamic> json) {
  return _ParameterResult.fromJson(json);
}

/// @nodoc
mixin _$ParameterResult {
  String get parameterId => throw _privateConstructorUsedError;
  String get parameterName => throw _privateConstructorUsedError;
  String get loincCode => throw _privateConstructorUsedError;
  ResultValue get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  ReferenceRange get referenceRange => throw _privateConstructorUsedError;
  ResultFlag get flag => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<double>? get historicalValues =>
      throw _privateConstructorUsedError; // For sparkline
  bool? get requiresDoubleEntry => throw _privateConstructorUsedError;
  String? get verifiedValue => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterResultCopyWith<ParameterResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterResultCopyWith<$Res> {
  factory $ParameterResultCopyWith(
          ParameterResult value, $Res Function(ParameterResult) then) =
      _$ParameterResultCopyWithImpl<$Res, ParameterResult>;
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
class _$ParameterResultCopyWithImpl<$Res, $Val extends ParameterResult>
    implements $ParameterResultCopyWith<$Res> {
  _$ParameterResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _value.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: null == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as ReferenceRange,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as ResultFlag,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      historicalValues: freezed == historicalValues
          ? _value.historicalValues
          : historicalValues // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      requiresDoubleEntry: freezed == requiresDoubleEntry
          ? _value.requiresDoubleEntry
          : requiresDoubleEntry // ignore: cast_nullable_to_non_nullable
              as bool?,
      verifiedValue: freezed == verifiedValue
          ? _value.verifiedValue
          : verifiedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultValueCopyWith<$Res> get value {
    return $ResultValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceRangeCopyWith<$Res> get referenceRange {
    return $ReferenceRangeCopyWith<$Res>(_value.referenceRange, (value) {
      return _then(_value.copyWith(referenceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParameterResultImplCopyWith<$Res>
    implements $ParameterResultCopyWith<$Res> {
  factory _$$ParameterResultImplCopyWith(_$ParameterResultImpl value,
          $Res Function(_$ParameterResultImpl) then) =
      __$$ParameterResultImplCopyWithImpl<$Res>;
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
class __$$ParameterResultImplCopyWithImpl<$Res>
    extends _$ParameterResultCopyWithImpl<$Res, _$ParameterResultImpl>
    implements _$$ParameterResultImplCopyWith<$Res> {
  __$$ParameterResultImplCopyWithImpl(
      _$ParameterResultImpl _value, $Res Function(_$ParameterResultImpl) _then)
      : super(_value, _then);

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
    return _then(_$ParameterResultImpl(
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      loincCode: null == loincCode
          ? _value.loincCode
          : loincCode // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: null == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as ReferenceRange,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as ResultFlag,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      historicalValues: freezed == historicalValues
          ? _value._historicalValues
          : historicalValues // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      requiresDoubleEntry: freezed == requiresDoubleEntry
          ? _value.requiresDoubleEntry
          : requiresDoubleEntry // ignore: cast_nullable_to_non_nullable
              as bool?,
      verifiedValue: freezed == verifiedValue
          ? _value.verifiedValue
          : verifiedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterResultImpl implements _ParameterResult {
  const _$ParameterResultImpl(
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

  factory _$ParameterResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterResultImplFromJson(json);

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

  @override
  String toString() {
    return 'ParameterResult(parameterId: $parameterId, parameterName: $parameterName, loincCode: $loincCode, value: $value, unit: $unit, referenceRange: $referenceRange, flag: $flag, notes: $notes, historicalValues: $historicalValues, requiresDoubleEntry: $requiresDoubleEntry, verifiedValue: $verifiedValue, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterResultImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterResultImplCopyWith<_$ParameterResultImpl> get copyWith =>
      __$$ParameterResultImplCopyWithImpl<_$ParameterResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterResultImplToJson(
      this,
    );
  }
}

abstract class _ParameterResult implements ParameterResult {
  const factory _ParameterResult(
      {required final String parameterId,
      required final String parameterName,
      required final String loincCode,
      required final ResultValue value,
      required final String unit,
      required final ReferenceRange referenceRange,
      required final ResultFlag flag,
      final String? notes,
      final List<double>? historicalValues,
      final bool? requiresDoubleEntry,
      final String? verifiedValue,
      final bool? isVerified}) = _$ParameterResultImpl;

  factory _ParameterResult.fromJson(Map<String, dynamic> json) =
      _$ParameterResultImpl.fromJson;

  @override
  String get parameterId;
  @override
  String get parameterName;
  @override
  String get loincCode;
  @override
  ResultValue get value;
  @override
  String get unit;
  @override
  ReferenceRange get referenceRange;
  @override
  ResultFlag get flag;
  @override
  String? get notes;
  @override
  List<double>? get historicalValues;
  @override // For sparkline
  bool? get requiresDoubleEntry;
  @override
  String? get verifiedValue;
  @override
  bool? get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$ParameterResultImplCopyWith<_$ParameterResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultValueCopyWith<$Res> {
  factory $ResultValueCopyWith(
          ResultValue value, $Res Function(ResultValue) then) =
      _$ResultValueCopyWithImpl<$Res, ResultValue>;
}

/// @nodoc
class _$ResultValueCopyWithImpl<$Res, $Val extends ResultValue>
    implements $ResultValueCopyWith<$Res> {
  _$ResultValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NumericResultValueImplCopyWith<$Res> {
  factory _$$NumericResultValueImplCopyWith(_$NumericResultValueImpl value,
          $Res Function(_$NumericResultValueImpl) then) =
      __$$NumericResultValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$NumericResultValueImplCopyWithImpl<$Res>
    extends _$ResultValueCopyWithImpl<$Res, _$NumericResultValueImpl>
    implements _$$NumericResultValueImplCopyWith<$Res> {
  __$$NumericResultValueImplCopyWithImpl(_$NumericResultValueImpl _value,
      $Res Function(_$NumericResultValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$NumericResultValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumericResultValueImpl implements NumericResultValue {
  const _$NumericResultValueImpl({required this.value, final String? $type})
      : $type = $type ?? 'numeric';

  factory _$NumericResultValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumericResultValueImplFromJson(json);

  @override
  final double value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResultValue.numeric(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumericResultValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumericResultValueImplCopyWith<_$NumericResultValueImpl> get copyWith =>
      __$$NumericResultValueImplCopyWithImpl<_$NumericResultValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) {
    return numeric(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) {
    return numeric?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) {
    if (numeric != null) {
      return numeric(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) {
    return numeric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) {
    return numeric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) {
    if (numeric != null) {
      return numeric(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumericResultValueImplToJson(
      this,
    );
  }
}

abstract class NumericResultValue implements ResultValue {
  const factory NumericResultValue({required final double value}) =
      _$NumericResultValueImpl;

  factory NumericResultValue.fromJson(Map<String, dynamic> json) =
      _$NumericResultValueImpl.fromJson;

  double get value;
  @JsonKey(ignore: true)
  _$$NumericResultValueImplCopyWith<_$NumericResultValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextResultValueImplCopyWith<$Res> {
  factory _$$TextResultValueImplCopyWith(_$TextResultValueImpl value,
          $Res Function(_$TextResultValueImpl) then) =
      __$$TextResultValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TextResultValueImplCopyWithImpl<$Res>
    extends _$ResultValueCopyWithImpl<$Res, _$TextResultValueImpl>
    implements _$$TextResultValueImplCopyWith<$Res> {
  __$$TextResultValueImplCopyWithImpl(
      _$TextResultValueImpl _value, $Res Function(_$TextResultValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TextResultValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextResultValueImpl implements TextResultValue {
  const _$TextResultValueImpl({required this.value, final String? $type})
      : $type = $type ?? 'text';

  factory _$TextResultValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextResultValueImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResultValue.text(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextResultValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextResultValueImplCopyWith<_$TextResultValueImpl> get copyWith =>
      __$$TextResultValueImplCopyWithImpl<_$TextResultValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) {
    return text(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) {
    return text?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextResultValueImplToJson(
      this,
    );
  }
}

abstract class TextResultValue implements ResultValue {
  const factory TextResultValue({required final String value}) =
      _$TextResultValueImpl;

  factory TextResultValue.fromJson(Map<String, dynamic> json) =
      _$TextResultValueImpl.fromJson;

  String get value;
  @JsonKey(ignore: true)
  _$$TextResultValueImplCopyWith<_$TextResultValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RangeResultValueImplCopyWith<$Res> {
  factory _$$RangeResultValueImplCopyWith(_$RangeResultValueImpl value,
          $Res Function(_$RangeResultValueImpl) then) =
      __$$RangeResultValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class __$$RangeResultValueImplCopyWithImpl<$Res>
    extends _$ResultValueCopyWithImpl<$Res, _$RangeResultValueImpl>
    implements _$$RangeResultValueImplCopyWith<$Res> {
  __$$RangeResultValueImplCopyWithImpl(_$RangeResultValueImpl _value,
      $Res Function(_$RangeResultValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$RangeResultValueImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RangeResultValueImpl implements RangeResultValue {
  const _$RangeResultValueImpl(
      {required this.min, required this.max, final String? $type})
      : $type = $type ?? 'range';

  factory _$RangeResultValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$RangeResultValueImplFromJson(json);

  @override
  final double min;
  @override
  final double max;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResultValue.range(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeResultValueImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeResultValueImplCopyWith<_$RangeResultValueImpl> get copyWith =>
      __$$RangeResultValueImplCopyWithImpl<_$RangeResultValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) {
    return range(min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) {
    return range?.call(min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) {
    if (range != null) {
      return range(min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) {
    return range(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) {
    return range?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) {
    if (range != null) {
      return range(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RangeResultValueImplToJson(
      this,
    );
  }
}

abstract class RangeResultValue implements ResultValue {
  const factory RangeResultValue(
      {required final double min,
      required final double max}) = _$RangeResultValueImpl;

  factory RangeResultValue.fromJson(Map<String, dynamic> json) =
      _$RangeResultValueImpl.fromJson;

  double get min;
  double get max;
  @JsonKey(ignore: true)
  _$$RangeResultValueImplCopyWith<_$RangeResultValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QualitativeResultValueImplCopyWith<$Res> {
  factory _$$QualitativeResultValueImplCopyWith(
          _$QualitativeResultValueImpl value,
          $Res Function(_$QualitativeResultValueImpl) then) =
      __$$QualitativeResultValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, List<String>? options});
}

/// @nodoc
class __$$QualitativeResultValueImplCopyWithImpl<$Res>
    extends _$ResultValueCopyWithImpl<$Res, _$QualitativeResultValueImpl>
    implements _$$QualitativeResultValueImplCopyWith<$Res> {
  __$$QualitativeResultValueImplCopyWithImpl(
      _$QualitativeResultValueImpl _value,
      $Res Function(_$QualitativeResultValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? options = freezed,
  }) {
    return _then(_$QualitativeResultValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QualitativeResultValueImpl implements QualitativeResultValue {
  const _$QualitativeResultValueImpl(
      {required this.value, final List<String>? options, final String? $type})
      : _options = options,
        $type = $type ?? 'qualitative';

  factory _$QualitativeResultValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$QualitativeResultValueImplFromJson(json);

  @override
  final String value;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResultValue.qualitative(value: $value, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualitativeResultValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QualitativeResultValueImplCopyWith<_$QualitativeResultValueImpl>
      get copyWith => __$$QualitativeResultValueImplCopyWithImpl<
          _$QualitativeResultValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) numeric,
    required TResult Function(String value) text,
    required TResult Function(double min, double max) range,
    required TResult Function(String value, List<String>? options) qualitative,
  }) {
    return qualitative(value, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? numeric,
    TResult? Function(String value)? text,
    TResult? Function(double min, double max)? range,
    TResult? Function(String value, List<String>? options)? qualitative,
  }) {
    return qualitative?.call(value, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? numeric,
    TResult Function(String value)? text,
    TResult Function(double min, double max)? range,
    TResult Function(String value, List<String>? options)? qualitative,
    required TResult orElse(),
  }) {
    if (qualitative != null) {
      return qualitative(value, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumericResultValue value) numeric,
    required TResult Function(TextResultValue value) text,
    required TResult Function(RangeResultValue value) range,
    required TResult Function(QualitativeResultValue value) qualitative,
  }) {
    return qualitative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumericResultValue value)? numeric,
    TResult? Function(TextResultValue value)? text,
    TResult? Function(RangeResultValue value)? range,
    TResult? Function(QualitativeResultValue value)? qualitative,
  }) {
    return qualitative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumericResultValue value)? numeric,
    TResult Function(TextResultValue value)? text,
    TResult Function(RangeResultValue value)? range,
    TResult Function(QualitativeResultValue value)? qualitative,
    required TResult orElse(),
  }) {
    if (qualitative != null) {
      return qualitative(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QualitativeResultValueImplToJson(
      this,
    );
  }
}

abstract class QualitativeResultValue implements ResultValue {
  const factory QualitativeResultValue(
      {required final String value,
      final List<String>? options}) = _$QualitativeResultValueImpl;

  factory QualitativeResultValue.fromJson(Map<String, dynamic> json) =
      _$QualitativeResultValueImpl.fromJson;

  String get value;
  List<String>? get options;
  @JsonKey(ignore: true)
  _$$QualitativeResultValueImplCopyWith<_$QualitativeResultValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferenceRange _$ReferenceRangeFromJson(Map<String, dynamic> json) {
  return _ReferenceRange.fromJson(json);
}

/// @nodoc
mixin _$ReferenceRange {
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  String? get textRange => throw _privateConstructorUsedError;
  String get ageGroup => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceRangeCopyWith<ReferenceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceRangeCopyWith<$Res> {
  factory $ReferenceRangeCopyWith(
          ReferenceRange value, $Res Function(ReferenceRange) then) =
      _$ReferenceRangeCopyWithImpl<$Res, ReferenceRange>;
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
class _$ReferenceRangeCopyWithImpl<$Res, $Val extends ReferenceRange>
    implements $ReferenceRangeCopyWith<$Res> {
  _$ReferenceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      textRange: freezed == textRange
          ? _value.textRange
          : textRange // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceRangeImplCopyWith<$Res>
    implements $ReferenceRangeCopyWith<$Res> {
  factory _$$ReferenceRangeImplCopyWith(_$ReferenceRangeImpl value,
          $Res Function(_$ReferenceRangeImpl) then) =
      __$$ReferenceRangeImplCopyWithImpl<$Res>;
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
class __$$ReferenceRangeImplCopyWithImpl<$Res>
    extends _$ReferenceRangeCopyWithImpl<$Res, _$ReferenceRangeImpl>
    implements _$$ReferenceRangeImplCopyWith<$Res> {
  __$$ReferenceRangeImplCopyWithImpl(
      _$ReferenceRangeImpl _value, $Res Function(_$ReferenceRangeImpl) _then)
      : super(_value, _then);

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
    return _then(_$ReferenceRangeImpl(
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      textRange: freezed == textRange
          ? _value.textRange
          : textRange // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceRangeImpl implements _ReferenceRange {
  const _$ReferenceRangeImpl(
      {this.min,
      this.max,
      this.textRange,
      required this.ageGroup,
      required this.gender,
      this.condition});

  factory _$ReferenceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceRangeImplFromJson(json);

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

  @override
  String toString() {
    return 'ReferenceRange(min: $min, max: $max, textRange: $textRange, ageGroup: $ageGroup, gender: $gender, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceRangeImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, min, max, textRange, ageGroup, gender, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceRangeImplCopyWith<_$ReferenceRangeImpl> get copyWith =>
      __$$ReferenceRangeImplCopyWithImpl<_$ReferenceRangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceRangeImplToJson(
      this,
    );
  }
}

abstract class _ReferenceRange implements ReferenceRange {
  const factory _ReferenceRange(
      {final double? min,
      final double? max,
      final String? textRange,
      required final String ageGroup,
      required final String gender,
      final String? condition}) = _$ReferenceRangeImpl;

  factory _ReferenceRange.fromJson(Map<String, dynamic> json) =
      _$ReferenceRangeImpl.fromJson;

  @override
  double? get min;
  @override
  double? get max;
  @override
  String? get textRange;
  @override
  String get ageGroup;
  @override
  String get gender;
  @override
  String? get condition;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceRangeImplCopyWith<_$ReferenceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
