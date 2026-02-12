// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phlebotomist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Phlebotomist {

 String get id; String get name; String get phoneNumber; String get email; PhlebotomistStatus get status; GeoLocation? get currentLocation; int get activeSamplesCount; double get batteryLevel; double? get smartBagTemperature; String? get deviceId; String? get avatarUrl; List<String> get certifications; PhlebotomistStats get stats; DateTime? get lastActiveAt; DateTime? get shiftStartTime; DateTime? get shiftEndTime;
/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhlebotomistCopyWith<Phlebotomist> get copyWith => _$PhlebotomistCopyWithImpl<Phlebotomist>(this as Phlebotomist, _$identity);

  /// Serializes this Phlebotomist to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Phlebotomist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeSamplesCount, activeSamplesCount) || other.activeSamplesCount == activeSamplesCount)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.smartBagTemperature, smartBagTemperature) || other.smartBagTemperature == smartBagTemperature)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.shiftStartTime, shiftStartTime) || other.shiftStartTime == shiftStartTime)&&(identical(other.shiftEndTime, shiftEndTime) || other.shiftEndTime == shiftEndTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,email,status,currentLocation,activeSamplesCount,batteryLevel,smartBagTemperature,deviceId,avatarUrl,const DeepCollectionEquality().hash(certifications),stats,lastActiveAt,shiftStartTime,shiftEndTime);

@override
String toString() {
  return 'Phlebotomist(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, status: $status, currentLocation: $currentLocation, activeSamplesCount: $activeSamplesCount, batteryLevel: $batteryLevel, smartBagTemperature: $smartBagTemperature, deviceId: $deviceId, avatarUrl: $avatarUrl, certifications: $certifications, stats: $stats, lastActiveAt: $lastActiveAt, shiftStartTime: $shiftStartTime, shiftEndTime: $shiftEndTime)';
}


}

/// @nodoc
abstract mixin class $PhlebotomistCopyWith<$Res>  {
  factory $PhlebotomistCopyWith(Phlebotomist value, $Res Function(Phlebotomist) _then) = _$PhlebotomistCopyWithImpl;
@useResult
$Res call({
 String id, String name, String phoneNumber, String email, PhlebotomistStatus status, GeoLocation? currentLocation, int activeSamplesCount, double batteryLevel, double? smartBagTemperature, String? deviceId, String? avatarUrl, List<String> certifications, PhlebotomistStats stats, DateTime? lastActiveAt, DateTime? shiftStartTime, DateTime? shiftEndTime
});


$GeoLocationCopyWith<$Res>? get currentLocation;$PhlebotomistStatsCopyWith<$Res> get stats;

}
/// @nodoc
class _$PhlebotomistCopyWithImpl<$Res>
    implements $PhlebotomistCopyWith<$Res> {
  _$PhlebotomistCopyWithImpl(this._self, this._then);

  final Phlebotomist _self;
  final $Res Function(Phlebotomist) _then;

/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? email = null,Object? status = null,Object? currentLocation = freezed,Object? activeSamplesCount = null,Object? batteryLevel = null,Object? smartBagTemperature = freezed,Object? deviceId = freezed,Object? avatarUrl = freezed,Object? certifications = null,Object? stats = null,Object? lastActiveAt = freezed,Object? shiftStartTime = freezed,Object? shiftEndTime = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation?,activeSamplesCount: null == activeSamplesCount ? _self.activeSamplesCount : activeSamplesCount // ignore: cast_nullable_to_non_nullable
as int,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as double,smartBagTemperature: freezed == smartBagTemperature ? _self.smartBagTemperature : smartBagTemperature // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: null == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PhlebotomistStats,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftStartTime: freezed == shiftStartTime ? _self.shiftStartTime : shiftStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftEndTime: freezed == shiftEndTime ? _self.shiftEndTime : shiftEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
    return null;
  }

  return $GeoLocationCopyWith<$Res>(_self.currentLocation!, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhlebotomistStatsCopyWith<$Res> get stats {
  
  return $PhlebotomistStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [Phlebotomist].
extension PhlebotomistPatterns on Phlebotomist {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Phlebotomist value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Phlebotomist() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Phlebotomist value)  $default,){
final _that = this;
switch (_that) {
case _Phlebotomist():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Phlebotomist value)?  $default,){
final _that = this;
switch (_that) {
case _Phlebotomist() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phoneNumber,  String email,  PhlebotomistStatus status,  GeoLocation? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStats stats,  DateTime? lastActiveAt,  DateTime? shiftStartTime,  DateTime? shiftEndTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Phlebotomist() when $default != null:
return $default(_that.id,_that.name,_that.phoneNumber,_that.email,_that.status,_that.currentLocation,_that.activeSamplesCount,_that.batteryLevel,_that.smartBagTemperature,_that.deviceId,_that.avatarUrl,_that.certifications,_that.stats,_that.lastActiveAt,_that.shiftStartTime,_that.shiftEndTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phoneNumber,  String email,  PhlebotomistStatus status,  GeoLocation? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStats stats,  DateTime? lastActiveAt,  DateTime? shiftStartTime,  DateTime? shiftEndTime)  $default,) {final _that = this;
switch (_that) {
case _Phlebotomist():
return $default(_that.id,_that.name,_that.phoneNumber,_that.email,_that.status,_that.currentLocation,_that.activeSamplesCount,_that.batteryLevel,_that.smartBagTemperature,_that.deviceId,_that.avatarUrl,_that.certifications,_that.stats,_that.lastActiveAt,_that.shiftStartTime,_that.shiftEndTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phoneNumber,  String email,  PhlebotomistStatus status,  GeoLocation? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStats stats,  DateTime? lastActiveAt,  DateTime? shiftStartTime,  DateTime? shiftEndTime)?  $default,) {final _that = this;
switch (_that) {
case _Phlebotomist() when $default != null:
return $default(_that.id,_that.name,_that.phoneNumber,_that.email,_that.status,_that.currentLocation,_that.activeSamplesCount,_that.batteryLevel,_that.smartBagTemperature,_that.deviceId,_that.avatarUrl,_that.certifications,_that.stats,_that.lastActiveAt,_that.shiftStartTime,_that.shiftEndTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Phlebotomist implements Phlebotomist {
  const _Phlebotomist({required this.id, required this.name, required this.phoneNumber, required this.email, required this.status, required this.currentLocation, required this.activeSamplesCount, required this.batteryLevel, this.smartBagTemperature, this.deviceId, this.avatarUrl, required final  List<String> certifications, required this.stats, this.lastActiveAt, this.shiftStartTime, this.shiftEndTime}): _certifications = certifications;
  factory _Phlebotomist.fromJson(Map<String, dynamic> json) => _$PhlebotomistFromJson(json);

@override final  String id;
@override final  String name;
@override final  String phoneNumber;
@override final  String email;
@override final  PhlebotomistStatus status;
@override final  GeoLocation? currentLocation;
@override final  int activeSamplesCount;
@override final  double batteryLevel;
@override final  double? smartBagTemperature;
@override final  String? deviceId;
@override final  String? avatarUrl;
 final  List<String> _certifications;
@override List<String> get certifications {
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certifications);
}

@override final  PhlebotomistStats stats;
@override final  DateTime? lastActiveAt;
@override final  DateTime? shiftStartTime;
@override final  DateTime? shiftEndTime;

/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhlebotomistCopyWith<_Phlebotomist> get copyWith => __$PhlebotomistCopyWithImpl<_Phlebotomist>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhlebotomistToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Phlebotomist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeSamplesCount, activeSamplesCount) || other.activeSamplesCount == activeSamplesCount)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.smartBagTemperature, smartBagTemperature) || other.smartBagTemperature == smartBagTemperature)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.shiftStartTime, shiftStartTime) || other.shiftStartTime == shiftStartTime)&&(identical(other.shiftEndTime, shiftEndTime) || other.shiftEndTime == shiftEndTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,email,status,currentLocation,activeSamplesCount,batteryLevel,smartBagTemperature,deviceId,avatarUrl,const DeepCollectionEquality().hash(_certifications),stats,lastActiveAt,shiftStartTime,shiftEndTime);

@override
String toString() {
  return 'Phlebotomist(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, status: $status, currentLocation: $currentLocation, activeSamplesCount: $activeSamplesCount, batteryLevel: $batteryLevel, smartBagTemperature: $smartBagTemperature, deviceId: $deviceId, avatarUrl: $avatarUrl, certifications: $certifications, stats: $stats, lastActiveAt: $lastActiveAt, shiftStartTime: $shiftStartTime, shiftEndTime: $shiftEndTime)';
}


}

/// @nodoc
abstract mixin class _$PhlebotomistCopyWith<$Res> implements $PhlebotomistCopyWith<$Res> {
  factory _$PhlebotomistCopyWith(_Phlebotomist value, $Res Function(_Phlebotomist) _then) = __$PhlebotomistCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phoneNumber, String email, PhlebotomistStatus status, GeoLocation? currentLocation, int activeSamplesCount, double batteryLevel, double? smartBagTemperature, String? deviceId, String? avatarUrl, List<String> certifications, PhlebotomistStats stats, DateTime? lastActiveAt, DateTime? shiftStartTime, DateTime? shiftEndTime
});


@override $GeoLocationCopyWith<$Res>? get currentLocation;@override $PhlebotomistStatsCopyWith<$Res> get stats;

}
/// @nodoc
class __$PhlebotomistCopyWithImpl<$Res>
    implements _$PhlebotomistCopyWith<$Res> {
  __$PhlebotomistCopyWithImpl(this._self, this._then);

  final _Phlebotomist _self;
  final $Res Function(_Phlebotomist) _then;

/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? email = null,Object? status = null,Object? currentLocation = freezed,Object? activeSamplesCount = null,Object? batteryLevel = null,Object? smartBagTemperature = freezed,Object? deviceId = freezed,Object? avatarUrl = freezed,Object? certifications = null,Object? stats = null,Object? lastActiveAt = freezed,Object? shiftStartTime = freezed,Object? shiftEndTime = freezed,}) {
  return _then(_Phlebotomist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation?,activeSamplesCount: null == activeSamplesCount ? _self.activeSamplesCount : activeSamplesCount // ignore: cast_nullable_to_non_nullable
as int,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as double,smartBagTemperature: freezed == smartBagTemperature ? _self.smartBagTemperature : smartBagTemperature // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: null == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PhlebotomistStats,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftStartTime: freezed == shiftStartTime ? _self.shiftStartTime : shiftStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftEndTime: freezed == shiftEndTime ? _self.shiftEndTime : shiftEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
    return null;
  }

  return $GeoLocationCopyWith<$Res>(_self.currentLocation!, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of Phlebotomist
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhlebotomistStatsCopyWith<$Res> get stats {
  
  return $PhlebotomistStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// @nodoc
mixin _$PhlebotomistStats {

 int get totalCollections; int get todayCollections; double get averageCollectionTime;// minutes
 double get successRate; int get rejectionCount; double get averageIntegrityScore;
/// Create a copy of PhlebotomistStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhlebotomistStatsCopyWith<PhlebotomistStats> get copyWith => _$PhlebotomistStatsCopyWithImpl<PhlebotomistStats>(this as PhlebotomistStats, _$identity);

  /// Serializes this PhlebotomistStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhlebotomistStats&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.todayCollections, todayCollections) || other.todayCollections == todayCollections)&&(identical(other.averageCollectionTime, averageCollectionTime) || other.averageCollectionTime == averageCollectionTime)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.rejectionCount, rejectionCount) || other.rejectionCount == rejectionCount)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollections,todayCollections,averageCollectionTime,successRate,rejectionCount,averageIntegrityScore);

@override
String toString() {
  return 'PhlebotomistStats(totalCollections: $totalCollections, todayCollections: $todayCollections, averageCollectionTime: $averageCollectionTime, successRate: $successRate, rejectionCount: $rejectionCount, averageIntegrityScore: $averageIntegrityScore)';
}


}

/// @nodoc
abstract mixin class $PhlebotomistStatsCopyWith<$Res>  {
  factory $PhlebotomistStatsCopyWith(PhlebotomistStats value, $Res Function(PhlebotomistStats) _then) = _$PhlebotomistStatsCopyWithImpl;
@useResult
$Res call({
 int totalCollections, int todayCollections, double averageCollectionTime, double successRate, int rejectionCount, double averageIntegrityScore
});




}
/// @nodoc
class _$PhlebotomistStatsCopyWithImpl<$Res>
    implements $PhlebotomistStatsCopyWith<$Res> {
  _$PhlebotomistStatsCopyWithImpl(this._self, this._then);

  final PhlebotomistStats _self;
  final $Res Function(PhlebotomistStats) _then;

/// Create a copy of PhlebotomistStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCollections = null,Object? todayCollections = null,Object? averageCollectionTime = null,Object? successRate = null,Object? rejectionCount = null,Object? averageIntegrityScore = null,}) {
  return _then(_self.copyWith(
totalCollections: null == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int,todayCollections: null == todayCollections ? _self.todayCollections : todayCollections // ignore: cast_nullable_to_non_nullable
as int,averageCollectionTime: null == averageCollectionTime ? _self.averageCollectionTime : averageCollectionTime // ignore: cast_nullable_to_non_nullable
as double,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,rejectionCount: null == rejectionCount ? _self.rejectionCount : rejectionCount // ignore: cast_nullable_to_non_nullable
as int,averageIntegrityScore: null == averageIntegrityScore ? _self.averageIntegrityScore : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PhlebotomistStats].
extension PhlebotomistStatsPatterns on PhlebotomistStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhlebotomistStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhlebotomistStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhlebotomistStats value)  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhlebotomistStats value)?  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCollections,  int todayCollections,  double averageCollectionTime,  double successRate,  int rejectionCount,  double averageIntegrityScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhlebotomistStats() when $default != null:
return $default(_that.totalCollections,_that.todayCollections,_that.averageCollectionTime,_that.successRate,_that.rejectionCount,_that.averageIntegrityScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCollections,  int todayCollections,  double averageCollectionTime,  double successRate,  int rejectionCount,  double averageIntegrityScore)  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistStats():
return $default(_that.totalCollections,_that.todayCollections,_that.averageCollectionTime,_that.successRate,_that.rejectionCount,_that.averageIntegrityScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCollections,  int todayCollections,  double averageCollectionTime,  double successRate,  int rejectionCount,  double averageIntegrityScore)?  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistStats() when $default != null:
return $default(_that.totalCollections,_that.todayCollections,_that.averageCollectionTime,_that.successRate,_that.rejectionCount,_that.averageIntegrityScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhlebotomistStats implements PhlebotomistStats {
  const _PhlebotomistStats({required this.totalCollections, required this.todayCollections, required this.averageCollectionTime, required this.successRate, required this.rejectionCount, required this.averageIntegrityScore});
  factory _PhlebotomistStats.fromJson(Map<String, dynamic> json) => _$PhlebotomistStatsFromJson(json);

@override final  int totalCollections;
@override final  int todayCollections;
@override final  double averageCollectionTime;
// minutes
@override final  double successRate;
@override final  int rejectionCount;
@override final  double averageIntegrityScore;

/// Create a copy of PhlebotomistStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhlebotomistStatsCopyWith<_PhlebotomistStats> get copyWith => __$PhlebotomistStatsCopyWithImpl<_PhlebotomistStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhlebotomistStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhlebotomistStats&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.todayCollections, todayCollections) || other.todayCollections == todayCollections)&&(identical(other.averageCollectionTime, averageCollectionTime) || other.averageCollectionTime == averageCollectionTime)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.rejectionCount, rejectionCount) || other.rejectionCount == rejectionCount)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollections,todayCollections,averageCollectionTime,successRate,rejectionCount,averageIntegrityScore);

@override
String toString() {
  return 'PhlebotomistStats(totalCollections: $totalCollections, todayCollections: $todayCollections, averageCollectionTime: $averageCollectionTime, successRate: $successRate, rejectionCount: $rejectionCount, averageIntegrityScore: $averageIntegrityScore)';
}


}

/// @nodoc
abstract mixin class _$PhlebotomistStatsCopyWith<$Res> implements $PhlebotomistStatsCopyWith<$Res> {
  factory _$PhlebotomistStatsCopyWith(_PhlebotomistStats value, $Res Function(_PhlebotomistStats) _then) = __$PhlebotomistStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalCollections, int todayCollections, double averageCollectionTime, double successRate, int rejectionCount, double averageIntegrityScore
});




}
/// @nodoc
class __$PhlebotomistStatsCopyWithImpl<$Res>
    implements _$PhlebotomistStatsCopyWith<$Res> {
  __$PhlebotomistStatsCopyWithImpl(this._self, this._then);

  final _PhlebotomistStats _self;
  final $Res Function(_PhlebotomistStats) _then;

/// Create a copy of PhlebotomistStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCollections = null,Object? todayCollections = null,Object? averageCollectionTime = null,Object? successRate = null,Object? rejectionCount = null,Object? averageIntegrityScore = null,}) {
  return _then(_PhlebotomistStats(
totalCollections: null == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int,todayCollections: null == todayCollections ? _self.todayCollections : todayCollections // ignore: cast_nullable_to_non_nullable
as int,averageCollectionTime: null == averageCollectionTime ? _self.averageCollectionTime : averageCollectionTime // ignore: cast_nullable_to_non_nullable
as double,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,rejectionCount: null == rejectionCount ? _self.rejectionCount : rejectionCount // ignore: cast_nullable_to_non_nullable
as int,averageIntegrityScore: null == averageIntegrityScore ? _self.averageIntegrityScore : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
