// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_pulse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabPulse {

 int get samplesInTransit; int get samplesProcessing; int get samplesCompleted; int get samplesRejected; List<TatAlert> get tatAlerts; LabCapacity get capacity; List<SampleTrendData> get trends; DateTime get timestamp;
/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabPulseCopyWith<LabPulse> get copyWith => _$LabPulseCopyWithImpl<LabPulse>(this as LabPulse, _$identity);

  /// Serializes this LabPulse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabPulse&&(identical(other.samplesInTransit, samplesInTransit) || other.samplesInTransit == samplesInTransit)&&(identical(other.samplesProcessing, samplesProcessing) || other.samplesProcessing == samplesProcessing)&&(identical(other.samplesCompleted, samplesCompleted) || other.samplesCompleted == samplesCompleted)&&(identical(other.samplesRejected, samplesRejected) || other.samplesRejected == samplesRejected)&&const DeepCollectionEquality().equals(other.tatAlerts, tatAlerts)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other.trends, trends)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,samplesInTransit,samplesProcessing,samplesCompleted,samplesRejected,const DeepCollectionEquality().hash(tatAlerts),capacity,const DeepCollectionEquality().hash(trends),timestamp);

@override
String toString() {
  return 'LabPulse(samplesInTransit: $samplesInTransit, samplesProcessing: $samplesProcessing, samplesCompleted: $samplesCompleted, samplesRejected: $samplesRejected, tatAlerts: $tatAlerts, capacity: $capacity, trends: $trends, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $LabPulseCopyWith<$Res>  {
  factory $LabPulseCopyWith(LabPulse value, $Res Function(LabPulse) _then) = _$LabPulseCopyWithImpl;
@useResult
$Res call({
 int samplesInTransit, int samplesProcessing, int samplesCompleted, int samplesRejected, List<TatAlert> tatAlerts, LabCapacity capacity, List<SampleTrendData> trends, DateTime timestamp
});


$LabCapacityCopyWith<$Res> get capacity;

}
/// @nodoc
class _$LabPulseCopyWithImpl<$Res>
    implements $LabPulseCopyWith<$Res> {
  _$LabPulseCopyWithImpl(this._self, this._then);

  final LabPulse _self;
  final $Res Function(LabPulse) _then;

/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? samplesInTransit = null,Object? samplesProcessing = null,Object? samplesCompleted = null,Object? samplesRejected = null,Object? tatAlerts = null,Object? capacity = null,Object? trends = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
samplesInTransit: null == samplesInTransit ? _self.samplesInTransit : samplesInTransit // ignore: cast_nullable_to_non_nullable
as int,samplesProcessing: null == samplesProcessing ? _self.samplesProcessing : samplesProcessing // ignore: cast_nullable_to_non_nullable
as int,samplesCompleted: null == samplesCompleted ? _self.samplesCompleted : samplesCompleted // ignore: cast_nullable_to_non_nullable
as int,samplesRejected: null == samplesRejected ? _self.samplesRejected : samplesRejected // ignore: cast_nullable_to_non_nullable
as int,tatAlerts: null == tatAlerts ? _self.tatAlerts : tatAlerts // ignore: cast_nullable_to_non_nullable
as List<TatAlert>,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as LabCapacity,trends: null == trends ? _self.trends : trends // ignore: cast_nullable_to_non_nullable
as List<SampleTrendData>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabCapacityCopyWith<$Res> get capacity {
  
  return $LabCapacityCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// Adds pattern-matching-related methods to [LabPulse].
extension LabPulsePatterns on LabPulse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabPulse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabPulse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabPulse value)  $default,){
final _that = this;
switch (_that) {
case _LabPulse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabPulse value)?  $default,){
final _that = this;
switch (_that) {
case _LabPulse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlert> tatAlerts,  LabCapacity capacity,  List<SampleTrendData> trends,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabPulse() when $default != null:
return $default(_that.samplesInTransit,_that.samplesProcessing,_that.samplesCompleted,_that.samplesRejected,_that.tatAlerts,_that.capacity,_that.trends,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlert> tatAlerts,  LabCapacity capacity,  List<SampleTrendData> trends,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _LabPulse():
return $default(_that.samplesInTransit,_that.samplesProcessing,_that.samplesCompleted,_that.samplesRejected,_that.tatAlerts,_that.capacity,_that.trends,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlert> tatAlerts,  LabCapacity capacity,  List<SampleTrendData> trends,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _LabPulse() when $default != null:
return $default(_that.samplesInTransit,_that.samplesProcessing,_that.samplesCompleted,_that.samplesRejected,_that.tatAlerts,_that.capacity,_that.trends,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabPulse implements LabPulse {
  const _LabPulse({required this.samplesInTransit, required this.samplesProcessing, required this.samplesCompleted, required this.samplesRejected, required final  List<TatAlert> tatAlerts, required this.capacity, required final  List<SampleTrendData> trends, required this.timestamp}): _tatAlerts = tatAlerts,_trends = trends;
  factory _LabPulse.fromJson(Map<String, dynamic> json) => _$LabPulseFromJson(json);

@override final  int samplesInTransit;
@override final  int samplesProcessing;
@override final  int samplesCompleted;
@override final  int samplesRejected;
 final  List<TatAlert> _tatAlerts;
@override List<TatAlert> get tatAlerts {
  if (_tatAlerts is EqualUnmodifiableListView) return _tatAlerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tatAlerts);
}

@override final  LabCapacity capacity;
 final  List<SampleTrendData> _trends;
@override List<SampleTrendData> get trends {
  if (_trends is EqualUnmodifiableListView) return _trends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trends);
}

@override final  DateTime timestamp;

/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabPulseCopyWith<_LabPulse> get copyWith => __$LabPulseCopyWithImpl<_LabPulse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabPulseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabPulse&&(identical(other.samplesInTransit, samplesInTransit) || other.samplesInTransit == samplesInTransit)&&(identical(other.samplesProcessing, samplesProcessing) || other.samplesProcessing == samplesProcessing)&&(identical(other.samplesCompleted, samplesCompleted) || other.samplesCompleted == samplesCompleted)&&(identical(other.samplesRejected, samplesRejected) || other.samplesRejected == samplesRejected)&&const DeepCollectionEquality().equals(other._tatAlerts, _tatAlerts)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other._trends, _trends)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,samplesInTransit,samplesProcessing,samplesCompleted,samplesRejected,const DeepCollectionEquality().hash(_tatAlerts),capacity,const DeepCollectionEquality().hash(_trends),timestamp);

@override
String toString() {
  return 'LabPulse(samplesInTransit: $samplesInTransit, samplesProcessing: $samplesProcessing, samplesCompleted: $samplesCompleted, samplesRejected: $samplesRejected, tatAlerts: $tatAlerts, capacity: $capacity, trends: $trends, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$LabPulseCopyWith<$Res> implements $LabPulseCopyWith<$Res> {
  factory _$LabPulseCopyWith(_LabPulse value, $Res Function(_LabPulse) _then) = __$LabPulseCopyWithImpl;
@override @useResult
$Res call({
 int samplesInTransit, int samplesProcessing, int samplesCompleted, int samplesRejected, List<TatAlert> tatAlerts, LabCapacity capacity, List<SampleTrendData> trends, DateTime timestamp
});


@override $LabCapacityCopyWith<$Res> get capacity;

}
/// @nodoc
class __$LabPulseCopyWithImpl<$Res>
    implements _$LabPulseCopyWith<$Res> {
  __$LabPulseCopyWithImpl(this._self, this._then);

  final _LabPulse _self;
  final $Res Function(_LabPulse) _then;

/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? samplesInTransit = null,Object? samplesProcessing = null,Object? samplesCompleted = null,Object? samplesRejected = null,Object? tatAlerts = null,Object? capacity = null,Object? trends = null,Object? timestamp = null,}) {
  return _then(_LabPulse(
samplesInTransit: null == samplesInTransit ? _self.samplesInTransit : samplesInTransit // ignore: cast_nullable_to_non_nullable
as int,samplesProcessing: null == samplesProcessing ? _self.samplesProcessing : samplesProcessing // ignore: cast_nullable_to_non_nullable
as int,samplesCompleted: null == samplesCompleted ? _self.samplesCompleted : samplesCompleted // ignore: cast_nullable_to_non_nullable
as int,samplesRejected: null == samplesRejected ? _self.samplesRejected : samplesRejected // ignore: cast_nullable_to_non_nullable
as int,tatAlerts: null == tatAlerts ? _self._tatAlerts : tatAlerts // ignore: cast_nullable_to_non_nullable
as List<TatAlert>,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as LabCapacity,trends: null == trends ? _self._trends : trends // ignore: cast_nullable_to_non_nullable
as List<SampleTrendData>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of LabPulse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabCapacityCopyWith<$Res> get capacity {
  
  return $LabCapacityCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// @nodoc
mixin _$TatAlert {

 String get sampleId; String get testName; int get remainingMinutes; TatSeverity get severity; DateTime get deadline;
/// Create a copy of TatAlert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TatAlertCopyWith<TatAlert> get copyWith => _$TatAlertCopyWithImpl<TatAlert>(this as TatAlert, _$identity);

  /// Serializes this TatAlert to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TatAlert&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.remainingMinutes, remainingMinutes) || other.remainingMinutes == remainingMinutes)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sampleId,testName,remainingMinutes,severity,deadline);

@override
String toString() {
  return 'TatAlert(sampleId: $sampleId, testName: $testName, remainingMinutes: $remainingMinutes, severity: $severity, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $TatAlertCopyWith<$Res>  {
  factory $TatAlertCopyWith(TatAlert value, $Res Function(TatAlert) _then) = _$TatAlertCopyWithImpl;
@useResult
$Res call({
 String sampleId, String testName, int remainingMinutes, TatSeverity severity, DateTime deadline
});




}
/// @nodoc
class _$TatAlertCopyWithImpl<$Res>
    implements $TatAlertCopyWith<$Res> {
  _$TatAlertCopyWithImpl(this._self, this._then);

  final TatAlert _self;
  final $Res Function(TatAlert) _then;

/// Create a copy of TatAlert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sampleId = null,Object? testName = null,Object? remainingMinutes = null,Object? severity = null,Object? deadline = null,}) {
  return _then(_self.copyWith(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,remainingMinutes: null == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as TatSeverity,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TatAlert].
extension TatAlertPatterns on TatAlert {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TatAlert value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TatAlert() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TatAlert value)  $default,){
final _that = this;
switch (_that) {
case _TatAlert():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TatAlert value)?  $default,){
final _that = this;
switch (_that) {
case _TatAlert() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sampleId,  String testName,  int remainingMinutes,  TatSeverity severity,  DateTime deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TatAlert() when $default != null:
return $default(_that.sampleId,_that.testName,_that.remainingMinutes,_that.severity,_that.deadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sampleId,  String testName,  int remainingMinutes,  TatSeverity severity,  DateTime deadline)  $default,) {final _that = this;
switch (_that) {
case _TatAlert():
return $default(_that.sampleId,_that.testName,_that.remainingMinutes,_that.severity,_that.deadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sampleId,  String testName,  int remainingMinutes,  TatSeverity severity,  DateTime deadline)?  $default,) {final _that = this;
switch (_that) {
case _TatAlert() when $default != null:
return $default(_that.sampleId,_that.testName,_that.remainingMinutes,_that.severity,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TatAlert implements TatAlert {
  const _TatAlert({required this.sampleId, required this.testName, required this.remainingMinutes, required this.severity, required this.deadline});
  factory _TatAlert.fromJson(Map<String, dynamic> json) => _$TatAlertFromJson(json);

@override final  String sampleId;
@override final  String testName;
@override final  int remainingMinutes;
@override final  TatSeverity severity;
@override final  DateTime deadline;

/// Create a copy of TatAlert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TatAlertCopyWith<_TatAlert> get copyWith => __$TatAlertCopyWithImpl<_TatAlert>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TatAlertToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TatAlert&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.remainingMinutes, remainingMinutes) || other.remainingMinutes == remainingMinutes)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sampleId,testName,remainingMinutes,severity,deadline);

@override
String toString() {
  return 'TatAlert(sampleId: $sampleId, testName: $testName, remainingMinutes: $remainingMinutes, severity: $severity, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$TatAlertCopyWith<$Res> implements $TatAlertCopyWith<$Res> {
  factory _$TatAlertCopyWith(_TatAlert value, $Res Function(_TatAlert) _then) = __$TatAlertCopyWithImpl;
@override @useResult
$Res call({
 String sampleId, String testName, int remainingMinutes, TatSeverity severity, DateTime deadline
});




}
/// @nodoc
class __$TatAlertCopyWithImpl<$Res>
    implements _$TatAlertCopyWith<$Res> {
  __$TatAlertCopyWithImpl(this._self, this._then);

  final _TatAlert _self;
  final $Res Function(_TatAlert) _then;

/// Create a copy of TatAlert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sampleId = null,Object? testName = null,Object? remainingMinutes = null,Object? severity = null,Object? deadline = null,}) {
  return _then(_TatAlert(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,remainingMinutes: null == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as TatSeverity,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$LabCapacity {

 int get currentLoad; int get maxCapacity; double get utilizationPercentage; int get availableAnalyzers; int get totalAnalyzers;
/// Create a copy of LabCapacity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabCapacityCopyWith<LabCapacity> get copyWith => _$LabCapacityCopyWithImpl<LabCapacity>(this as LabCapacity, _$identity);

  /// Serializes this LabCapacity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabCapacity&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.availableAnalyzers, availableAnalyzers) || other.availableAnalyzers == availableAnalyzers)&&(identical(other.totalAnalyzers, totalAnalyzers) || other.totalAnalyzers == totalAnalyzers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLoad,maxCapacity,utilizationPercentage,availableAnalyzers,totalAnalyzers);

@override
String toString() {
  return 'LabCapacity(currentLoad: $currentLoad, maxCapacity: $maxCapacity, utilizationPercentage: $utilizationPercentage, availableAnalyzers: $availableAnalyzers, totalAnalyzers: $totalAnalyzers)';
}


}

/// @nodoc
abstract mixin class $LabCapacityCopyWith<$Res>  {
  factory $LabCapacityCopyWith(LabCapacity value, $Res Function(LabCapacity) _then) = _$LabCapacityCopyWithImpl;
@useResult
$Res call({
 int currentLoad, int maxCapacity, double utilizationPercentage, int availableAnalyzers, int totalAnalyzers
});




}
/// @nodoc
class _$LabCapacityCopyWithImpl<$Res>
    implements $LabCapacityCopyWith<$Res> {
  _$LabCapacityCopyWithImpl(this._self, this._then);

  final LabCapacity _self;
  final $Res Function(LabCapacity) _then;

/// Create a copy of LabCapacity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLoad = null,Object? maxCapacity = null,Object? utilizationPercentage = null,Object? availableAnalyzers = null,Object? totalAnalyzers = null,}) {
  return _then(_self.copyWith(
currentLoad: null == currentLoad ? _self.currentLoad : currentLoad // ignore: cast_nullable_to_non_nullable
as int,maxCapacity: null == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int,utilizationPercentage: null == utilizationPercentage ? _self.utilizationPercentage : utilizationPercentage // ignore: cast_nullable_to_non_nullable
as double,availableAnalyzers: null == availableAnalyzers ? _self.availableAnalyzers : availableAnalyzers // ignore: cast_nullable_to_non_nullable
as int,totalAnalyzers: null == totalAnalyzers ? _self.totalAnalyzers : totalAnalyzers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LabCapacity].
extension LabCapacityPatterns on LabCapacity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabCapacity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabCapacity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabCapacity value)  $default,){
final _that = this;
switch (_that) {
case _LabCapacity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabCapacity value)?  $default,){
final _that = this;
switch (_that) {
case _LabCapacity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentLoad,  int maxCapacity,  double utilizationPercentage,  int availableAnalyzers,  int totalAnalyzers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabCapacity() when $default != null:
return $default(_that.currentLoad,_that.maxCapacity,_that.utilizationPercentage,_that.availableAnalyzers,_that.totalAnalyzers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentLoad,  int maxCapacity,  double utilizationPercentage,  int availableAnalyzers,  int totalAnalyzers)  $default,) {final _that = this;
switch (_that) {
case _LabCapacity():
return $default(_that.currentLoad,_that.maxCapacity,_that.utilizationPercentage,_that.availableAnalyzers,_that.totalAnalyzers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentLoad,  int maxCapacity,  double utilizationPercentage,  int availableAnalyzers,  int totalAnalyzers)?  $default,) {final _that = this;
switch (_that) {
case _LabCapacity() when $default != null:
return $default(_that.currentLoad,_that.maxCapacity,_that.utilizationPercentage,_that.availableAnalyzers,_that.totalAnalyzers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabCapacity implements LabCapacity {
  const _LabCapacity({required this.currentLoad, required this.maxCapacity, required this.utilizationPercentage, required this.availableAnalyzers, required this.totalAnalyzers});
  factory _LabCapacity.fromJson(Map<String, dynamic> json) => _$LabCapacityFromJson(json);

@override final  int currentLoad;
@override final  int maxCapacity;
@override final  double utilizationPercentage;
@override final  int availableAnalyzers;
@override final  int totalAnalyzers;

/// Create a copy of LabCapacity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabCapacityCopyWith<_LabCapacity> get copyWith => __$LabCapacityCopyWithImpl<_LabCapacity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabCapacityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabCapacity&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.availableAnalyzers, availableAnalyzers) || other.availableAnalyzers == availableAnalyzers)&&(identical(other.totalAnalyzers, totalAnalyzers) || other.totalAnalyzers == totalAnalyzers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLoad,maxCapacity,utilizationPercentage,availableAnalyzers,totalAnalyzers);

@override
String toString() {
  return 'LabCapacity(currentLoad: $currentLoad, maxCapacity: $maxCapacity, utilizationPercentage: $utilizationPercentage, availableAnalyzers: $availableAnalyzers, totalAnalyzers: $totalAnalyzers)';
}


}

/// @nodoc
abstract mixin class _$LabCapacityCopyWith<$Res> implements $LabCapacityCopyWith<$Res> {
  factory _$LabCapacityCopyWith(_LabCapacity value, $Res Function(_LabCapacity) _then) = __$LabCapacityCopyWithImpl;
@override @useResult
$Res call({
 int currentLoad, int maxCapacity, double utilizationPercentage, int availableAnalyzers, int totalAnalyzers
});




}
/// @nodoc
class __$LabCapacityCopyWithImpl<$Res>
    implements _$LabCapacityCopyWith<$Res> {
  __$LabCapacityCopyWithImpl(this._self, this._then);

  final _LabCapacity _self;
  final $Res Function(_LabCapacity) _then;

/// Create a copy of LabCapacity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLoad = null,Object? maxCapacity = null,Object? utilizationPercentage = null,Object? availableAnalyzers = null,Object? totalAnalyzers = null,}) {
  return _then(_LabCapacity(
currentLoad: null == currentLoad ? _self.currentLoad : currentLoad // ignore: cast_nullable_to_non_nullable
as int,maxCapacity: null == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int,utilizationPercentage: null == utilizationPercentage ? _self.utilizationPercentage : utilizationPercentage // ignore: cast_nullable_to_non_nullable
as double,availableAnalyzers: null == availableAnalyzers ? _self.availableAnalyzers : availableAnalyzers // ignore: cast_nullable_to_non_nullable
as int,totalAnalyzers: null == totalAnalyzers ? _self.totalAnalyzers : totalAnalyzers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SampleTrendData {

 DateTime get timestamp; int get inTransit; int get processing;
/// Create a copy of SampleTrendData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleTrendDataCopyWith<SampleTrendData> get copyWith => _$SampleTrendDataCopyWithImpl<SampleTrendData>(this as SampleTrendData, _$identity);

  /// Serializes this SampleTrendData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleTrendData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.inTransit, inTransit) || other.inTransit == inTransit)&&(identical(other.processing, processing) || other.processing == processing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,inTransit,processing);

@override
String toString() {
  return 'SampleTrendData(timestamp: $timestamp, inTransit: $inTransit, processing: $processing)';
}


}

/// @nodoc
abstract mixin class $SampleTrendDataCopyWith<$Res>  {
  factory $SampleTrendDataCopyWith(SampleTrendData value, $Res Function(SampleTrendData) _then) = _$SampleTrendDataCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp, int inTransit, int processing
});




}
/// @nodoc
class _$SampleTrendDataCopyWithImpl<$Res>
    implements $SampleTrendDataCopyWith<$Res> {
  _$SampleTrendDataCopyWithImpl(this._self, this._then);

  final SampleTrendData _self;
  final $Res Function(SampleTrendData) _then;

/// Create a copy of SampleTrendData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? inTransit = null,Object? processing = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,inTransit: null == inTransit ? _self.inTransit : inTransit // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SampleTrendData].
extension SampleTrendDataPatterns on SampleTrendData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleTrendData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleTrendData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleTrendData value)  $default,){
final _that = this;
switch (_that) {
case _SampleTrendData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleTrendData value)?  $default,){
final _that = this;
switch (_that) {
case _SampleTrendData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime timestamp,  int inTransit,  int processing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleTrendData() when $default != null:
return $default(_that.timestamp,_that.inTransit,_that.processing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime timestamp,  int inTransit,  int processing)  $default,) {final _that = this;
switch (_that) {
case _SampleTrendData():
return $default(_that.timestamp,_that.inTransit,_that.processing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime timestamp,  int inTransit,  int processing)?  $default,) {final _that = this;
switch (_that) {
case _SampleTrendData() when $default != null:
return $default(_that.timestamp,_that.inTransit,_that.processing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SampleTrendData implements SampleTrendData {
  const _SampleTrendData({required this.timestamp, required this.inTransit, required this.processing});
  factory _SampleTrendData.fromJson(Map<String, dynamic> json) => _$SampleTrendDataFromJson(json);

@override final  DateTime timestamp;
@override final  int inTransit;
@override final  int processing;

/// Create a copy of SampleTrendData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleTrendDataCopyWith<_SampleTrendData> get copyWith => __$SampleTrendDataCopyWithImpl<_SampleTrendData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleTrendDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleTrendData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.inTransit, inTransit) || other.inTransit == inTransit)&&(identical(other.processing, processing) || other.processing == processing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,inTransit,processing);

@override
String toString() {
  return 'SampleTrendData(timestamp: $timestamp, inTransit: $inTransit, processing: $processing)';
}


}

/// @nodoc
abstract mixin class _$SampleTrendDataCopyWith<$Res> implements $SampleTrendDataCopyWith<$Res> {
  factory _$SampleTrendDataCopyWith(_SampleTrendData value, $Res Function(_SampleTrendData) _then) = __$SampleTrendDataCopyWithImpl;
@override @useResult
$Res call({
 DateTime timestamp, int inTransit, int processing
});




}
/// @nodoc
class __$SampleTrendDataCopyWithImpl<$Res>
    implements _$SampleTrendDataCopyWith<$Res> {
  __$SampleTrendDataCopyWithImpl(this._self, this._then);

  final _SampleTrendData _self;
  final $Res Function(_SampleTrendData) _then;

/// Create a copy of SampleTrendData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? inTransit = null,Object? processing = null,}) {
  return _then(_SampleTrendData(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,inTransit: null == inTransit ? _self.inTransit : inTransit // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
