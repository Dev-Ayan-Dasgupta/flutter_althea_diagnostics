// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phlebotomist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhlebotomistModel {

 String get id; String get name; String get phoneNumber; String get email; String get status; GeoLocationModel? get currentLocation; int get activeSamplesCount; double get batteryLevel; double? get smartBagTemperature; String? get deviceId; String? get avatarUrl; List<String> get certifications; PhlebotomistStatsModel get stats; String? get lastActiveAt; String? get shiftStartTime; String? get shiftEndTime;
/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhlebotomistModelCopyWith<PhlebotomistModel> get copyWith => _$PhlebotomistModelCopyWithImpl<PhlebotomistModel>(this as PhlebotomistModel, _$identity);

  /// Serializes this PhlebotomistModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhlebotomistModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeSamplesCount, activeSamplesCount) || other.activeSamplesCount == activeSamplesCount)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.smartBagTemperature, smartBagTemperature) || other.smartBagTemperature == smartBagTemperature)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.shiftStartTime, shiftStartTime) || other.shiftStartTime == shiftStartTime)&&(identical(other.shiftEndTime, shiftEndTime) || other.shiftEndTime == shiftEndTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,email,status,currentLocation,activeSamplesCount,batteryLevel,smartBagTemperature,deviceId,avatarUrl,const DeepCollectionEquality().hash(certifications),stats,lastActiveAt,shiftStartTime,shiftEndTime);

@override
String toString() {
  return 'PhlebotomistModel(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, status: $status, currentLocation: $currentLocation, activeSamplesCount: $activeSamplesCount, batteryLevel: $batteryLevel, smartBagTemperature: $smartBagTemperature, deviceId: $deviceId, avatarUrl: $avatarUrl, certifications: $certifications, stats: $stats, lastActiveAt: $lastActiveAt, shiftStartTime: $shiftStartTime, shiftEndTime: $shiftEndTime)';
}


}

/// @nodoc
abstract mixin class $PhlebotomistModelCopyWith<$Res>  {
  factory $PhlebotomistModelCopyWith(PhlebotomistModel value, $Res Function(PhlebotomistModel) _then) = _$PhlebotomistModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String phoneNumber, String email, String status, GeoLocationModel? currentLocation, int activeSamplesCount, double batteryLevel, double? smartBagTemperature, String? deviceId, String? avatarUrl, List<String> certifications, PhlebotomistStatsModel stats, String? lastActiveAt, String? shiftStartTime, String? shiftEndTime
});


$GeoLocationModelCopyWith<$Res>? get currentLocation;$PhlebotomistStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class _$PhlebotomistModelCopyWithImpl<$Res>
    implements $PhlebotomistModelCopyWith<$Res> {
  _$PhlebotomistModelCopyWithImpl(this._self, this._then);

  final PhlebotomistModel _self;
  final $Res Function(PhlebotomistModel) _then;

/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? email = null,Object? status = null,Object? currentLocation = freezed,Object? activeSamplesCount = null,Object? batteryLevel = null,Object? smartBagTemperature = freezed,Object? deviceId = freezed,Object? avatarUrl = freezed,Object? certifications = null,Object? stats = null,Object? lastActiveAt = freezed,Object? shiftStartTime = freezed,Object? shiftEndTime = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocationModel?,activeSamplesCount: null == activeSamplesCount ? _self.activeSamplesCount : activeSamplesCount // ignore: cast_nullable_to_non_nullable
as int,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as double,smartBagTemperature: freezed == smartBagTemperature ? _self.smartBagTemperature : smartBagTemperature // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: null == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatsModel,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,shiftStartTime: freezed == shiftStartTime ? _self.shiftStartTime : shiftStartTime // ignore: cast_nullable_to_non_nullable
as String?,shiftEndTime: freezed == shiftEndTime ? _self.shiftEndTime : shiftEndTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationModelCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
    return null;
  }

  return $GeoLocationModelCopyWith<$Res>(_self.currentLocation!, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhlebotomistStatsModelCopyWith<$Res> get stats {
  
  return $PhlebotomistStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [PhlebotomistModel].
extension PhlebotomistModelPatterns on PhlebotomistModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhlebotomistModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhlebotomistModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhlebotomistModel value)  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhlebotomistModel value)?  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phoneNumber,  String email,  String status,  GeoLocationModel? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStatsModel stats,  String? lastActiveAt,  String? shiftStartTime,  String? shiftEndTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhlebotomistModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phoneNumber,  String email,  String status,  GeoLocationModel? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStatsModel stats,  String? lastActiveAt,  String? shiftStartTime,  String? shiftEndTime)  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phoneNumber,  String email,  String status,  GeoLocationModel? currentLocation,  int activeSamplesCount,  double batteryLevel,  double? smartBagTemperature,  String? deviceId,  String? avatarUrl,  List<String> certifications,  PhlebotomistStatsModel stats,  String? lastActiveAt,  String? shiftStartTime,  String? shiftEndTime)?  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistModel() when $default != null:
return $default(_that.id,_that.name,_that.phoneNumber,_that.email,_that.status,_that.currentLocation,_that.activeSamplesCount,_that.batteryLevel,_that.smartBagTemperature,_that.deviceId,_that.avatarUrl,_that.certifications,_that.stats,_that.lastActiveAt,_that.shiftStartTime,_that.shiftEndTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhlebotomistModel implements PhlebotomistModel {
  const _PhlebotomistModel({required this.id, required this.name, required this.phoneNumber, required this.email, required this.status, this.currentLocation, required this.activeSamplesCount, required this.batteryLevel, this.smartBagTemperature, this.deviceId, this.avatarUrl, required final  List<String> certifications, required this.stats, this.lastActiveAt, this.shiftStartTime, this.shiftEndTime}): _certifications = certifications;
  factory _PhlebotomistModel.fromJson(Map<String, dynamic> json) => _$PhlebotomistModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String phoneNumber;
@override final  String email;
@override final  String status;
@override final  GeoLocationModel? currentLocation;
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

@override final  PhlebotomistStatsModel stats;
@override final  String? lastActiveAt;
@override final  String? shiftStartTime;
@override final  String? shiftEndTime;

/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhlebotomistModelCopyWith<_PhlebotomistModel> get copyWith => __$PhlebotomistModelCopyWithImpl<_PhlebotomistModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhlebotomistModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhlebotomistModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeSamplesCount, activeSamplesCount) || other.activeSamplesCount == activeSamplesCount)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.smartBagTemperature, smartBagTemperature) || other.smartBagTemperature == smartBagTemperature)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.shiftStartTime, shiftStartTime) || other.shiftStartTime == shiftStartTime)&&(identical(other.shiftEndTime, shiftEndTime) || other.shiftEndTime == shiftEndTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,email,status,currentLocation,activeSamplesCount,batteryLevel,smartBagTemperature,deviceId,avatarUrl,const DeepCollectionEquality().hash(_certifications),stats,lastActiveAt,shiftStartTime,shiftEndTime);

@override
String toString() {
  return 'PhlebotomistModel(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, status: $status, currentLocation: $currentLocation, activeSamplesCount: $activeSamplesCount, batteryLevel: $batteryLevel, smartBagTemperature: $smartBagTemperature, deviceId: $deviceId, avatarUrl: $avatarUrl, certifications: $certifications, stats: $stats, lastActiveAt: $lastActiveAt, shiftStartTime: $shiftStartTime, shiftEndTime: $shiftEndTime)';
}


}

/// @nodoc
abstract mixin class _$PhlebotomistModelCopyWith<$Res> implements $PhlebotomistModelCopyWith<$Res> {
  factory _$PhlebotomistModelCopyWith(_PhlebotomistModel value, $Res Function(_PhlebotomistModel) _then) = __$PhlebotomistModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phoneNumber, String email, String status, GeoLocationModel? currentLocation, int activeSamplesCount, double batteryLevel, double? smartBagTemperature, String? deviceId, String? avatarUrl, List<String> certifications, PhlebotomistStatsModel stats, String? lastActiveAt, String? shiftStartTime, String? shiftEndTime
});


@override $GeoLocationModelCopyWith<$Res>? get currentLocation;@override $PhlebotomistStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class __$PhlebotomistModelCopyWithImpl<$Res>
    implements _$PhlebotomistModelCopyWith<$Res> {
  __$PhlebotomistModelCopyWithImpl(this._self, this._then);

  final _PhlebotomistModel _self;
  final $Res Function(_PhlebotomistModel) _then;

/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? email = null,Object? status = null,Object? currentLocation = freezed,Object? activeSamplesCount = null,Object? batteryLevel = null,Object? smartBagTemperature = freezed,Object? deviceId = freezed,Object? avatarUrl = freezed,Object? certifications = null,Object? stats = null,Object? lastActiveAt = freezed,Object? shiftStartTime = freezed,Object? shiftEndTime = freezed,}) {
  return _then(_PhlebotomistModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocationModel?,activeSamplesCount: null == activeSamplesCount ? _self.activeSamplesCount : activeSamplesCount // ignore: cast_nullable_to_non_nullable
as int,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as double,smartBagTemperature: freezed == smartBagTemperature ? _self.smartBagTemperature : smartBagTemperature // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: null == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatsModel,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,shiftStartTime: freezed == shiftStartTime ? _self.shiftStartTime : shiftStartTime // ignore: cast_nullable_to_non_nullable
as String?,shiftEndTime: freezed == shiftEndTime ? _self.shiftEndTime : shiftEndTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationModelCopyWith<$Res>? get currentLocation {
    if (_self.currentLocation == null) {
    return null;
  }

  return $GeoLocationModelCopyWith<$Res>(_self.currentLocation!, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of PhlebotomistModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhlebotomistStatsModelCopyWith<$Res> get stats {
  
  return $PhlebotomistStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// @nodoc
mixin _$PhlebotomistStatsModel {

 int get totalCollections; int get todayCollections; double get averageCollectionTime; double get successRate; int get rejectionCount; double get averageIntegrityScore;
/// Create a copy of PhlebotomistStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhlebotomistStatsModelCopyWith<PhlebotomistStatsModel> get copyWith => _$PhlebotomistStatsModelCopyWithImpl<PhlebotomistStatsModel>(this as PhlebotomistStatsModel, _$identity);

  /// Serializes this PhlebotomistStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhlebotomistStatsModel&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.todayCollections, todayCollections) || other.todayCollections == todayCollections)&&(identical(other.averageCollectionTime, averageCollectionTime) || other.averageCollectionTime == averageCollectionTime)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.rejectionCount, rejectionCount) || other.rejectionCount == rejectionCount)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollections,todayCollections,averageCollectionTime,successRate,rejectionCount,averageIntegrityScore);

@override
String toString() {
  return 'PhlebotomistStatsModel(totalCollections: $totalCollections, todayCollections: $todayCollections, averageCollectionTime: $averageCollectionTime, successRate: $successRate, rejectionCount: $rejectionCount, averageIntegrityScore: $averageIntegrityScore)';
}


}

/// @nodoc
abstract mixin class $PhlebotomistStatsModelCopyWith<$Res>  {
  factory $PhlebotomistStatsModelCopyWith(PhlebotomistStatsModel value, $Res Function(PhlebotomistStatsModel) _then) = _$PhlebotomistStatsModelCopyWithImpl;
@useResult
$Res call({
 int totalCollections, int todayCollections, double averageCollectionTime, double successRate, int rejectionCount, double averageIntegrityScore
});




}
/// @nodoc
class _$PhlebotomistStatsModelCopyWithImpl<$Res>
    implements $PhlebotomistStatsModelCopyWith<$Res> {
  _$PhlebotomistStatsModelCopyWithImpl(this._self, this._then);

  final PhlebotomistStatsModel _self;
  final $Res Function(PhlebotomistStatsModel) _then;

/// Create a copy of PhlebotomistStatsModel
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


/// Adds pattern-matching-related methods to [PhlebotomistStatsModel].
extension PhlebotomistStatsModelPatterns on PhlebotomistStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhlebotomistStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhlebotomistStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhlebotomistStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhlebotomistStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistStatsModel() when $default != null:
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
case _PhlebotomistStatsModel() when $default != null:
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
case _PhlebotomistStatsModel():
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
case _PhlebotomistStatsModel() when $default != null:
return $default(_that.totalCollections,_that.todayCollections,_that.averageCollectionTime,_that.successRate,_that.rejectionCount,_that.averageIntegrityScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhlebotomistStatsModel implements PhlebotomistStatsModel {
  const _PhlebotomistStatsModel({required this.totalCollections, required this.todayCollections, required this.averageCollectionTime, required this.successRate, required this.rejectionCount, required this.averageIntegrityScore});
  factory _PhlebotomistStatsModel.fromJson(Map<String, dynamic> json) => _$PhlebotomistStatsModelFromJson(json);

@override final  int totalCollections;
@override final  int todayCollections;
@override final  double averageCollectionTime;
@override final  double successRate;
@override final  int rejectionCount;
@override final  double averageIntegrityScore;

/// Create a copy of PhlebotomistStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhlebotomistStatsModelCopyWith<_PhlebotomistStatsModel> get copyWith => __$PhlebotomistStatsModelCopyWithImpl<_PhlebotomistStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhlebotomistStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhlebotomistStatsModel&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.todayCollections, todayCollections) || other.todayCollections == todayCollections)&&(identical(other.averageCollectionTime, averageCollectionTime) || other.averageCollectionTime == averageCollectionTime)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.rejectionCount, rejectionCount) || other.rejectionCount == rejectionCount)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollections,todayCollections,averageCollectionTime,successRate,rejectionCount,averageIntegrityScore);

@override
String toString() {
  return 'PhlebotomistStatsModel(totalCollections: $totalCollections, todayCollections: $todayCollections, averageCollectionTime: $averageCollectionTime, successRate: $successRate, rejectionCount: $rejectionCount, averageIntegrityScore: $averageIntegrityScore)';
}


}

/// @nodoc
abstract mixin class _$PhlebotomistStatsModelCopyWith<$Res> implements $PhlebotomistStatsModelCopyWith<$Res> {
  factory _$PhlebotomistStatsModelCopyWith(_PhlebotomistStatsModel value, $Res Function(_PhlebotomistStatsModel) _then) = __$PhlebotomistStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalCollections, int todayCollections, double averageCollectionTime, double successRate, int rejectionCount, double averageIntegrityScore
});




}
/// @nodoc
class __$PhlebotomistStatsModelCopyWithImpl<$Res>
    implements _$PhlebotomistStatsModelCopyWith<$Res> {
  __$PhlebotomistStatsModelCopyWithImpl(this._self, this._then);

  final _PhlebotomistStatsModel _self;
  final $Res Function(_PhlebotomistStatsModel) _then;

/// Create a copy of PhlebotomistStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCollections = null,Object? todayCollections = null,Object? averageCollectionTime = null,Object? successRate = null,Object? rejectionCount = null,Object? averageIntegrityScore = null,}) {
  return _then(_PhlebotomistStatsModel(
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
