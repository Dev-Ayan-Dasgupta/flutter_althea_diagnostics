// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StaffMember {

 String get id; String get name; String get email; String get phoneNumber; UserRole get role; PhlebotomistStatus get status; String get labId; DateTime get joinedAt; String? get avatarUrl; List<String>? get certifications; double? get currentBalance; int? get totalCollections; double? get averageRating; bool get isOnline; DateTime? get lastActiveAt;
/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffMemberCopyWith<StaffMember> get copyWith => _$StaffMemberCopyWithImpl<StaffMember>(this as StaffMember, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,role,status,labId,joinedAt,avatarUrl,const DeepCollectionEquality().hash(certifications),currentBalance,totalCollections,averageRating,isOnline,lastActiveAt);

@override
String toString() {
  return 'StaffMember(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, role: $role, status: $status, labId: $labId, joinedAt: $joinedAt, avatarUrl: $avatarUrl, certifications: $certifications, currentBalance: $currentBalance, totalCollections: $totalCollections, averageRating: $averageRating, isOnline: $isOnline, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $StaffMemberCopyWith<$Res>  {
  factory $StaffMemberCopyWith(StaffMember value, $Res Function(StaffMember) _then) = _$StaffMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String phoneNumber, UserRole role, PhlebotomistStatus status, String labId, DateTime joinedAt, String? avatarUrl, List<String>? certifications, double? currentBalance, int? totalCollections, double? averageRating, bool isOnline, DateTime? lastActiveAt
});




}
/// @nodoc
class _$StaffMemberCopyWithImpl<$Res>
    implements $StaffMemberCopyWith<$Res> {
  _$StaffMemberCopyWithImpl(this._self, this._then);

  final StaffMember _self;
  final $Res Function(StaffMember) _then;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? role = null,Object? status = null,Object? labId = null,Object? joinedAt = null,Object? avatarUrl = freezed,Object? certifications = freezed,Object? currentBalance = freezed,Object? totalCollections = freezed,Object? averageRating = freezed,Object? isOnline = null,Object? lastActiveAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffMember].
extension StaffMemberPatterns on StaffMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffMember value)  $default,){
final _that = this;
switch (_that) {
case _StaffMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffMember value)?  $default,){
final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String phoneNumber,  UserRole role,  PhlebotomistStatus status,  String labId,  DateTime joinedAt,  String? avatarUrl,  List<String>? certifications,  double? currentBalance,  int? totalCollections,  double? averageRating,  bool isOnline,  DateTime? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.role,_that.status,_that.labId,_that.joinedAt,_that.avatarUrl,_that.certifications,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.isOnline,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String phoneNumber,  UserRole role,  PhlebotomistStatus status,  String labId,  DateTime joinedAt,  String? avatarUrl,  List<String>? certifications,  double? currentBalance,  int? totalCollections,  double? averageRating,  bool isOnline,  DateTime? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _StaffMember():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.role,_that.status,_that.labId,_that.joinedAt,_that.avatarUrl,_that.certifications,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.isOnline,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String phoneNumber,  UserRole role,  PhlebotomistStatus status,  String labId,  DateTime joinedAt,  String? avatarUrl,  List<String>? certifications,  double? currentBalance,  int? totalCollections,  double? averageRating,  bool isOnline,  DateTime? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.role,_that.status,_that.labId,_that.joinedAt,_that.avatarUrl,_that.certifications,_that.currentBalance,_that.totalCollections,_that.averageRating,_that.isOnline,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc


class _StaffMember implements StaffMember {
  const _StaffMember({required this.id, required this.name, required this.email, required this.phoneNumber, required this.role, required this.status, required this.labId, required this.joinedAt, this.avatarUrl, final  List<String>? certifications, this.currentBalance, this.totalCollections, this.averageRating, required this.isOnline, this.lastActiveAt}): _certifications = certifications;
  

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String phoneNumber;
@override final  UserRole role;
@override final  PhlebotomistStatus status;
@override final  String labId;
@override final  DateTime joinedAt;
@override final  String? avatarUrl;
 final  List<String>? _certifications;
@override List<String>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? currentBalance;
@override final  int? totalCollections;
@override final  double? averageRating;
@override final  bool isOnline;
@override final  DateTime? lastActiveAt;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffMemberCopyWith<_StaffMember> get copyWith => __$StaffMemberCopyWithImpl<_StaffMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,role,status,labId,joinedAt,avatarUrl,const DeepCollectionEquality().hash(_certifications),currentBalance,totalCollections,averageRating,isOnline,lastActiveAt);

@override
String toString() {
  return 'StaffMember(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, role: $role, status: $status, labId: $labId, joinedAt: $joinedAt, avatarUrl: $avatarUrl, certifications: $certifications, currentBalance: $currentBalance, totalCollections: $totalCollections, averageRating: $averageRating, isOnline: $isOnline, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$StaffMemberCopyWith<$Res> implements $StaffMemberCopyWith<$Res> {
  factory _$StaffMemberCopyWith(_StaffMember value, $Res Function(_StaffMember) _then) = __$StaffMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String phoneNumber, UserRole role, PhlebotomistStatus status, String labId, DateTime joinedAt, String? avatarUrl, List<String>? certifications, double? currentBalance, int? totalCollections, double? averageRating, bool isOnline, DateTime? lastActiveAt
});




}
/// @nodoc
class __$StaffMemberCopyWithImpl<$Res>
    implements _$StaffMemberCopyWith<$Res> {
  __$StaffMemberCopyWithImpl(this._self, this._then);

  final _StaffMember _self;
  final $Res Function(_StaffMember) _then;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? role = null,Object? status = null,Object? labId = null,Object? joinedAt = null,Object? avatarUrl = freezed,Object? certifications = freezed,Object? currentBalance = freezed,Object? totalCollections = freezed,Object? averageRating = freezed,Object? isOnline = null,Object? lastActiveAt = freezed,}) {
  return _then(_StaffMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<String>?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$StaffInvitation {

 String get id; String get labId; String get labName; String get invitedEmail; String get invitedPhoneNumber; UserRole get roleOffered; InvitationStatus get status; DateTime get createdAt; DateTime? get expiresAt; DateTime? get acceptedAt; String? get invitedBy;
/// Create a copy of StaffInvitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffInvitationCopyWith<StaffInvitation> get copyWith => _$StaffInvitationCopyWithImpl<StaffInvitation>(this as StaffInvitation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedPhoneNumber, invitedPhoneNumber) || other.invitedPhoneNumber == invitedPhoneNumber)&&(identical(other.roleOffered, roleOffered) || other.roleOffered == roleOffered)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,labId,labName,invitedEmail,invitedPhoneNumber,roleOffered,status,createdAt,expiresAt,acceptedAt,invitedBy);

@override
String toString() {
  return 'StaffInvitation(id: $id, labId: $labId, labName: $labName, invitedEmail: $invitedEmail, invitedPhoneNumber: $invitedPhoneNumber, roleOffered: $roleOffered, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, acceptedAt: $acceptedAt, invitedBy: $invitedBy)';
}


}

/// @nodoc
abstract mixin class $StaffInvitationCopyWith<$Res>  {
  factory $StaffInvitationCopyWith(StaffInvitation value, $Res Function(StaffInvitation) _then) = _$StaffInvitationCopyWithImpl;
@useResult
$Res call({
 String id, String labId, String labName, String invitedEmail, String invitedPhoneNumber, UserRole roleOffered, InvitationStatus status, DateTime createdAt, DateTime? expiresAt, DateTime? acceptedAt, String? invitedBy
});




}
/// @nodoc
class _$StaffInvitationCopyWithImpl<$Res>
    implements $StaffInvitationCopyWith<$Res> {
  _$StaffInvitationCopyWithImpl(this._self, this._then);

  final StaffInvitation _self;
  final $Res Function(StaffInvitation) _then;

/// Create a copy of StaffInvitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? labId = null,Object? labName = null,Object? invitedEmail = null,Object? invitedPhoneNumber = null,Object? roleOffered = null,Object? status = null,Object? createdAt = null,Object? expiresAt = freezed,Object? acceptedAt = freezed,Object? invitedBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,labName: null == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: null == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String,invitedPhoneNumber: null == invitedPhoneNumber ? _self.invitedPhoneNumber : invitedPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,roleOffered: null == roleOffered ? _self.roleOffered : roleOffered // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvitationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,invitedBy: freezed == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffInvitation].
extension StaffInvitationPatterns on StaffInvitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffInvitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffInvitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffInvitation value)  $default,){
final _that = this;
switch (_that) {
case _StaffInvitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffInvitation value)?  $default,){
final _that = this;
switch (_that) {
case _StaffInvitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String labId,  String labName,  String invitedEmail,  String invitedPhoneNumber,  UserRole roleOffered,  InvitationStatus status,  DateTime createdAt,  DateTime? expiresAt,  DateTime? acceptedAt,  String? invitedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffInvitation() when $default != null:
return $default(_that.id,_that.labId,_that.labName,_that.invitedEmail,_that.invitedPhoneNumber,_that.roleOffered,_that.status,_that.createdAt,_that.expiresAt,_that.acceptedAt,_that.invitedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String labId,  String labName,  String invitedEmail,  String invitedPhoneNumber,  UserRole roleOffered,  InvitationStatus status,  DateTime createdAt,  DateTime? expiresAt,  DateTime? acceptedAt,  String? invitedBy)  $default,) {final _that = this;
switch (_that) {
case _StaffInvitation():
return $default(_that.id,_that.labId,_that.labName,_that.invitedEmail,_that.invitedPhoneNumber,_that.roleOffered,_that.status,_that.createdAt,_that.expiresAt,_that.acceptedAt,_that.invitedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String labId,  String labName,  String invitedEmail,  String invitedPhoneNumber,  UserRole roleOffered,  InvitationStatus status,  DateTime createdAt,  DateTime? expiresAt,  DateTime? acceptedAt,  String? invitedBy)?  $default,) {final _that = this;
switch (_that) {
case _StaffInvitation() when $default != null:
return $default(_that.id,_that.labId,_that.labName,_that.invitedEmail,_that.invitedPhoneNumber,_that.roleOffered,_that.status,_that.createdAt,_that.expiresAt,_that.acceptedAt,_that.invitedBy);case _:
  return null;

}
}

}

/// @nodoc


class _StaffInvitation implements StaffInvitation {
  const _StaffInvitation({required this.id, required this.labId, required this.labName, required this.invitedEmail, required this.invitedPhoneNumber, required this.roleOffered, required this.status, required this.createdAt, this.expiresAt, this.acceptedAt, this.invitedBy});
  

@override final  String id;
@override final  String labId;
@override final  String labName;
@override final  String invitedEmail;
@override final  String invitedPhoneNumber;
@override final  UserRole roleOffered;
@override final  InvitationStatus status;
@override final  DateTime createdAt;
@override final  DateTime? expiresAt;
@override final  DateTime? acceptedAt;
@override final  String? invitedBy;

/// Create a copy of StaffInvitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffInvitationCopyWith<_StaffInvitation> get copyWith => __$StaffInvitationCopyWithImpl<_StaffInvitation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.labId, labId) || other.labId == labId)&&(identical(other.labName, labName) || other.labName == labName)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedPhoneNumber, invitedPhoneNumber) || other.invitedPhoneNumber == invitedPhoneNumber)&&(identical(other.roleOffered, roleOffered) || other.roleOffered == roleOffered)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,labId,labName,invitedEmail,invitedPhoneNumber,roleOffered,status,createdAt,expiresAt,acceptedAt,invitedBy);

@override
String toString() {
  return 'StaffInvitation(id: $id, labId: $labId, labName: $labName, invitedEmail: $invitedEmail, invitedPhoneNumber: $invitedPhoneNumber, roleOffered: $roleOffered, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, acceptedAt: $acceptedAt, invitedBy: $invitedBy)';
}


}

/// @nodoc
abstract mixin class _$StaffInvitationCopyWith<$Res> implements $StaffInvitationCopyWith<$Res> {
  factory _$StaffInvitationCopyWith(_StaffInvitation value, $Res Function(_StaffInvitation) _then) = __$StaffInvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, String labId, String labName, String invitedEmail, String invitedPhoneNumber, UserRole roleOffered, InvitationStatus status, DateTime createdAt, DateTime? expiresAt, DateTime? acceptedAt, String? invitedBy
});




}
/// @nodoc
class __$StaffInvitationCopyWithImpl<$Res>
    implements _$StaffInvitationCopyWith<$Res> {
  __$StaffInvitationCopyWithImpl(this._self, this._then);

  final _StaffInvitation _self;
  final $Res Function(_StaffInvitation) _then;

/// Create a copy of StaffInvitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? labId = null,Object? labName = null,Object? invitedEmail = null,Object? invitedPhoneNumber = null,Object? roleOffered = null,Object? status = null,Object? createdAt = null,Object? expiresAt = freezed,Object? acceptedAt = freezed,Object? invitedBy = freezed,}) {
  return _then(_StaffInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,labId: null == labId ? _self.labId : labId // ignore: cast_nullable_to_non_nullable
as String,labName: null == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: null == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String,invitedPhoneNumber: null == invitedPhoneNumber ? _self.invitedPhoneNumber : invitedPhoneNumber // ignore: cast_nullable_to_non_nullable
as String,roleOffered: null == roleOffered ? _self.roleOffered : roleOffered // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvitationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,invitedBy: freezed == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$StaffFilters {

 UserRole? get role; PhlebotomistStatus? get status; bool? get isOnline; String? get searchQuery;
/// Create a copy of StaffFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffFiltersCopyWith<StaffFilters> get copyWith => _$StaffFiltersCopyWithImpl<StaffFilters>(this as StaffFilters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffFilters&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,role,status,isOnline,searchQuery);

@override
String toString() {
  return 'StaffFilters(role: $role, status: $status, isOnline: $isOnline, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $StaffFiltersCopyWith<$Res>  {
  factory $StaffFiltersCopyWith(StaffFilters value, $Res Function(StaffFilters) _then) = _$StaffFiltersCopyWithImpl;
@useResult
$Res call({
 UserRole? role, PhlebotomistStatus? status, bool? isOnline, String? searchQuery
});




}
/// @nodoc
class _$StaffFiltersCopyWithImpl<$Res>
    implements $StaffFiltersCopyWith<$Res> {
  _$StaffFiltersCopyWithImpl(this._self, this._then);

  final StaffFilters _self;
  final $Res Function(StaffFilters) _then;

/// Create a copy of StaffFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = freezed,Object? status = freezed,Object? isOnline = freezed,Object? searchQuery = freezed,}) {
  return _then(_self.copyWith(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffFilters].
extension StaffFiltersPatterns on StaffFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffFilters value)  $default,){
final _that = this;
switch (_that) {
case _StaffFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffFilters value)?  $default,){
final _that = this;
switch (_that) {
case _StaffFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserRole? role,  PhlebotomistStatus? status,  bool? isOnline,  String? searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffFilters() when $default != null:
return $default(_that.role,_that.status,_that.isOnline,_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserRole? role,  PhlebotomistStatus? status,  bool? isOnline,  String? searchQuery)  $default,) {final _that = this;
switch (_that) {
case _StaffFilters():
return $default(_that.role,_that.status,_that.isOnline,_that.searchQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserRole? role,  PhlebotomistStatus? status,  bool? isOnline,  String? searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _StaffFilters() when $default != null:
return $default(_that.role,_that.status,_that.isOnline,_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _StaffFilters implements StaffFilters {
  const _StaffFilters({this.role, this.status, this.isOnline, this.searchQuery});
  

@override final  UserRole? role;
@override final  PhlebotomistStatus? status;
@override final  bool? isOnline;
@override final  String? searchQuery;

/// Create a copy of StaffFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffFiltersCopyWith<_StaffFilters> get copyWith => __$StaffFiltersCopyWithImpl<_StaffFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffFilters&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,role,status,isOnline,searchQuery);

@override
String toString() {
  return 'StaffFilters(role: $role, status: $status, isOnline: $isOnline, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$StaffFiltersCopyWith<$Res> implements $StaffFiltersCopyWith<$Res> {
  factory _$StaffFiltersCopyWith(_StaffFilters value, $Res Function(_StaffFilters) _then) = __$StaffFiltersCopyWithImpl;
@override @useResult
$Res call({
 UserRole? role, PhlebotomistStatus? status, bool? isOnline, String? searchQuery
});




}
/// @nodoc
class __$StaffFiltersCopyWithImpl<$Res>
    implements _$StaffFiltersCopyWith<$Res> {
  __$StaffFiltersCopyWithImpl(this._self, this._then);

  final _StaffFilters _self;
  final $Res Function(_StaffFilters) _then;

/// Create a copy of StaffFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = freezed,Object? status = freezed,Object? isOnline = freezed,Object? searchQuery = freezed,}) {
  return _then(_StaffFilters(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PhlebotomistStatus?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
