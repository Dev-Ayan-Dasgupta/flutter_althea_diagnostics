// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppNotification {

 String get id; String get title; String get message; NotificationType get type; NotificationPriority get priority; DateTime get timestamp; bool get isRead; String? get imageUrl; String? get actionUrl; Map<String, dynamic>? get metadata;
/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationCopyWith<AppNotification> get copyWith => _$AppNotificationCopyWithImpl<AppNotification>(this as AppNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,message,type,priority,timestamp,isRead,imageUrl,actionUrl,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'AppNotification(id: $id, title: $title, message: $message, type: $type, priority: $priority, timestamp: $timestamp, isRead: $isRead, imageUrl: $imageUrl, actionUrl: $actionUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AppNotificationCopyWith<$Res>  {
  factory $AppNotificationCopyWith(AppNotification value, $Res Function(AppNotification) _then) = _$AppNotificationCopyWithImpl;
@useResult
$Res call({
 String id, String title, String message, NotificationType type, NotificationPriority priority, DateTime timestamp, bool isRead, String? imageUrl, String? actionUrl, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$AppNotificationCopyWithImpl<$Res>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._self, this._then);

  final AppNotification _self;
  final $Res Function(AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? message = null,Object? type = null,Object? priority = null,Object? timestamp = null,Object? isRead = null,Object? imageUrl = freezed,Object? actionUrl = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as NotificationPriority,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppNotification].
extension AppNotificationPatterns on AppNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotification value)  $default,){
final _that = this;
switch (_that) {
case _AppNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotification value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String message,  NotificationType type,  NotificationPriority priority,  DateTime timestamp,  bool isRead,  String? imageUrl,  String? actionUrl,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.title,_that.message,_that.type,_that.priority,_that.timestamp,_that.isRead,_that.imageUrl,_that.actionUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String message,  NotificationType type,  NotificationPriority priority,  DateTime timestamp,  bool isRead,  String? imageUrl,  String? actionUrl,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _AppNotification():
return $default(_that.id,_that.title,_that.message,_that.type,_that.priority,_that.timestamp,_that.isRead,_that.imageUrl,_that.actionUrl,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String message,  NotificationType type,  NotificationPriority priority,  DateTime timestamp,  bool isRead,  String? imageUrl,  String? actionUrl,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.title,_that.message,_that.type,_that.priority,_that.timestamp,_that.isRead,_that.imageUrl,_that.actionUrl,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _AppNotification implements AppNotification {
  const _AppNotification({required this.id, required this.title, required this.message, required this.type, required this.priority, required this.timestamp, required this.isRead, this.imageUrl, this.actionUrl, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  

@override final  String id;
@override final  String title;
@override final  String message;
@override final  NotificationType type;
@override final  NotificationPriority priority;
@override final  DateTime timestamp;
@override final  bool isRead;
@override final  String? imageUrl;
@override final  String? actionUrl;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationCopyWith<_AppNotification> get copyWith => __$AppNotificationCopyWithImpl<_AppNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,message,type,priority,timestamp,isRead,imageUrl,actionUrl,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'AppNotification(id: $id, title: $title, message: $message, type: $type, priority: $priority, timestamp: $timestamp, isRead: $isRead, imageUrl: $imageUrl, actionUrl: $actionUrl, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationCopyWith<$Res> implements $AppNotificationCopyWith<$Res> {
  factory _$AppNotificationCopyWith(_AppNotification value, $Res Function(_AppNotification) _then) = __$AppNotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String message, NotificationType type, NotificationPriority priority, DateTime timestamp, bool isRead, String? imageUrl, String? actionUrl, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$AppNotificationCopyWithImpl<$Res>
    implements _$AppNotificationCopyWith<$Res> {
  __$AppNotificationCopyWithImpl(this._self, this._then);

  final _AppNotification _self;
  final $Res Function(_AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? message = null,Object? type = null,Object? priority = null,Object? timestamp = null,Object? isRead = null,Object? imageUrl = freezed,Object? actionUrl = freezed,Object? metadata = freezed,}) {
  return _then(_AppNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as NotificationPriority,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
