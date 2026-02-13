// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CollectionOrder {

 String get id; String get patientId; String get patientName; String get patientPhone; String get patientAddress; GeoLocation get patientLocation; List<String> get testIds; List<String> get testNames; OrderStatus get status; DateTime get requestedAt; DateTime? get acceptedAt; DateTime? get startedAt; DateTime? get arrivedAt; DateTime? get collectionStartedAt; DateTime? get collectionCompletedAt; DateTime? get deliveredAt; String? get assignedPhlebotomistId; String? get assignedPhlebotomistName; GeoLocation? get phlebotomistCurrentLocation; double? get distanceToPatient; int? get estimatedArrivalMinutes; String? get cancellationReason; String? get sampleId; String? get notes; double? get collectionFee;
/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionOrderCopyWith<CollectionOrder> get copyWith => _$CollectionOrderCopyWithImpl<CollectionOrder>(this as CollectionOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientPhone, patientPhone) || other.patientPhone == patientPhone)&&(identical(other.patientAddress, patientAddress) || other.patientAddress == patientAddress)&&(identical(other.patientLocation, patientLocation) || other.patientLocation == patientLocation)&&const DeepCollectionEquality().equals(other.testIds, testIds)&&const DeepCollectionEquality().equals(other.testNames, testNames)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.collectionStartedAt, collectionStartedAt) || other.collectionStartedAt == collectionStartedAt)&&(identical(other.collectionCompletedAt, collectionCompletedAt) || other.collectionCompletedAt == collectionCompletedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.assignedPhlebotomistId, assignedPhlebotomistId) || other.assignedPhlebotomistId == assignedPhlebotomistId)&&(identical(other.assignedPhlebotomistName, assignedPhlebotomistName) || other.assignedPhlebotomistName == assignedPhlebotomistName)&&(identical(other.phlebotomistCurrentLocation, phlebotomistCurrentLocation) || other.phlebotomistCurrentLocation == phlebotomistCurrentLocation)&&(identical(other.distanceToPatient, distanceToPatient) || other.distanceToPatient == distanceToPatient)&&(identical(other.estimatedArrivalMinutes, estimatedArrivalMinutes) || other.estimatedArrivalMinutes == estimatedArrivalMinutes)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.collectionFee, collectionFee) || other.collectionFee == collectionFee));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientPhone,patientAddress,patientLocation,const DeepCollectionEquality().hash(testIds),const DeepCollectionEquality().hash(testNames),status,requestedAt,acceptedAt,startedAt,arrivedAt,collectionStartedAt,collectionCompletedAt,deliveredAt,assignedPhlebotomistId,assignedPhlebotomistName,phlebotomistCurrentLocation,distanceToPatient,estimatedArrivalMinutes,cancellationReason,sampleId,notes,collectionFee]);

@override
String toString() {
  return 'CollectionOrder(id: $id, patientId: $patientId, patientName: $patientName, patientPhone: $patientPhone, patientAddress: $patientAddress, patientLocation: $patientLocation, testIds: $testIds, testNames: $testNames, status: $status, requestedAt: $requestedAt, acceptedAt: $acceptedAt, startedAt: $startedAt, arrivedAt: $arrivedAt, collectionStartedAt: $collectionStartedAt, collectionCompletedAt: $collectionCompletedAt, deliveredAt: $deliveredAt, assignedPhlebotomistId: $assignedPhlebotomistId, assignedPhlebotomistName: $assignedPhlebotomistName, phlebotomistCurrentLocation: $phlebotomistCurrentLocation, distanceToPatient: $distanceToPatient, estimatedArrivalMinutes: $estimatedArrivalMinutes, cancellationReason: $cancellationReason, sampleId: $sampleId, notes: $notes, collectionFee: $collectionFee)';
}


}

/// @nodoc
abstract mixin class $CollectionOrderCopyWith<$Res>  {
  factory $CollectionOrderCopyWith(CollectionOrder value, $Res Function(CollectionOrder) _then) = _$CollectionOrderCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String patientPhone, String patientAddress, GeoLocation patientLocation, List<String> testIds, List<String> testNames, OrderStatus status, DateTime requestedAt, DateTime? acceptedAt, DateTime? startedAt, DateTime? arrivedAt, DateTime? collectionStartedAt, DateTime? collectionCompletedAt, DateTime? deliveredAt, String? assignedPhlebotomistId, String? assignedPhlebotomistName, GeoLocation? phlebotomistCurrentLocation, double? distanceToPatient, int? estimatedArrivalMinutes, String? cancellationReason, String? sampleId, String? notes, double? collectionFee
});


$GeoLocationCopyWith<$Res> get patientLocation;$GeoLocationCopyWith<$Res>? get phlebotomistCurrentLocation;

}
/// @nodoc
class _$CollectionOrderCopyWithImpl<$Res>
    implements $CollectionOrderCopyWith<$Res> {
  _$CollectionOrderCopyWithImpl(this._self, this._then);

  final CollectionOrder _self;
  final $Res Function(CollectionOrder) _then;

/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientPhone = null,Object? patientAddress = null,Object? patientLocation = null,Object? testIds = null,Object? testNames = null,Object? status = null,Object? requestedAt = null,Object? acceptedAt = freezed,Object? startedAt = freezed,Object? arrivedAt = freezed,Object? collectionStartedAt = freezed,Object? collectionCompletedAt = freezed,Object? deliveredAt = freezed,Object? assignedPhlebotomistId = freezed,Object? assignedPhlebotomistName = freezed,Object? phlebotomistCurrentLocation = freezed,Object? distanceToPatient = freezed,Object? estimatedArrivalMinutes = freezed,Object? cancellationReason = freezed,Object? sampleId = freezed,Object? notes = freezed,Object? collectionFee = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientPhone: null == patientPhone ? _self.patientPhone : patientPhone // ignore: cast_nullable_to_non_nullable
as String,patientAddress: null == patientAddress ? _self.patientAddress : patientAddress // ignore: cast_nullable_to_non_nullable
as String,patientLocation: null == patientLocation ? _self.patientLocation : patientLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation,testIds: null == testIds ? _self.testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>,testNames: null == testNames ? _self.testNames : testNames // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionStartedAt: freezed == collectionStartedAt ? _self.collectionStartedAt : collectionStartedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionCompletedAt: freezed == collectionCompletedAt ? _self.collectionCompletedAt : collectionCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedPhlebotomistId: freezed == assignedPhlebotomistId ? _self.assignedPhlebotomistId : assignedPhlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,assignedPhlebotomistName: freezed == assignedPhlebotomistName ? _self.assignedPhlebotomistName : assignedPhlebotomistName // ignore: cast_nullable_to_non_nullable
as String?,phlebotomistCurrentLocation: freezed == phlebotomistCurrentLocation ? _self.phlebotomistCurrentLocation : phlebotomistCurrentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation?,distanceToPatient: freezed == distanceToPatient ? _self.distanceToPatient : distanceToPatient // ignore: cast_nullable_to_non_nullable
as double?,estimatedArrivalMinutes: freezed == estimatedArrivalMinutes ? _self.estimatedArrivalMinutes : estimatedArrivalMinutes // ignore: cast_nullable_to_non_nullable
as int?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,sampleId: freezed == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,collectionFee: freezed == collectionFee ? _self.collectionFee : collectionFee // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get patientLocation {
  
  return $GeoLocationCopyWith<$Res>(_self.patientLocation, (value) {
    return _then(_self.copyWith(patientLocation: value));
  });
}/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res>? get phlebotomistCurrentLocation {
    if (_self.phlebotomistCurrentLocation == null) {
    return null;
  }

  return $GeoLocationCopyWith<$Res>(_self.phlebotomistCurrentLocation!, (value) {
    return _then(_self.copyWith(phlebotomistCurrentLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [CollectionOrder].
extension CollectionOrderPatterns on CollectionOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionOrder value)  $default,){
final _that = this;
switch (_that) {
case _CollectionOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionOrder value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String patientPhone,  String patientAddress,  GeoLocation patientLocation,  List<String> testIds,  List<String> testNames,  OrderStatus status,  DateTime requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? arrivedAt,  DateTime? collectionStartedAt,  DateTime? collectionCompletedAt,  DateTime? deliveredAt,  String? assignedPhlebotomistId,  String? assignedPhlebotomistName,  GeoLocation? phlebotomistCurrentLocation,  double? distanceToPatient,  int? estimatedArrivalMinutes,  String? cancellationReason,  String? sampleId,  String? notes,  double? collectionFee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionOrder() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientPhone,_that.patientAddress,_that.patientLocation,_that.testIds,_that.testNames,_that.status,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.arrivedAt,_that.collectionStartedAt,_that.collectionCompletedAt,_that.deliveredAt,_that.assignedPhlebotomistId,_that.assignedPhlebotomistName,_that.phlebotomistCurrentLocation,_that.distanceToPatient,_that.estimatedArrivalMinutes,_that.cancellationReason,_that.sampleId,_that.notes,_that.collectionFee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String patientPhone,  String patientAddress,  GeoLocation patientLocation,  List<String> testIds,  List<String> testNames,  OrderStatus status,  DateTime requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? arrivedAt,  DateTime? collectionStartedAt,  DateTime? collectionCompletedAt,  DateTime? deliveredAt,  String? assignedPhlebotomistId,  String? assignedPhlebotomistName,  GeoLocation? phlebotomistCurrentLocation,  double? distanceToPatient,  int? estimatedArrivalMinutes,  String? cancellationReason,  String? sampleId,  String? notes,  double? collectionFee)  $default,) {final _that = this;
switch (_that) {
case _CollectionOrder():
return $default(_that.id,_that.patientId,_that.patientName,_that.patientPhone,_that.patientAddress,_that.patientLocation,_that.testIds,_that.testNames,_that.status,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.arrivedAt,_that.collectionStartedAt,_that.collectionCompletedAt,_that.deliveredAt,_that.assignedPhlebotomistId,_that.assignedPhlebotomistName,_that.phlebotomistCurrentLocation,_that.distanceToPatient,_that.estimatedArrivalMinutes,_that.cancellationReason,_that.sampleId,_that.notes,_that.collectionFee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String patientPhone,  String patientAddress,  GeoLocation patientLocation,  List<String> testIds,  List<String> testNames,  OrderStatus status,  DateTime requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? arrivedAt,  DateTime? collectionStartedAt,  DateTime? collectionCompletedAt,  DateTime? deliveredAt,  String? assignedPhlebotomistId,  String? assignedPhlebotomistName,  GeoLocation? phlebotomistCurrentLocation,  double? distanceToPatient,  int? estimatedArrivalMinutes,  String? cancellationReason,  String? sampleId,  String? notes,  double? collectionFee)?  $default,) {final _that = this;
switch (_that) {
case _CollectionOrder() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientPhone,_that.patientAddress,_that.patientLocation,_that.testIds,_that.testNames,_that.status,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.arrivedAt,_that.collectionStartedAt,_that.collectionCompletedAt,_that.deliveredAt,_that.assignedPhlebotomistId,_that.assignedPhlebotomistName,_that.phlebotomistCurrentLocation,_that.distanceToPatient,_that.estimatedArrivalMinutes,_that.cancellationReason,_that.sampleId,_that.notes,_that.collectionFee);case _:
  return null;

}
}

}

/// @nodoc


class _CollectionOrder implements CollectionOrder {
  const _CollectionOrder({required this.id, required this.patientId, required this.patientName, required this.patientPhone, required this.patientAddress, required this.patientLocation, required final  List<String> testIds, required final  List<String> testNames, required this.status, required this.requestedAt, this.acceptedAt, this.startedAt, this.arrivedAt, this.collectionStartedAt, this.collectionCompletedAt, this.deliveredAt, this.assignedPhlebotomistId, this.assignedPhlebotomistName, this.phlebotomistCurrentLocation, this.distanceToPatient, this.estimatedArrivalMinutes, this.cancellationReason, this.sampleId, this.notes, this.collectionFee}): _testIds = testIds,_testNames = testNames;
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String patientPhone;
@override final  String patientAddress;
@override final  GeoLocation patientLocation;
 final  List<String> _testIds;
@override List<String> get testIds {
  if (_testIds is EqualUnmodifiableListView) return _testIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_testIds);
}

 final  List<String> _testNames;
@override List<String> get testNames {
  if (_testNames is EqualUnmodifiableListView) return _testNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_testNames);
}

@override final  OrderStatus status;
@override final  DateTime requestedAt;
@override final  DateTime? acceptedAt;
@override final  DateTime? startedAt;
@override final  DateTime? arrivedAt;
@override final  DateTime? collectionStartedAt;
@override final  DateTime? collectionCompletedAt;
@override final  DateTime? deliveredAt;
@override final  String? assignedPhlebotomistId;
@override final  String? assignedPhlebotomistName;
@override final  GeoLocation? phlebotomistCurrentLocation;
@override final  double? distanceToPatient;
@override final  int? estimatedArrivalMinutes;
@override final  String? cancellationReason;
@override final  String? sampleId;
@override final  String? notes;
@override final  double? collectionFee;

/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionOrderCopyWith<_CollectionOrder> get copyWith => __$CollectionOrderCopyWithImpl<_CollectionOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientPhone, patientPhone) || other.patientPhone == patientPhone)&&(identical(other.patientAddress, patientAddress) || other.patientAddress == patientAddress)&&(identical(other.patientLocation, patientLocation) || other.patientLocation == patientLocation)&&const DeepCollectionEquality().equals(other._testIds, _testIds)&&const DeepCollectionEquality().equals(other._testNames, _testNames)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.collectionStartedAt, collectionStartedAt) || other.collectionStartedAt == collectionStartedAt)&&(identical(other.collectionCompletedAt, collectionCompletedAt) || other.collectionCompletedAt == collectionCompletedAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.assignedPhlebotomistId, assignedPhlebotomistId) || other.assignedPhlebotomistId == assignedPhlebotomistId)&&(identical(other.assignedPhlebotomistName, assignedPhlebotomistName) || other.assignedPhlebotomistName == assignedPhlebotomistName)&&(identical(other.phlebotomistCurrentLocation, phlebotomistCurrentLocation) || other.phlebotomistCurrentLocation == phlebotomistCurrentLocation)&&(identical(other.distanceToPatient, distanceToPatient) || other.distanceToPatient == distanceToPatient)&&(identical(other.estimatedArrivalMinutes, estimatedArrivalMinutes) || other.estimatedArrivalMinutes == estimatedArrivalMinutes)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.collectionFee, collectionFee) || other.collectionFee == collectionFee));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientPhone,patientAddress,patientLocation,const DeepCollectionEquality().hash(_testIds),const DeepCollectionEquality().hash(_testNames),status,requestedAt,acceptedAt,startedAt,arrivedAt,collectionStartedAt,collectionCompletedAt,deliveredAt,assignedPhlebotomistId,assignedPhlebotomistName,phlebotomistCurrentLocation,distanceToPatient,estimatedArrivalMinutes,cancellationReason,sampleId,notes,collectionFee]);

@override
String toString() {
  return 'CollectionOrder(id: $id, patientId: $patientId, patientName: $patientName, patientPhone: $patientPhone, patientAddress: $patientAddress, patientLocation: $patientLocation, testIds: $testIds, testNames: $testNames, status: $status, requestedAt: $requestedAt, acceptedAt: $acceptedAt, startedAt: $startedAt, arrivedAt: $arrivedAt, collectionStartedAt: $collectionStartedAt, collectionCompletedAt: $collectionCompletedAt, deliveredAt: $deliveredAt, assignedPhlebotomistId: $assignedPhlebotomistId, assignedPhlebotomistName: $assignedPhlebotomistName, phlebotomistCurrentLocation: $phlebotomistCurrentLocation, distanceToPatient: $distanceToPatient, estimatedArrivalMinutes: $estimatedArrivalMinutes, cancellationReason: $cancellationReason, sampleId: $sampleId, notes: $notes, collectionFee: $collectionFee)';
}


}

/// @nodoc
abstract mixin class _$CollectionOrderCopyWith<$Res> implements $CollectionOrderCopyWith<$Res> {
  factory _$CollectionOrderCopyWith(_CollectionOrder value, $Res Function(_CollectionOrder) _then) = __$CollectionOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String patientPhone, String patientAddress, GeoLocation patientLocation, List<String> testIds, List<String> testNames, OrderStatus status, DateTime requestedAt, DateTime? acceptedAt, DateTime? startedAt, DateTime? arrivedAt, DateTime? collectionStartedAt, DateTime? collectionCompletedAt, DateTime? deliveredAt, String? assignedPhlebotomistId, String? assignedPhlebotomistName, GeoLocation? phlebotomistCurrentLocation, double? distanceToPatient, int? estimatedArrivalMinutes, String? cancellationReason, String? sampleId, String? notes, double? collectionFee
});


@override $GeoLocationCopyWith<$Res> get patientLocation;@override $GeoLocationCopyWith<$Res>? get phlebotomistCurrentLocation;

}
/// @nodoc
class __$CollectionOrderCopyWithImpl<$Res>
    implements _$CollectionOrderCopyWith<$Res> {
  __$CollectionOrderCopyWithImpl(this._self, this._then);

  final _CollectionOrder _self;
  final $Res Function(_CollectionOrder) _then;

/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientPhone = null,Object? patientAddress = null,Object? patientLocation = null,Object? testIds = null,Object? testNames = null,Object? status = null,Object? requestedAt = null,Object? acceptedAt = freezed,Object? startedAt = freezed,Object? arrivedAt = freezed,Object? collectionStartedAt = freezed,Object? collectionCompletedAt = freezed,Object? deliveredAt = freezed,Object? assignedPhlebotomistId = freezed,Object? assignedPhlebotomistName = freezed,Object? phlebotomistCurrentLocation = freezed,Object? distanceToPatient = freezed,Object? estimatedArrivalMinutes = freezed,Object? cancellationReason = freezed,Object? sampleId = freezed,Object? notes = freezed,Object? collectionFee = freezed,}) {
  return _then(_CollectionOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientPhone: null == patientPhone ? _self.patientPhone : patientPhone // ignore: cast_nullable_to_non_nullable
as String,patientAddress: null == patientAddress ? _self.patientAddress : patientAddress // ignore: cast_nullable_to_non_nullable
as String,patientLocation: null == patientLocation ? _self.patientLocation : patientLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation,testIds: null == testIds ? _self._testIds : testIds // ignore: cast_nullable_to_non_nullable
as List<String>,testNames: null == testNames ? _self._testNames : testNames // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionStartedAt: freezed == collectionStartedAt ? _self.collectionStartedAt : collectionStartedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionCompletedAt: freezed == collectionCompletedAt ? _self.collectionCompletedAt : collectionCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedPhlebotomistId: freezed == assignedPhlebotomistId ? _self.assignedPhlebotomistId : assignedPhlebotomistId // ignore: cast_nullable_to_non_nullable
as String?,assignedPhlebotomistName: freezed == assignedPhlebotomistName ? _self.assignedPhlebotomistName : assignedPhlebotomistName // ignore: cast_nullable_to_non_nullable
as String?,phlebotomistCurrentLocation: freezed == phlebotomistCurrentLocation ? _self.phlebotomistCurrentLocation : phlebotomistCurrentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation?,distanceToPatient: freezed == distanceToPatient ? _self.distanceToPatient : distanceToPatient // ignore: cast_nullable_to_non_nullable
as double?,estimatedArrivalMinutes: freezed == estimatedArrivalMinutes ? _self.estimatedArrivalMinutes : estimatedArrivalMinutes // ignore: cast_nullable_to_non_nullable
as int?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,sampleId: freezed == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,collectionFee: freezed == collectionFee ? _self.collectionFee : collectionFee // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get patientLocation {
  
  return $GeoLocationCopyWith<$Res>(_self.patientLocation, (value) {
    return _then(_self.copyWith(patientLocation: value));
  });
}/// Create a copy of CollectionOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res>? get phlebotomistCurrentLocation {
    if (_self.phlebotomistCurrentLocation == null) {
    return null;
  }

  return $GeoLocationCopyWith<$Res>(_self.phlebotomistCurrentLocation!, (value) {
    return _then(_self.copyWith(phlebotomistCurrentLocation: value));
  });
}
}

/// @nodoc
mixin _$OrderAuthentication {

 String get orderId; AuthMethod get method; String? get qrCodeData; String? get otp; DateTime get timestamp; GeoLocation get location;
/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAuthenticationCopyWith<OrderAuthentication> get copyWith => _$OrderAuthenticationCopyWithImpl<OrderAuthentication>(this as OrderAuthentication, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderAuthentication&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.qrCodeData, qrCodeData) || other.qrCodeData == qrCodeData)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,method,qrCodeData,otp,timestamp,location);

@override
String toString() {
  return 'OrderAuthentication(orderId: $orderId, method: $method, qrCodeData: $qrCodeData, otp: $otp, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class $OrderAuthenticationCopyWith<$Res>  {
  factory $OrderAuthenticationCopyWith(OrderAuthentication value, $Res Function(OrderAuthentication) _then) = _$OrderAuthenticationCopyWithImpl;
@useResult
$Res call({
 String orderId, AuthMethod method, String? qrCodeData, String? otp, DateTime timestamp, GeoLocation location
});


$GeoLocationCopyWith<$Res> get location;

}
/// @nodoc
class _$OrderAuthenticationCopyWithImpl<$Res>
    implements $OrderAuthenticationCopyWith<$Res> {
  _$OrderAuthenticationCopyWithImpl(this._self, this._then);

  final OrderAuthentication _self;
  final $Res Function(OrderAuthentication) _then;

/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? method = null,Object? qrCodeData = freezed,Object? otp = freezed,Object? timestamp = null,Object? location = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as AuthMethod,qrCodeData: freezed == qrCodeData ? _self.qrCodeData : qrCodeData // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}
/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderAuthentication].
extension OrderAuthenticationPatterns on OrderAuthentication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderAuthentication value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderAuthentication() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderAuthentication value)  $default,){
final _that = this;
switch (_that) {
case _OrderAuthentication():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderAuthentication value)?  $default,){
final _that = this;
switch (_that) {
case _OrderAuthentication() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  AuthMethod method,  String? qrCodeData,  String? otp,  DateTime timestamp,  GeoLocation location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderAuthentication() when $default != null:
return $default(_that.orderId,_that.method,_that.qrCodeData,_that.otp,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  AuthMethod method,  String? qrCodeData,  String? otp,  DateTime timestamp,  GeoLocation location)  $default,) {final _that = this;
switch (_that) {
case _OrderAuthentication():
return $default(_that.orderId,_that.method,_that.qrCodeData,_that.otp,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  AuthMethod method,  String? qrCodeData,  String? otp,  DateTime timestamp,  GeoLocation location)?  $default,) {final _that = this;
switch (_that) {
case _OrderAuthentication() when $default != null:
return $default(_that.orderId,_that.method,_that.qrCodeData,_that.otp,_that.timestamp,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _OrderAuthentication implements OrderAuthentication {
  const _OrderAuthentication({required this.orderId, required this.method, this.qrCodeData, this.otp, required this.timestamp, required this.location});
  

@override final  String orderId;
@override final  AuthMethod method;
@override final  String? qrCodeData;
@override final  String? otp;
@override final  DateTime timestamp;
@override final  GeoLocation location;

/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderAuthenticationCopyWith<_OrderAuthentication> get copyWith => __$OrderAuthenticationCopyWithImpl<_OrderAuthentication>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderAuthentication&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.qrCodeData, qrCodeData) || other.qrCodeData == qrCodeData)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,method,qrCodeData,otp,timestamp,location);

@override
String toString() {
  return 'OrderAuthentication(orderId: $orderId, method: $method, qrCodeData: $qrCodeData, otp: $otp, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class _$OrderAuthenticationCopyWith<$Res> implements $OrderAuthenticationCopyWith<$Res> {
  factory _$OrderAuthenticationCopyWith(_OrderAuthentication value, $Res Function(_OrderAuthentication) _then) = __$OrderAuthenticationCopyWithImpl;
@override @useResult
$Res call({
 String orderId, AuthMethod method, String? qrCodeData, String? otp, DateTime timestamp, GeoLocation location
});


@override $GeoLocationCopyWith<$Res> get location;

}
/// @nodoc
class __$OrderAuthenticationCopyWithImpl<$Res>
    implements _$OrderAuthenticationCopyWith<$Res> {
  __$OrderAuthenticationCopyWithImpl(this._self, this._then);

  final _OrderAuthentication _self;
  final $Res Function(_OrderAuthentication) _then;

/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? method = null,Object? qrCodeData = freezed,Object? otp = freezed,Object? timestamp = null,Object? location = null,}) {
  return _then(_OrderAuthentication(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as AuthMethod,qrCodeData: freezed == qrCodeData ? _self.qrCodeData : qrCodeData // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,
  ));
}

/// Create a copy of OrderAuthentication
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

/// @nodoc
mixin _$OrderTracking {

 String get orderId; String get phlebotomistId; GeoLocation get currentLocation; DateTime get timestamp; double get speed; String get heading;
/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTrackingCopyWith<OrderTracking> get copyWith => _$OrderTrackingCopyWithImpl<OrderTracking>(this as OrderTracking, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTracking&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.heading, heading) || other.heading == heading));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,phlebotomistId,currentLocation,timestamp,speed,heading);

@override
String toString() {
  return 'OrderTracking(orderId: $orderId, phlebotomistId: $phlebotomistId, currentLocation: $currentLocation, timestamp: $timestamp, speed: $speed, heading: $heading)';
}


}

/// @nodoc
abstract mixin class $OrderTrackingCopyWith<$Res>  {
  factory $OrderTrackingCopyWith(OrderTracking value, $Res Function(OrderTracking) _then) = _$OrderTrackingCopyWithImpl;
@useResult
$Res call({
 String orderId, String phlebotomistId, GeoLocation currentLocation, DateTime timestamp, double speed, String heading
});


$GeoLocationCopyWith<$Res> get currentLocation;

}
/// @nodoc
class _$OrderTrackingCopyWithImpl<$Res>
    implements $OrderTrackingCopyWith<$Res> {
  _$OrderTrackingCopyWithImpl(this._self, this._then);

  final OrderTracking _self;
  final $Res Function(OrderTracking) _then;

/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? phlebotomistId = null,Object? currentLocation = null,Object? timestamp = null,Object? speed = null,Object? heading = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,phlebotomistId: null == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String,currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get currentLocation {
  
  return $GeoLocationCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderTracking].
extension OrderTrackingPatterns on OrderTracking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTracking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTracking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTracking value)  $default,){
final _that = this;
switch (_that) {
case _OrderTracking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTracking value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTracking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String phlebotomistId,  GeoLocation currentLocation,  DateTime timestamp,  double speed,  String heading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTracking() when $default != null:
return $default(_that.orderId,_that.phlebotomistId,_that.currentLocation,_that.timestamp,_that.speed,_that.heading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String phlebotomistId,  GeoLocation currentLocation,  DateTime timestamp,  double speed,  String heading)  $default,) {final _that = this;
switch (_that) {
case _OrderTracking():
return $default(_that.orderId,_that.phlebotomistId,_that.currentLocation,_that.timestamp,_that.speed,_that.heading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String phlebotomistId,  GeoLocation currentLocation,  DateTime timestamp,  double speed,  String heading)?  $default,) {final _that = this;
switch (_that) {
case _OrderTracking() when $default != null:
return $default(_that.orderId,_that.phlebotomistId,_that.currentLocation,_that.timestamp,_that.speed,_that.heading);case _:
  return null;

}
}

}

/// @nodoc


class _OrderTracking implements OrderTracking {
  const _OrderTracking({required this.orderId, required this.phlebotomistId, required this.currentLocation, required this.timestamp, required this.speed, required this.heading});
  

@override final  String orderId;
@override final  String phlebotomistId;
@override final  GeoLocation currentLocation;
@override final  DateTime timestamp;
@override final  double speed;
@override final  String heading;

/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTrackingCopyWith<_OrderTracking> get copyWith => __$OrderTrackingCopyWithImpl<_OrderTracking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTracking&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.phlebotomistId, phlebotomistId) || other.phlebotomistId == phlebotomistId)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.heading, heading) || other.heading == heading));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,phlebotomistId,currentLocation,timestamp,speed,heading);

@override
String toString() {
  return 'OrderTracking(orderId: $orderId, phlebotomistId: $phlebotomistId, currentLocation: $currentLocation, timestamp: $timestamp, speed: $speed, heading: $heading)';
}


}

/// @nodoc
abstract mixin class _$OrderTrackingCopyWith<$Res> implements $OrderTrackingCopyWith<$Res> {
  factory _$OrderTrackingCopyWith(_OrderTracking value, $Res Function(_OrderTracking) _then) = __$OrderTrackingCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String phlebotomistId, GeoLocation currentLocation, DateTime timestamp, double speed, String heading
});


@override $GeoLocationCopyWith<$Res> get currentLocation;

}
/// @nodoc
class __$OrderTrackingCopyWithImpl<$Res>
    implements _$OrderTrackingCopyWith<$Res> {
  __$OrderTrackingCopyWithImpl(this._self, this._then);

  final _OrderTracking _self;
  final $Res Function(_OrderTracking) _then;

/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? phlebotomistId = null,Object? currentLocation = null,Object? timestamp = null,Object? speed = null,Object? heading = null,}) {
  return _then(_OrderTracking(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,phlebotomistId: null == phlebotomistId ? _self.phlebotomistId : phlebotomistId // ignore: cast_nullable_to_non_nullable
as String,currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as GeoLocation,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderTracking
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get currentLocation {
  
  return $GeoLocationCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}
}

// dart format on
