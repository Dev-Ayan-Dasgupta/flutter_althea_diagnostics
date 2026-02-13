// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get id; String get name; String get email; String? get phoneNumber; String? get avatarUrl; UserRole get role; String get labId; String? get labName; List<String> get permissions; DateTime get createdAt; DateTime? get lastLoginAt;// Phlebotomist-specific fields
 PhlebotomistStatus? get phlebotomistStatus; double? get currentBalance; int? get totalCollections; double? get averageRating; List<String>? get certifications; String? get vehicleNumber; bool? get isAvailableForCollection;// Lab Admin-specific fields
 List<String>? get managedLabIds; int? get staffCount; String? get licenseNumber;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.role, role) || other.role == role)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.phlebotomistStatus, phlebotomistStatus) || other.phlebotomistStatus == phlebotomistStatus)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.isAvailableForCollection, isAvailableForCollection) || other.isAvailableForCollection == isAvailableForCollection)&&const DeepCollectionEquality().equals(other.managedLabIds, managedLabIds)&&(identical(other.staffCount, staffCount) || other.staffCount == staffCount)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,email,phoneNumber,avatarUrl,role,labId,labName,const DeepCollectionEquality().hash(permissions),createdAt,lastLoginAt,phlebotomistStatus,currentBalance,totalCollections,averageRating,const DeepCollectionEquality().hash(certifications),vehicleNumber,isAvailableForCollection,const DeepCollectionEquality().hash(managedLabIds),staffCount,licenseNumber]);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, role: $role, labId: $labId, labName: $labName, permissions: $permissions, createdAt: $createdAt, lastLoginAt: $lastLoginAt, phlebotomistStatus: $phlebotomistStatus, currentBalance: $currentBalance, totalCollections: $totalCollections, averageRating: $averageRating, certifications: $certifications, vehicleNumber: $vehicleNumber, isAvailableForCollection: $isAvailableForCollection, managedLabIds: $managedLabIds, staffCount: $staffCount, licenseNumber: $licenseNumber)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String? phoneNumber, String? avatarUrl, UserRole role, String labId, String? labName, List<String> permissions, DateTime createdAt, DateTime? lastLoginAt, PhlebotomistStatus? phlebotomistStatus, double? currentBalance, int? totalCollections, double? averageRating, List<String>? certifications, String? vehicleNumber, bool? isAvailableForCollection, List<String>? managedLabIds, int? staffCount, String? licenseNumber
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? avatarUrl = freezed,Object? role = null,Object? labId = null,Object? labName = freezed,Object? permissions = null,Object? createdAt = null,Object? lastLoginAt = freezed,Object? phlebotomistStatus = freezed,Object? currentBalance = freezed,Object? totalCollections = freezed,Object? averageRating = freezed,Object? certifications = freezed,Object? vehicleNumber = freezed,Object? isAvailableForCollection = freezed,Object? managedLabIds = freezed,Object? staffCount = freezed,Object? licenseNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phlebotomistStatus: freezed == phlebotomistStatus ? _self.phlebotomistStatus : phlebotomistStatus // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>?,vehicleNumber: freezed == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String?,isAvailableForCollection: freezed == isAvailableForCollection ? _self.isAvailableForCollection : isAvailableForCollection // ignore: cast_nullable_to_non_nullable
as bool?,managedLabIds: freezed == managedLabIds ? _self.managedLabIds : managedLabIds // ignore: cast_nullable_to_non_nullable
as List<String>?,staffCount: freezed == staffCount ? _self.staffCount : staffCount // ignore: cast_nullable_to_non_nullable
as int?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? phoneNumber,  String? avatarUrl,  UserRole role,  String labId,  String? labName,  List<String> permissions,  DateTime createdAt,  DateTime? lastLoginAt,  PhlebotomistStatus? phlebotomistStatus,  double? currentBalance,  int? totalCollections,  double? averageRating,  List<String>? certifications,  String? vehicleNumber,  bool? isAvailableForCollection,  List<String>? managedLabIds,  int? staffCount,  String? licenseNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.role,_that.labId,_that.labName,_that.permissions,_that.createdAt,_that.lastLoginAt,_that.phlebotomistStatus,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.certifications,_that.vehicleNumber,_that.isAvailableForCollection,_that.managedLabIds,_that.staffCount,_that.licenseNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? phoneNumber,  String? avatarUrl,  UserRole role,  String labId,  String? labName,  List<String> permissions,  DateTime createdAt,  DateTime? lastLoginAt,  PhlebotomistStatus? phlebotomistStatus,  double? currentBalance,  int? totalCollections,  double? averageRating,  List<String>? certifications,  String? vehicleNumber,  bool? isAvailableForCollection,  List<String>? managedLabIds,  int? staffCount,  String? licenseNumber)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.role,_that.labId,_that.labName,_that.permissions,_that.createdAt,_that.lastLoginAt,_that.phlebotomistStatus,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.certifications,_that.vehicleNumber,_that.isAvailableForCollection,_that.managedLabIds,_that.staffCount,_that.licenseNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String? phoneNumber,  String? avatarUrl,  UserRole role,  String labId,  String? labName,  List<String> permissions,  DateTime createdAt,  DateTime? lastLoginAt,  PhlebotomistStatus? phlebotomistStatus,  double? currentBalance,  int? totalCollections,  double? averageRating,  List<String>? certifications,  String? vehicleNumber,  bool? isAvailableForCollection,  List<String>? managedLabIds,  int? staffCount,  String? licenseNumber)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatarUrl,_that.role,_that.labId,_that.labName,_that.permissions,_that.createdAt,_that.lastLoginAt,_that.phlebotomistStatus,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.certifications,_that.vehicleNumber,_that.isAvailableForCollection,_that.managedLabIds,_that.staffCount,_that.licenseNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.name, required this.email, this.phoneNumber, this.avatarUrl, required this.role, required this.labId, this.labName, required final  List<String> permissions, required this.createdAt, this.lastLoginAt, this.phlebotomistStatus, this.currentBalance, this.totalCollections, this.averageRating, final  List<String>? certifications, this.vehicleNumber, this.isAvailableForCollection, final  List<String>? managedLabIds, this.staffCount, this.licenseNumber}): _permissions = permissions,_certifications = certifications,_managedLabIds = managedLabIds;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String? phoneNumber;
@override final  String? avatarUrl;
@override final  UserRole role;
@override final  String labId;
@override final  String? labName;
 final  List<String> _permissions;
@override List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

@override final  DateTime createdAt;
@override final  DateTime? lastLoginAt;
// Phlebotomist-specific fields
@override final  PhlebotomistStatus? phlebotomistStatus;
@override final  double? currentBalance;
@override final  int? totalCollections;
@override final  double? averageRating;
 final  List<String>? _certifications;
@override List<String>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? vehicleNumber;
@override final  bool? isAvailableForCollection;
// Lab Admin-specific fields
 final  List<String>? _managedLabIds;
// Lab Admin-specific fields
@override List<String>? get managedLabIds {
  final value = _managedLabIds;
  if (value == null) return null;
  if (_managedLabIds is EqualUnmodifiableListView) return _managedLabIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? staffCount;
@override final  String? licenseNumber;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.role, role) || other.role == role)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.phlebotomistStatus, phlebotomistStatus) || other.phlebotomistStatus == phlebotomistStatus)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.isAvailableForCollection, isAvailableForCollection) || other.isAvailableForCollection == isAvailableForCollection)&&const DeepCollectionEquality().equals(other._managedLabIds, _managedLabIds)&&(identical(other.staffCount, staffCount) || other.staffCount == staffCount)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,email,phoneNumber,avatarUrl,role,labId,labName,const DeepCollectionEquality().hash(_permissions),createdAt,lastLoginAt,phlebotomistStatus,currentBalance,totalCollections,averageRating,const DeepCollectionEquality().hash(_certifications),vehicleNumber,isAvailableForCollection,const DeepCollectionEquality().hash(_managedLabIds),staffCount,licenseNumber]);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, role: $role, labId: $labId, labName: $labName, permissions: $permissions, createdAt: $createdAt, lastLoginAt: $lastLoginAt, phlebotomistStatus: $phlebotomistStatus, currentBalance: $currentBalance, totalCollections: $totalCollections, averageRating: $averageRating, certifications: $certifications, vehicleNumber: $vehicleNumber, isAvailableForCollection: $isAvailableForCollection, managedLabIds: $managedLabIds, staffCount: $staffCount, licenseNumber: $licenseNumber)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String? phoneNumber, String? avatarUrl, UserRole role, String labId, String? labName, List<String> permissions, DateTime createdAt, DateTime? lastLoginAt, PhlebotomistStatus? phlebotomistStatus, double? currentBalance, int? totalCollections, double? averageRating, List<String>? certifications, String? vehicleNumber, bool? isAvailableForCollection, List<String>? managedLabIds, int? staffCount, String? licenseNumber
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? avatarUrl = freezed,Object? role = null,Object? labId = null,Object? labName = freezed,Object? permissions = null,Object? createdAt = null,Object? lastLoginAt = freezed,Object? phlebotomistStatus = freezed,Object? currentBalance = freezed,Object? totalCollections = freezed,Object? averageRating = freezed,Object? certifications = freezed,Object? vehicleNumber = freezed,Object? isAvailableForCollection = freezed,Object? managedLabIds = freezed,Object? staffCount = freezed,Object? licenseNumber = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phlebotomistStatus: freezed == phlebotomistStatus ? _self.phlebotomistStatus : phlebotomistStatus // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>?,vehicleNumber: freezed == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String?,isAvailableForCollection: freezed == isAvailableForCollection ? _self.isAvailableForCollection : isAvailableForCollection // ignore: cast_nullable_to_non_nullable
as bool?,managedLabIds: freezed == managedLabIds ? _self._managedLabIds : managedLabIds // ignore: cast_nullable_to_non_nullable
as List<String>?,staffCount: freezed == staffCount ? _self.staffCount : staffCount // ignore: cast_nullable_to_non_nullable
as int?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
