// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncItem {

@HiveField(0) String get id;@HiveField(1) SyncEntityType get entityType;@HiveField(2) SyncOperation get operation;@HiveField(3) Map<String, dynamic> get data;@HiveField(4) String get status;@HiveField(5) String get createdAt;@HiveField(6) String? get lastAttemptAt;@HiveField(7) int get retryCount;@HiveField(8) String? get error;
/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncItemCopyWith<SyncItem> get copyWith => _$SyncItemCopyWithImpl<SyncItem>(this as SyncItem, _$identity);

  /// Serializes this SyncItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncItem&&(identical(other.id, id) || other.id == id)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastAttemptAt, lastAttemptAt) || other.lastAttemptAt == lastAttemptAt)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entityType,operation,const DeepCollectionEquality().hash(data),status,createdAt,lastAttemptAt,retryCount,error);

@override
String toString() {
  return 'SyncItem(id: $id, entityType: $entityType, operation: $operation, data: $data, status: $status, createdAt: $createdAt, lastAttemptAt: $lastAttemptAt, retryCount: $retryCount, error: $error)';
}


}

/// @nodoc
abstract mixin class $SyncItemCopyWith<$Res>  {
  factory $SyncItemCopyWith(SyncItem value, $Res Function(SyncItem) _then) = _$SyncItemCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) SyncEntityType entityType,@HiveField(2) SyncOperation operation,@HiveField(3) Map<String, dynamic> data,@HiveField(4) String status,@HiveField(5) String createdAt,@HiveField(6) String? lastAttemptAt,@HiveField(7) int retryCount,@HiveField(8) String? error
});




}
/// @nodoc
class _$SyncItemCopyWithImpl<$Res>
    implements $SyncItemCopyWith<$Res> {
  _$SyncItemCopyWithImpl(this._self, this._then);

  final SyncItem _self;
  final $Res Function(SyncItem) _then;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? entityType = null,Object? operation = null,Object? data = null,Object? status = null,Object? createdAt = null,Object? lastAttemptAt = freezed,Object? retryCount = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as SyncEntityType,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as SyncOperation,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,lastAttemptAt: freezed == lastAttemptAt ? _self.lastAttemptAt : lastAttemptAt // ignore: cast_nullable_to_non_nullable
as String?,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncItem].
extension SyncItemPatterns on SyncItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncItem value)  $default,){
final _that = this;
switch (_that) {
case _SyncItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncItem value)?  $default,){
final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  SyncEntityType entityType, @HiveField(2)  SyncOperation operation, @HiveField(3)  Map<String, dynamic> data, @HiveField(4)  String status, @HiveField(5)  String createdAt, @HiveField(6)  String? lastAttemptAt, @HiveField(7)  int retryCount, @HiveField(8)  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
return $default(_that.id,_that.entityType,_that.operation,_that.data,_that.status,_that.createdAt,_that.lastAttemptAt,_that.retryCount,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  SyncEntityType entityType, @HiveField(2)  SyncOperation operation, @HiveField(3)  Map<String, dynamic> data, @HiveField(4)  String status, @HiveField(5)  String createdAt, @HiveField(6)  String? lastAttemptAt, @HiveField(7)  int retryCount, @HiveField(8)  String? error)  $default,) {final _that = this;
switch (_that) {
case _SyncItem():
return $default(_that.id,_that.entityType,_that.operation,_that.data,_that.status,_that.createdAt,_that.lastAttemptAt,_that.retryCount,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  SyncEntityType entityType, @HiveField(2)  SyncOperation operation, @HiveField(3)  Map<String, dynamic> data, @HiveField(4)  String status, @HiveField(5)  String createdAt, @HiveField(6)  String? lastAttemptAt, @HiveField(7)  int retryCount, @HiveField(8)  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
return $default(_that.id,_that.entityType,_that.operation,_that.data,_that.status,_that.createdAt,_that.lastAttemptAt,_that.retryCount,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncItem implements SyncItem {
  const _SyncItem({@HiveField(0) required this.id, @HiveField(1) required this.entityType, @HiveField(2) required this.operation, @HiveField(3) required final  Map<String, dynamic> data, @HiveField(4) required this.status, @HiveField(5) required this.createdAt, @HiveField(6) this.lastAttemptAt, @HiveField(7) this.retryCount = 0, @HiveField(8) this.error}): _data = data;
  factory _SyncItem.fromJson(Map<String, dynamic> json) => _$SyncItemFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  SyncEntityType entityType;
@override@HiveField(2) final  SyncOperation operation;
 final  Map<String, dynamic> _data;
@override@HiveField(3) Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@HiveField(4) final  String status;
@override@HiveField(5) final  String createdAt;
@override@HiveField(6) final  String? lastAttemptAt;
@override@JsonKey()@HiveField(7) final  int retryCount;
@override@HiveField(8) final  String? error;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncItemCopyWith<_SyncItem> get copyWith => __$SyncItemCopyWithImpl<_SyncItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncItem&&(identical(other.id, id) || other.id == id)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastAttemptAt, lastAttemptAt) || other.lastAttemptAt == lastAttemptAt)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entityType,operation,const DeepCollectionEquality().hash(_data),status,createdAt,lastAttemptAt,retryCount,error);

@override
String toString() {
  return 'SyncItem(id: $id, entityType: $entityType, operation: $operation, data: $data, status: $status, createdAt: $createdAt, lastAttemptAt: $lastAttemptAt, retryCount: $retryCount, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SyncItemCopyWith<$Res> implements $SyncItemCopyWith<$Res> {
  factory _$SyncItemCopyWith(_SyncItem value, $Res Function(_SyncItem) _then) = __$SyncItemCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) SyncEntityType entityType,@HiveField(2) SyncOperation operation,@HiveField(3) Map<String, dynamic> data,@HiveField(4) String status,@HiveField(5) String createdAt,@HiveField(6) String? lastAttemptAt,@HiveField(7) int retryCount,@HiveField(8) String? error
});




}
/// @nodoc
class __$SyncItemCopyWithImpl<$Res>
    implements _$SyncItemCopyWith<$Res> {
  __$SyncItemCopyWithImpl(this._self, this._then);

  final _SyncItem _self;
  final $Res Function(_SyncItem) _then;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? entityType = null,Object? operation = null,Object? data = null,Object? status = null,Object? createdAt = null,Object? lastAttemptAt = freezed,Object? retryCount = null,Object? error = freezed,}) {
  return _then(_SyncItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as SyncEntityType,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as SyncOperation,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,lastAttemptAt: freezed == lastAttemptAt ? _self.lastAttemptAt : lastAttemptAt // ignore: cast_nullable_to_non_nullable
as String?,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
