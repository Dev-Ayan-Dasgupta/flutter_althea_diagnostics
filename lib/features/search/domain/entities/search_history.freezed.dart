// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchHistoryItem {

 String get id; String get query; DateTime get timestamp; SearchType get type;
/// Create a copy of SearchHistoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHistoryItemCopyWith<SearchHistoryItem> get copyWith => _$SearchHistoryItemCopyWithImpl<SearchHistoryItem>(this as SearchHistoryItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.query, query) || other.query == query)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,query,timestamp,type);

@override
String toString() {
  return 'SearchHistoryItem(id: $id, query: $query, timestamp: $timestamp, type: $type)';
}


}

/// @nodoc
abstract mixin class $SearchHistoryItemCopyWith<$Res>  {
  factory $SearchHistoryItemCopyWith(SearchHistoryItem value, $Res Function(SearchHistoryItem) _then) = _$SearchHistoryItemCopyWithImpl;
@useResult
$Res call({
 String id, String query, DateTime timestamp, SearchType type
});




}
/// @nodoc
class _$SearchHistoryItemCopyWithImpl<$Res>
    implements $SearchHistoryItemCopyWith<$Res> {
  _$SearchHistoryItemCopyWithImpl(this._self, this._then);

  final SearchHistoryItem _self;
  final $Res Function(SearchHistoryItem) _then;

/// Create a copy of SearchHistoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? query = null,Object? timestamp = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SearchType,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchHistoryItem].
extension SearchHistoryItemPatterns on SearchHistoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchHistoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchHistoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchHistoryItem value)  $default,){
final _that = this;
switch (_that) {
case _SearchHistoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchHistoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _SearchHistoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String query,  DateTime timestamp,  SearchType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchHistoryItem() when $default != null:
return $default(_that.id,_that.query,_that.timestamp,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String query,  DateTime timestamp,  SearchType type)  $default,) {final _that = this;
switch (_that) {
case _SearchHistoryItem():
return $default(_that.id,_that.query,_that.timestamp,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String query,  DateTime timestamp,  SearchType type)?  $default,) {final _that = this;
switch (_that) {
case _SearchHistoryItem() when $default != null:
return $default(_that.id,_that.query,_that.timestamp,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _SearchHistoryItem implements SearchHistoryItem {
  const _SearchHistoryItem({required this.id, required this.query, required this.timestamp, required this.type});
  

@override final  String id;
@override final  String query;
@override final  DateTime timestamp;
@override final  SearchType type;

/// Create a copy of SearchHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchHistoryItemCopyWith<_SearchHistoryItem> get copyWith => __$SearchHistoryItemCopyWithImpl<_SearchHistoryItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.query, query) || other.query == query)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,query,timestamp,type);

@override
String toString() {
  return 'SearchHistoryItem(id: $id, query: $query, timestamp: $timestamp, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SearchHistoryItemCopyWith<$Res> implements $SearchHistoryItemCopyWith<$Res> {
  factory _$SearchHistoryItemCopyWith(_SearchHistoryItem value, $Res Function(_SearchHistoryItem) _then) = __$SearchHistoryItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String query, DateTime timestamp, SearchType type
});




}
/// @nodoc
class __$SearchHistoryItemCopyWithImpl<$Res>
    implements _$SearchHistoryItemCopyWith<$Res> {
  __$SearchHistoryItemCopyWithImpl(this._self, this._then);

  final _SearchHistoryItem _self;
  final $Res Function(_SearchHistoryItem) _then;

/// Create a copy of SearchHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? query = null,Object? timestamp = null,Object? type = null,}) {
  return _then(_SearchHistoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SearchType,
  ));
}


}

// dart format on
