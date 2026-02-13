// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_pulse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabPulseModel {

 int get samplesInTransit; int get samplesProcessing; int get samplesCompleted; int get samplesRejected; List<TatAlertModel> get tatAlerts; LabCapacityModel get capacity; List<SampleTrendDataModel> get trends; String get timestamp;
/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabPulseModelCopyWith<LabPulseModel> get copyWith => _$LabPulseModelCopyWithImpl<LabPulseModel>(this as LabPulseModel, _$identity);

  /// Serializes this LabPulseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabPulseModel&&(identical(other.samplesInTransit, samplesInTransit) || other.samplesInTransit == samplesInTransit)&&(identical(other.samplesProcessing, samplesProcessing) || other.samplesProcessing == samplesProcessing)&&(identical(other.samplesCompleted, samplesCompleted) || other.samplesCompleted == samplesCompleted)&&(identical(other.samplesRejected, samplesRejected) || other.samplesRejected == samplesRejected)&&const DeepCollectionEquality().equals(other.tatAlerts, tatAlerts)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other.trends, trends)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,samplesInTransit,samplesProcessing,samplesCompleted,samplesRejected,const DeepCollectionEquality().hash(tatAlerts),capacity,const DeepCollectionEquality().hash(trends),timestamp);

@override
String toString() {
  return 'LabPulseModel(samplesInTransit: $samplesInTransit, samplesProcessing: $samplesProcessing, samplesCompleted: $samplesCompleted, samplesRejected: $samplesRejected, tatAlerts: $tatAlerts, capacity: $capacity, trends: $trends, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $LabPulseModelCopyWith<$Res>  {
  factory $LabPulseModelCopyWith(LabPulseModel value, $Res Function(LabPulseModel) _then) = _$LabPulseModelCopyWithImpl;
@useResult
$Res call({
 int samplesInTransit, int samplesProcessing, int samplesCompleted, int samplesRejected, List<TatAlertModel> tatAlerts, LabCapacityModel capacity, List<SampleTrendDataModel> trends, String timestamp
});


$LabCapacityModelCopyWith<$Res> get capacity;

}
/// @nodoc
class _$LabPulseModelCopyWithImpl<$Res>
    implements $LabPulseModelCopyWith<$Res> {
  _$LabPulseModelCopyWithImpl(this._self, this._then);

  final LabPulseModel _self;
  final $Res Function(LabPulseModel) _then;

/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? samplesInTransit = null,Object? samplesProcessing = null,Object? samplesCompleted = null,Object? samplesRejected = null,Object? tatAlerts = null,Object? capacity = null,Object? trends = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
samplesInTransit: null == samplesInTransit ? _self.samplesInTransit : samplesInTransit // ignore: cast_nullable_to_non_nullable
as int,samplesProcessing: null == samplesProcessing ? _self.samplesProcessing : samplesProcessing // ignore: cast_nullable_to_non_nullable
as int,samplesCompleted: null == samplesCompleted ? _self.samplesCompleted : samplesCompleted // ignore: cast_nullable_to_non_nullable
as int,samplesRejected: null == samplesRejected ? _self.samplesRejected : samplesRejected // ignore: cast_nullable_to_non_nullable
as int,tatAlerts: null == tatAlerts ? _self.tatAlerts : tatAlerts // ignore: cast_nullable_to_non_nullable
as List<TatAlertModel>,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as LabCapacityModel,trends: null == trends ? _self.trends : trends // ignore: cast_nullable_to_non_nullable
as List<SampleTrendDataModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabCapacityModelCopyWith<$Res> get capacity {
  
  return $LabCapacityModelCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// Adds pattern-matching-related methods to [LabPulseModel].
extension LabPulseModelPatterns on LabPulseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabPulseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabPulseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabPulseModel value)  $default,){
final _that = this;
switch (_that) {
case _LabPulseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabPulseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LabPulseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlertModel> tatAlerts,  LabCapacityModel capacity,  List<SampleTrendDataModel> trends,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabPulseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlertModel> tatAlerts,  LabCapacityModel capacity,  List<SampleTrendDataModel> trends,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _LabPulseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int samplesInTransit,  int samplesProcessing,  int samplesCompleted,  int samplesRejected,  List<TatAlertModel> tatAlerts,  LabCapacityModel capacity,  List<SampleTrendDataModel> trends,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _LabPulseModel() when $default != null:
return $default(_that.samplesInTransit,_that.samplesProcessing,_that.samplesCompleted,_that.samplesRejected,_that.tatAlerts,_that.capacity,_that.trends,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabPulseModel implements LabPulseModel {
  const _LabPulseModel({required this.samplesInTransit, required this.samplesProcessing, required this.samplesCompleted, required this.samplesRejected, required final  List<TatAlertModel> tatAlerts, required this.capacity, required final  List<SampleTrendDataModel> trends, required this.timestamp}): _tatAlerts = tatAlerts,_trends = trends;
  factory _LabPulseModel.fromJson(Map<String, dynamic> json) => _$LabPulseModelFromJson(json);

@override final  int samplesInTransit;
@override final  int samplesProcessing;
@override final  int samplesCompleted;
@override final  int samplesRejected;
 final  List<TatAlertModel> _tatAlerts;
@override List<TatAlertModel> get tatAlerts {
  if (_tatAlerts is EqualUnmodifiableListView) return _tatAlerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tatAlerts);
}

@override final  LabCapacityModel capacity;
 final  List<SampleTrendDataModel> _trends;
@override List<SampleTrendDataModel> get trends {
  if (_trends is EqualUnmodifiableListView) return _trends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trends);
}

@override final  String timestamp;

/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabPulseModelCopyWith<_LabPulseModel> get copyWith => __$LabPulseModelCopyWithImpl<_LabPulseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabPulseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabPulseModel&&(identical(other.samplesInTransit, samplesInTransit) || other.samplesInTransit == samplesInTransit)&&(identical(other.samplesProcessing, samplesProcessing) || other.samplesProcessing == samplesProcessing)&&(identical(other.samplesCompleted, samplesCompleted) || other.samplesCompleted == samplesCompleted)&&(identical(other.samplesRejected, samplesRejected) || other.samplesRejected == samplesRejected)&&const DeepCollectionEquality().equals(other._tatAlerts, _tatAlerts)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other._trends, _trends)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,samplesInTransit,samplesProcessing,samplesCompleted,samplesRejected,const DeepCollectionEquality().hash(_tatAlerts),capacity,const DeepCollectionEquality().hash(_trends),timestamp);

@override
String toString() {
  return 'LabPulseModel(samplesInTransit: $samplesInTransit, samplesProcessing: $samplesProcessing, samplesCompleted: $samplesCompleted, samplesRejected: $samplesRejected, tatAlerts: $tatAlerts, capacity: $capacity, trends: $trends, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$LabPulseModelCopyWith<$Res> implements $LabPulseModelCopyWith<$Res> {
  factory _$LabPulseModelCopyWith(_LabPulseModel value, $Res Function(_LabPulseModel) _then) = __$LabPulseModelCopyWithImpl;
@override @useResult
$Res call({
 int samplesInTransit, int samplesProcessing, int samplesCompleted, int samplesRejected, List<TatAlertModel> tatAlerts, LabCapacityModel capacity, List<SampleTrendDataModel> trends, String timestamp
});


@override $LabCapacityModelCopyWith<$Res> get capacity;

}
/// @nodoc
class __$LabPulseModelCopyWithImpl<$Res>
    implements _$LabPulseModelCopyWith<$Res> {
  __$LabPulseModelCopyWithImpl(this._self, this._then);

  final _LabPulseModel _self;
  final $Res Function(_LabPulseModel) _then;

/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? samplesInTransit = null,Object? samplesProcessing = null,Object? samplesCompleted = null,Object? samplesRejected = null,Object? tatAlerts = null,Object? capacity = null,Object? trends = null,Object? timestamp = null,}) {
  return _then(_LabPulseModel(
samplesInTransit: null == samplesInTransit ? _self.samplesInTransit : samplesInTransit // ignore: cast_nullable_to_non_nullable
as int,samplesProcessing: null == samplesProcessing ? _self.samplesProcessing : samplesProcessing // ignore: cast_nullable_to_non_nullable
as int,samplesCompleted: null == samplesCompleted ? _self.samplesCompleted : samplesCompleted // ignore: cast_nullable_to_non_nullable
as int,samplesRejected: null == samplesRejected ? _self.samplesRejected : samplesRejected // ignore: cast_nullable_to_non_nullable
as int,tatAlerts: null == tatAlerts ? _self._tatAlerts : tatAlerts // ignore: cast_nullable_to_non_nullable
as List<TatAlertModel>,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as LabCapacityModel,trends: null == trends ? _self._trends : trends // ignore: cast_nullable_to_non_nullable
as List<SampleTrendDataModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LabPulseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabCapacityModelCopyWith<$Res> get capacity {
  
  return $LabCapacityModelCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// @nodoc
mixin _$TatAlertModel {

 String get sampleId; String get testName; int get remainingMinutes; String get severity; String get deadline;
/// Create a copy of TatAlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TatAlertModelCopyWith<TatAlertModel> get copyWith => _$TatAlertModelCopyWithImpl<TatAlertModel>(this as TatAlertModel, _$identity);

  /// Serializes this TatAlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TatAlertModel&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.remainingMinutes, remainingMinutes) || other.remainingMinutes == remainingMinutes)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sampleId,testName,remainingMinutes,severity,deadline);

@override
String toString() {
  return 'TatAlertModel(sampleId: $sampleId, testName: $testName, remainingMinutes: $remainingMinutes, severity: $severity, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $TatAlertModelCopyWith<$Res>  {
  factory $TatAlertModelCopyWith(TatAlertModel value, $Res Function(TatAlertModel) _then) = _$TatAlertModelCopyWithImpl;
@useResult
$Res call({
 String sampleId, String testName, int remainingMinutes, String severity, String deadline
});




}
/// @nodoc
class _$TatAlertModelCopyWithImpl<$Res>
    implements $TatAlertModelCopyWith<$Res> {
  _$TatAlertModelCopyWithImpl(this._self, this._then);

  final TatAlertModel _self;
  final $Res Function(TatAlertModel) _then;

/// Create a copy of TatAlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sampleId = null,Object? testName = null,Object? remainingMinutes = null,Object? severity = null,Object? deadline = null,}) {
  return _then(_self.copyWith(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,remainingMinutes: null == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TatAlertModel].
extension TatAlertModelPatterns on TatAlertModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TatAlertModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TatAlertModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TatAlertModel value)  $default,){
final _that = this;
switch (_that) {
case _TatAlertModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TatAlertModel value)?  $default,){
final _that = this;
switch (_that) {
case _TatAlertModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sampleId,  String testName,  int remainingMinutes,  String severity,  String deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TatAlertModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sampleId,  String testName,  int remainingMinutes,  String severity,  String deadline)  $default,) {final _that = this;
switch (_that) {
case _TatAlertModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sampleId,  String testName,  int remainingMinutes,  String severity,  String deadline)?  $default,) {final _that = this;
switch (_that) {
case _TatAlertModel() when $default != null:
return $default(_that.sampleId,_that.testName,_that.remainingMinutes,_that.severity,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TatAlertModel implements TatAlertModel {
  const _TatAlertModel({required this.sampleId, required this.testName, required this.remainingMinutes, required this.severity, required this.deadline});
  factory _TatAlertModel.fromJson(Map<String, dynamic> json) => _$TatAlertModelFromJson(json);

@override final  String sampleId;
@override final  String testName;
@override final  int remainingMinutes;
@override final  String severity;
@override final  String deadline;

/// Create a copy of TatAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TatAlertModelCopyWith<_TatAlertModel> get copyWith => __$TatAlertModelCopyWithImpl<_TatAlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TatAlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TatAlertModel&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.remainingMinutes, remainingMinutes) || other.remainingMinutes == remainingMinutes)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sampleId,testName,remainingMinutes,severity,deadline);

@override
String toString() {
  return 'TatAlertModel(sampleId: $sampleId, testName: $testName, remainingMinutes: $remainingMinutes, severity: $severity, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$TatAlertModelCopyWith<$Res> implements $TatAlertModelCopyWith<$Res> {
  factory _$TatAlertModelCopyWith(_TatAlertModel value, $Res Function(_TatAlertModel) _then) = __$TatAlertModelCopyWithImpl;
@override @useResult
$Res call({
 String sampleId, String testName, int remainingMinutes, String severity, String deadline
});




}
/// @nodoc
class __$TatAlertModelCopyWithImpl<$Res>
    implements _$TatAlertModelCopyWith<$Res> {
  __$TatAlertModelCopyWithImpl(this._self, this._then);

  final _TatAlertModel _self;
  final $Res Function(_TatAlertModel) _then;

/// Create a copy of TatAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sampleId = null,Object? testName = null,Object? remainingMinutes = null,Object? severity = null,Object? deadline = null,}) {
  return _then(_TatAlertModel(
sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,remainingMinutes: null == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LabCapacityModel {

 int get currentLoad; int get maxCapacity; double get utilizationPercentage; int get availableAnalyzers; int get totalAnalyzers;
/// Create a copy of LabCapacityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabCapacityModelCopyWith<LabCapacityModel> get copyWith => _$LabCapacityModelCopyWithImpl<LabCapacityModel>(this as LabCapacityModel, _$identity);

  /// Serializes this LabCapacityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabCapacityModel&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.availableAnalyzers, availableAnalyzers) || other.availableAnalyzers == availableAnalyzers)&&(identical(other.totalAnalyzers, totalAnalyzers) || other.totalAnalyzers == totalAnalyzers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLoad,maxCapacity,utilizationPercentage,availableAnalyzers,totalAnalyzers);

@override
String toString() {
  return 'LabCapacityModel(currentLoad: $currentLoad, maxCapacity: $maxCapacity, utilizationPercentage: $utilizationPercentage, availableAnalyzers: $availableAnalyzers, totalAnalyzers: $totalAnalyzers)';
}


}

/// @nodoc
abstract mixin class $LabCapacityModelCopyWith<$Res>  {
  factory $LabCapacityModelCopyWith(LabCapacityModel value, $Res Function(LabCapacityModel) _then) = _$LabCapacityModelCopyWithImpl;
@useResult
$Res call({
 int currentLoad, int maxCapacity, double utilizationPercentage, int availableAnalyzers, int totalAnalyzers
});




}
/// @nodoc
class _$LabCapacityModelCopyWithImpl<$Res>
    implements $LabCapacityModelCopyWith<$Res> {
  _$LabCapacityModelCopyWithImpl(this._self, this._then);

  final LabCapacityModel _self;
  final $Res Function(LabCapacityModel) _then;

/// Create a copy of LabCapacityModel
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


/// Adds pattern-matching-related methods to [LabCapacityModel].
extension LabCapacityModelPatterns on LabCapacityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabCapacityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabCapacityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabCapacityModel value)  $default,){
final _that = this;
switch (_that) {
case _LabCapacityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabCapacityModel value)?  $default,){
final _that = this;
switch (_that) {
case _LabCapacityModel() when $default != null:
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
case _LabCapacityModel() when $default != null:
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
case _LabCapacityModel():
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
case _LabCapacityModel() when $default != null:
return $default(_that.currentLoad,_that.maxCapacity,_that.utilizationPercentage,_that.availableAnalyzers,_that.totalAnalyzers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabCapacityModel implements LabCapacityModel {
  const _LabCapacityModel({required this.currentLoad, required this.maxCapacity, required this.utilizationPercentage, required this.availableAnalyzers, required this.totalAnalyzers});
  factory _LabCapacityModel.fromJson(Map<String, dynamic> json) => _$LabCapacityModelFromJson(json);

@override final  int currentLoad;
@override final  int maxCapacity;
@override final  double utilizationPercentage;
@override final  int availableAnalyzers;
@override final  int totalAnalyzers;

/// Create a copy of LabCapacityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabCapacityModelCopyWith<_LabCapacityModel> get copyWith => __$LabCapacityModelCopyWithImpl<_LabCapacityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabCapacityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabCapacityModel&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.availableAnalyzers, availableAnalyzers) || other.availableAnalyzers == availableAnalyzers)&&(identical(other.totalAnalyzers, totalAnalyzers) || other.totalAnalyzers == totalAnalyzers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLoad,maxCapacity,utilizationPercentage,availableAnalyzers,totalAnalyzers);

@override
String toString() {
  return 'LabCapacityModel(currentLoad: $currentLoad, maxCapacity: $maxCapacity, utilizationPercentage: $utilizationPercentage, availableAnalyzers: $availableAnalyzers, totalAnalyzers: $totalAnalyzers)';
}


}

/// @nodoc
abstract mixin class _$LabCapacityModelCopyWith<$Res> implements $LabCapacityModelCopyWith<$Res> {
  factory _$LabCapacityModelCopyWith(_LabCapacityModel value, $Res Function(_LabCapacityModel) _then) = __$LabCapacityModelCopyWithImpl;
@override @useResult
$Res call({
 int currentLoad, int maxCapacity, double utilizationPercentage, int availableAnalyzers, int totalAnalyzers
});




}
/// @nodoc
class __$LabCapacityModelCopyWithImpl<$Res>
    implements _$LabCapacityModelCopyWith<$Res> {
  __$LabCapacityModelCopyWithImpl(this._self, this._then);

  final _LabCapacityModel _self;
  final $Res Function(_LabCapacityModel) _then;

/// Create a copy of LabCapacityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLoad = null,Object? maxCapacity = null,Object? utilizationPercentage = null,Object? availableAnalyzers = null,Object? totalAnalyzers = null,}) {
  return _then(_LabCapacityModel(
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
mixin _$SampleTrendDataModel {

 String get timestamp; int get inTransit; int get processing;
/// Create a copy of SampleTrendDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleTrendDataModelCopyWith<SampleTrendDataModel> get copyWith => _$SampleTrendDataModelCopyWithImpl<SampleTrendDataModel>(this as SampleTrendDataModel, _$identity);

  /// Serializes this SampleTrendDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleTrendDataModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.inTransit, inTransit) || other.inTransit == inTransit)&&(identical(other.processing, processing) || other.processing == processing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,inTransit,processing);

@override
String toString() {
  return 'SampleTrendDataModel(timestamp: $timestamp, inTransit: $inTransit, processing: $processing)';
}


}

/// @nodoc
abstract mixin class $SampleTrendDataModelCopyWith<$Res>  {
  factory $SampleTrendDataModelCopyWith(SampleTrendDataModel value, $Res Function(SampleTrendDataModel) _then) = _$SampleTrendDataModelCopyWithImpl;
@useResult
$Res call({
 String timestamp, int inTransit, int processing
});




}
/// @nodoc
class _$SampleTrendDataModelCopyWithImpl<$Res>
    implements $SampleTrendDataModelCopyWith<$Res> {
  _$SampleTrendDataModelCopyWithImpl(this._self, this._then);

  final SampleTrendDataModel _self;
  final $Res Function(SampleTrendDataModel) _then;

/// Create a copy of SampleTrendDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? inTransit = null,Object? processing = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,inTransit: null == inTransit ? _self.inTransit : inTransit // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SampleTrendDataModel].
extension SampleTrendDataModelPatterns on SampleTrendDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleTrendDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleTrendDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleTrendDataModel value)  $default,){
final _that = this;
switch (_that) {
case _SampleTrendDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleTrendDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SampleTrendDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timestamp,  int inTransit,  int processing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleTrendDataModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timestamp,  int inTransit,  int processing)  $default,) {final _that = this;
switch (_that) {
case _SampleTrendDataModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timestamp,  int inTransit,  int processing)?  $default,) {final _that = this;
switch (_that) {
case _SampleTrendDataModel() when $default != null:
return $default(_that.timestamp,_that.inTransit,_that.processing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SampleTrendDataModel implements SampleTrendDataModel {
  const _SampleTrendDataModel({required this.timestamp, required this.inTransit, required this.processing});
  factory _SampleTrendDataModel.fromJson(Map<String, dynamic> json) => _$SampleTrendDataModelFromJson(json);

@override final  String timestamp;
@override final  int inTransit;
@override final  int processing;

/// Create a copy of SampleTrendDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleTrendDataModelCopyWith<_SampleTrendDataModel> get copyWith => __$SampleTrendDataModelCopyWithImpl<_SampleTrendDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleTrendDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleTrendDataModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.inTransit, inTransit) || other.inTransit == inTransit)&&(identical(other.processing, processing) || other.processing == processing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,inTransit,processing);

@override
String toString() {
  return 'SampleTrendDataModel(timestamp: $timestamp, inTransit: $inTransit, processing: $processing)';
}


}

/// @nodoc
abstract mixin class _$SampleTrendDataModelCopyWith<$Res> implements $SampleTrendDataModelCopyWith<$Res> {
  factory _$SampleTrendDataModelCopyWith(_SampleTrendDataModel value, $Res Function(_SampleTrendDataModel) _then) = __$SampleTrendDataModelCopyWithImpl;
@override @useResult
$Res call({
 String timestamp, int inTransit, int processing
});




}
/// @nodoc
class __$SampleTrendDataModelCopyWithImpl<$Res>
    implements _$SampleTrendDataModelCopyWith<$Res> {
  __$SampleTrendDataModelCopyWithImpl(this._self, this._then);

  final _SampleTrendDataModel _self;
  final $Res Function(_SampleTrendDataModel) _then;

/// Create a copy of SampleTrendDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? inTransit = null,Object? processing = null,}) {
  return _then(_SampleTrendDataModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,inTransit: null == inTransit ? _self.inTransit : inTransit // ignore: cast_nullable_to_non_nullable
as int,processing: null == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
