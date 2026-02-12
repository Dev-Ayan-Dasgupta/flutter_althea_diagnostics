// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phlebotomist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Phlebotomist _$PhlebotomistFromJson(Map<String, dynamic> json) {
  return _Phlebotomist.fromJson(json);
}

/// @nodoc
mixin _$Phlebotomist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  PhlebotomistStatus get status => throw _privateConstructorUsedError;
  GeoLocation? get currentLocation => throw _privateConstructorUsedError;
  int get activeSamplesCount => throw _privateConstructorUsedError;
  double get batteryLevel => throw _privateConstructorUsedError;
  double? get smartBagTemperature => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<String> get certifications => throw _privateConstructorUsedError;
  PhlebotomistStats get stats => throw _privateConstructorUsedError;
  DateTime? get lastActiveAt => throw _privateConstructorUsedError;
  DateTime? get shiftStartTime => throw _privateConstructorUsedError;
  DateTime? get shiftEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhlebotomistCopyWith<Phlebotomist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhlebotomistCopyWith<$Res> {
  factory $PhlebotomistCopyWith(
          Phlebotomist value, $Res Function(Phlebotomist) then) =
      _$PhlebotomistCopyWithImpl<$Res, Phlebotomist>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String email,
      PhlebotomistStatus status,
      GeoLocation? currentLocation,
      int activeSamplesCount,
      double batteryLevel,
      double? smartBagTemperature,
      String? deviceId,
      String? avatarUrl,
      List<String> certifications,
      PhlebotomistStats stats,
      DateTime? lastActiveAt,
      DateTime? shiftStartTime,
      DateTime? shiftEndTime});

  $GeoLocationCopyWith<$Res>? get currentLocation;
  $PhlebotomistStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$PhlebotomistCopyWithImpl<$Res, $Val extends Phlebotomist>
    implements $PhlebotomistCopyWith<$Res> {
  _$PhlebotomistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? status = null,
    Object? currentLocation = freezed,
    Object? activeSamplesCount = null,
    Object? batteryLevel = null,
    Object? smartBagTemperature = freezed,
    Object? deviceId = freezed,
    Object? avatarUrl = freezed,
    Object? certifications = null,
    Object? stats = null,
    Object? lastActiveAt = freezed,
    Object? shiftStartTime = freezed,
    Object? shiftEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhlebotomistStatus,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      activeSamplesCount: null == activeSamplesCount
          ? _value.activeSamplesCount
          : activeSamplesCount // ignore: cast_nullable_to_non_nullable
              as int,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as double,
      smartBagTemperature: freezed == smartBagTemperature
          ? _value.smartBagTemperature
          : smartBagTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PhlebotomistStats,
      lastActiveAt: freezed == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftStartTime: freezed == shiftStartTime
          ? _value.shiftStartTime
          : shiftStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftEndTime: freezed == shiftEndTime
          ? _value.shiftEndTime
          : shiftEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.currentLocation!, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhlebotomistStatsCopyWith<$Res> get stats {
    return $PhlebotomistStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhlebotomistImplCopyWith<$Res>
    implements $PhlebotomistCopyWith<$Res> {
  factory _$$PhlebotomistImplCopyWith(
          _$PhlebotomistImpl value, $Res Function(_$PhlebotomistImpl) then) =
      __$$PhlebotomistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String email,
      PhlebotomistStatus status,
      GeoLocation? currentLocation,
      int activeSamplesCount,
      double batteryLevel,
      double? smartBagTemperature,
      String? deviceId,
      String? avatarUrl,
      List<String> certifications,
      PhlebotomistStats stats,
      DateTime? lastActiveAt,
      DateTime? shiftStartTime,
      DateTime? shiftEndTime});

  @override
  $GeoLocationCopyWith<$Res>? get currentLocation;
  @override
  $PhlebotomistStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$PhlebotomistImplCopyWithImpl<$Res>
    extends _$PhlebotomistCopyWithImpl<$Res, _$PhlebotomistImpl>
    implements _$$PhlebotomistImplCopyWith<$Res> {
  __$$PhlebotomistImplCopyWithImpl(
      _$PhlebotomistImpl _value, $Res Function(_$PhlebotomistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? status = null,
    Object? currentLocation = freezed,
    Object? activeSamplesCount = null,
    Object? batteryLevel = null,
    Object? smartBagTemperature = freezed,
    Object? deviceId = freezed,
    Object? avatarUrl = freezed,
    Object? certifications = null,
    Object? stats = null,
    Object? lastActiveAt = freezed,
    Object? shiftStartTime = freezed,
    Object? shiftEndTime = freezed,
  }) {
    return _then(_$PhlebotomistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhlebotomistStatus,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      activeSamplesCount: null == activeSamplesCount
          ? _value.activeSamplesCount
          : activeSamplesCount // ignore: cast_nullable_to_non_nullable
              as int,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as double,
      smartBagTemperature: freezed == smartBagTemperature
          ? _value.smartBagTemperature
          : smartBagTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PhlebotomistStats,
      lastActiveAt: freezed == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftStartTime: freezed == shiftStartTime
          ? _value.shiftStartTime
          : shiftStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftEndTime: freezed == shiftEndTime
          ? _value.shiftEndTime
          : shiftEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhlebotomistImpl implements _Phlebotomist {
  const _$PhlebotomistImpl(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.status,
      required this.currentLocation,
      required this.activeSamplesCount,
      required this.batteryLevel,
      this.smartBagTemperature,
      this.deviceId,
      this.avatarUrl,
      required final List<String> certifications,
      required this.stats,
      this.lastActiveAt,
      this.shiftStartTime,
      this.shiftEndTime})
      : _certifications = certifications;

  factory _$PhlebotomistImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhlebotomistImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final PhlebotomistStatus status;
  @override
  final GeoLocation? currentLocation;
  @override
  final int activeSamplesCount;
  @override
  final double batteryLevel;
  @override
  final double? smartBagTemperature;
  @override
  final String? deviceId;
  @override
  final String? avatarUrl;
  final List<String> _certifications;
  @override
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  @override
  final PhlebotomistStats stats;
  @override
  final DateTime? lastActiveAt;
  @override
  final DateTime? shiftStartTime;
  @override
  final DateTime? shiftEndTime;

  @override
  String toString() {
    return 'Phlebotomist(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, status: $status, currentLocation: $currentLocation, activeSamplesCount: $activeSamplesCount, batteryLevel: $batteryLevel, smartBagTemperature: $smartBagTemperature, deviceId: $deviceId, avatarUrl: $avatarUrl, certifications: $certifications, stats: $stats, lastActiveAt: $lastActiveAt, shiftStartTime: $shiftStartTime, shiftEndTime: $shiftEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhlebotomistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.activeSamplesCount, activeSamplesCount) ||
                other.activeSamplesCount == activeSamplesCount) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.smartBagTemperature, smartBagTemperature) ||
                other.smartBagTemperature == smartBagTemperature) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.lastActiveAt, lastActiveAt) ||
                other.lastActiveAt == lastActiveAt) &&
            (identical(other.shiftStartTime, shiftStartTime) ||
                other.shiftStartTime == shiftStartTime) &&
            (identical(other.shiftEndTime, shiftEndTime) ||
                other.shiftEndTime == shiftEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phoneNumber,
      email,
      status,
      currentLocation,
      activeSamplesCount,
      batteryLevel,
      smartBagTemperature,
      deviceId,
      avatarUrl,
      const DeepCollectionEquality().hash(_certifications),
      stats,
      lastActiveAt,
      shiftStartTime,
      shiftEndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhlebotomistImplCopyWith<_$PhlebotomistImpl> get copyWith =>
      __$$PhlebotomistImplCopyWithImpl<_$PhlebotomistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhlebotomistImplToJson(
      this,
    );
  }
}

abstract class _Phlebotomist implements Phlebotomist {
  const factory _Phlebotomist(
      {required final String id,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final PhlebotomistStatus status,
      required final GeoLocation? currentLocation,
      required final int activeSamplesCount,
      required final double batteryLevel,
      final double? smartBagTemperature,
      final String? deviceId,
      final String? avatarUrl,
      required final List<String> certifications,
      required final PhlebotomistStats stats,
      final DateTime? lastActiveAt,
      final DateTime? shiftStartTime,
      final DateTime? shiftEndTime}) = _$PhlebotomistImpl;

  factory _Phlebotomist.fromJson(Map<String, dynamic> json) =
      _$PhlebotomistImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  PhlebotomistStatus get status;
  @override
  GeoLocation? get currentLocation;
  @override
  int get activeSamplesCount;
  @override
  double get batteryLevel;
  @override
  double? get smartBagTemperature;
  @override
  String? get deviceId;
  @override
  String? get avatarUrl;
  @override
  List<String> get certifications;
  @override
  PhlebotomistStats get stats;
  @override
  DateTime? get lastActiveAt;
  @override
  DateTime? get shiftStartTime;
  @override
  DateTime? get shiftEndTime;
  @override
  @JsonKey(ignore: true)
  _$$PhlebotomistImplCopyWith<_$PhlebotomistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhlebotomistStats _$PhlebotomistStatsFromJson(Map<String, dynamic> json) {
  return _PhlebotomistStats.fromJson(json);
}

/// @nodoc
mixin _$PhlebotomistStats {
  int get totalCollections => throw _privateConstructorUsedError;
  int get todayCollections => throw _privateConstructorUsedError;
  double get averageCollectionTime =>
      throw _privateConstructorUsedError; // minutes
  double get successRate => throw _privateConstructorUsedError;
  int get rejectionCount => throw _privateConstructorUsedError;
  double get averageIntegrityScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhlebotomistStatsCopyWith<PhlebotomistStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhlebotomistStatsCopyWith<$Res> {
  factory $PhlebotomistStatsCopyWith(
          PhlebotomistStats value, $Res Function(PhlebotomistStats) then) =
      _$PhlebotomistStatsCopyWithImpl<$Res, PhlebotomistStats>;
  @useResult
  $Res call(
      {int totalCollections,
      int todayCollections,
      double averageCollectionTime,
      double successRate,
      int rejectionCount,
      double averageIntegrityScore});
}

/// @nodoc
class _$PhlebotomistStatsCopyWithImpl<$Res, $Val extends PhlebotomistStats>
    implements $PhlebotomistStatsCopyWith<$Res> {
  _$PhlebotomistStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCollections = null,
    Object? todayCollections = null,
    Object? averageCollectionTime = null,
    Object? successRate = null,
    Object? rejectionCount = null,
    Object? averageIntegrityScore = null,
  }) {
    return _then(_value.copyWith(
      totalCollections: null == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int,
      todayCollections: null == todayCollections
          ? _value.todayCollections
          : todayCollections // ignore: cast_nullable_to_non_nullable
              as int,
      averageCollectionTime: null == averageCollectionTime
          ? _value.averageCollectionTime
          : averageCollectionTime // ignore: cast_nullable_to_non_nullable
              as double,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
      rejectionCount: null == rejectionCount
          ? _value.rejectionCount
          : rejectionCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageIntegrityScore: null == averageIntegrityScore
          ? _value.averageIntegrityScore
          : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhlebotomistStatsImplCopyWith<$Res>
    implements $PhlebotomistStatsCopyWith<$Res> {
  factory _$$PhlebotomistStatsImplCopyWith(_$PhlebotomistStatsImpl value,
          $Res Function(_$PhlebotomistStatsImpl) then) =
      __$$PhlebotomistStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCollections,
      int todayCollections,
      double averageCollectionTime,
      double successRate,
      int rejectionCount,
      double averageIntegrityScore});
}

/// @nodoc
class __$$PhlebotomistStatsImplCopyWithImpl<$Res>
    extends _$PhlebotomistStatsCopyWithImpl<$Res, _$PhlebotomistStatsImpl>
    implements _$$PhlebotomistStatsImplCopyWith<$Res> {
  __$$PhlebotomistStatsImplCopyWithImpl(_$PhlebotomistStatsImpl _value,
      $Res Function(_$PhlebotomistStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCollections = null,
    Object? todayCollections = null,
    Object? averageCollectionTime = null,
    Object? successRate = null,
    Object? rejectionCount = null,
    Object? averageIntegrityScore = null,
  }) {
    return _then(_$PhlebotomistStatsImpl(
      totalCollections: null == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int,
      todayCollections: null == todayCollections
          ? _value.todayCollections
          : todayCollections // ignore: cast_nullable_to_non_nullable
              as int,
      averageCollectionTime: null == averageCollectionTime
          ? _value.averageCollectionTime
          : averageCollectionTime // ignore: cast_nullable_to_non_nullable
              as double,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
      rejectionCount: null == rejectionCount
          ? _value.rejectionCount
          : rejectionCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageIntegrityScore: null == averageIntegrityScore
          ? _value.averageIntegrityScore
          : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhlebotomistStatsImpl implements _PhlebotomistStats {
  const _$PhlebotomistStatsImpl(
      {required this.totalCollections,
      required this.todayCollections,
      required this.averageCollectionTime,
      required this.successRate,
      required this.rejectionCount,
      required this.averageIntegrityScore});

  factory _$PhlebotomistStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhlebotomistStatsImplFromJson(json);

  @override
  final int totalCollections;
  @override
  final int todayCollections;
  @override
  final double averageCollectionTime;
// minutes
  @override
  final double successRate;
  @override
  final int rejectionCount;
  @override
  final double averageIntegrityScore;

  @override
  String toString() {
    return 'PhlebotomistStats(totalCollections: $totalCollections, todayCollections: $todayCollections, averageCollectionTime: $averageCollectionTime, successRate: $successRate, rejectionCount: $rejectionCount, averageIntegrityScore: $averageIntegrityScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhlebotomistStatsImpl &&
            (identical(other.totalCollections, totalCollections) ||
                other.totalCollections == totalCollections) &&
            (identical(other.todayCollections, todayCollections) ||
                other.todayCollections == todayCollections) &&
            (identical(other.averageCollectionTime, averageCollectionTime) ||
                other.averageCollectionTime == averageCollectionTime) &&
            (identical(other.successRate, successRate) ||
                other.successRate == successRate) &&
            (identical(other.rejectionCount, rejectionCount) ||
                other.rejectionCount == rejectionCount) &&
            (identical(other.averageIntegrityScore, averageIntegrityScore) ||
                other.averageIntegrityScore == averageIntegrityScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalCollections,
      todayCollections,
      averageCollectionTime,
      successRate,
      rejectionCount,
      averageIntegrityScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhlebotomistStatsImplCopyWith<_$PhlebotomistStatsImpl> get copyWith =>
      __$$PhlebotomistStatsImplCopyWithImpl<_$PhlebotomistStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhlebotomistStatsImplToJson(
      this,
    );
  }
}

abstract class _PhlebotomistStats implements PhlebotomistStats {
  const factory _PhlebotomistStats(
      {required final int totalCollections,
      required final int todayCollections,
      required final double averageCollectionTime,
      required final double successRate,
      required final int rejectionCount,
      required final double averageIntegrityScore}) = _$PhlebotomistStatsImpl;

  factory _PhlebotomistStats.fromJson(Map<String, dynamic> json) =
      _$PhlebotomistStatsImpl.fromJson;

  @override
  int get totalCollections;
  @override
  int get todayCollections;
  @override
  double get averageCollectionTime;
  @override // minutes
  double get successRate;
  @override
  int get rejectionCount;
  @override
  double get averageIntegrityScore;
  @override
  @JsonKey(ignore: true)
  _$$PhlebotomistStatsImplCopyWith<_$PhlebotomistStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
