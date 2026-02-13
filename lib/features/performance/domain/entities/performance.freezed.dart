// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PhlebotomistPerformance {

 String get userId; PerformanceStats get stats; List<Rating> get ratings; List<Achievement> get achievements; QualityMetrics get quality; DateTime get lastUpdated;
/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhlebotomistPerformanceCopyWith<PhlebotomistPerformance> get copyWith => _$PhlebotomistPerformanceCopyWithImpl<PhlebotomistPerformance>(this as PhlebotomistPerformance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhlebotomistPerformance&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stats, stats) || other.stats == stats)&&const DeepCollectionEquality().equals(other.ratings, ratings)&&const DeepCollectionEquality().equals(other.achievements, achievements)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,userId,stats,const DeepCollectionEquality().hash(ratings),const DeepCollectionEquality().hash(achievements),quality,lastUpdated);

@override
String toString() {
  return 'PhlebotomistPerformance(userId: $userId, stats: $stats, ratings: $ratings, achievements: $achievements, quality: $quality, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $PhlebotomistPerformanceCopyWith<$Res>  {
  factory $PhlebotomistPerformanceCopyWith(PhlebotomistPerformance value, $Res Function(PhlebotomistPerformance) _then) = _$PhlebotomistPerformanceCopyWithImpl;
@useResult
$Res call({
 String userId, PerformanceStats stats, List<Rating> ratings, List<Achievement> achievements, QualityMetrics quality, DateTime lastUpdated
});


$PerformanceStatsCopyWith<$Res> get stats;$QualityMetricsCopyWith<$Res> get quality;

}
/// @nodoc
class _$PhlebotomistPerformanceCopyWithImpl<$Res>
    implements $PhlebotomistPerformanceCopyWith<$Res> {
  _$PhlebotomistPerformanceCopyWithImpl(this._self, this._then);

  final PhlebotomistPerformance _self;
  final $Res Function(PhlebotomistPerformance) _then;

/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? stats = null,Object? ratings = null,Object? achievements = null,Object? quality = null,Object? lastUpdated = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PerformanceStats,ratings: null == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<Rating>,achievements: null == achievements ? _self.achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<Achievement>,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as QualityMetrics,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceStatsCopyWith<$Res> get stats {
  
  return $PerformanceStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QualityMetricsCopyWith<$Res> get quality {
  
  return $QualityMetricsCopyWith<$Res>(_self.quality, (value) {
    return _then(_self.copyWith(quality: value));
  });
}
}


/// Adds pattern-matching-related methods to [PhlebotomistPerformance].
extension PhlebotomistPerformancePatterns on PhlebotomistPerformance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhlebotomistPerformance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhlebotomistPerformance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhlebotomistPerformance value)  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistPerformance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhlebotomistPerformance value)?  $default,){
final _that = this;
switch (_that) {
case _PhlebotomistPerformance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  PerformanceStats stats,  List<Rating> ratings,  List<Achievement> achievements,  QualityMetrics quality,  DateTime lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhlebotomistPerformance() when $default != null:
return $default(_that.userId,_that.stats,_that.ratings,_that.achievements,_that.quality,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  PerformanceStats stats,  List<Rating> ratings,  List<Achievement> achievements,  QualityMetrics quality,  DateTime lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistPerformance():
return $default(_that.userId,_that.stats,_that.ratings,_that.achievements,_that.quality,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  PerformanceStats stats,  List<Rating> ratings,  List<Achievement> achievements,  QualityMetrics quality,  DateTime lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _PhlebotomistPerformance() when $default != null:
return $default(_that.userId,_that.stats,_that.ratings,_that.achievements,_that.quality,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc


class _PhlebotomistPerformance implements PhlebotomistPerformance {
  const _PhlebotomistPerformance({required this.userId, required this.stats, required final  List<Rating> ratings, required final  List<Achievement> achievements, required this.quality, required this.lastUpdated}): _ratings = ratings,_achievements = achievements;
  

@override final  String userId;
@override final  PerformanceStats stats;
 final  List<Rating> _ratings;
@override List<Rating> get ratings {
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ratings);
}

 final  List<Achievement> _achievements;
@override List<Achievement> get achievements {
  if (_achievements is EqualUnmodifiableListView) return _achievements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_achievements);
}

@override final  QualityMetrics quality;
@override final  DateTime lastUpdated;

/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhlebotomistPerformanceCopyWith<_PhlebotomistPerformance> get copyWith => __$PhlebotomistPerformanceCopyWithImpl<_PhlebotomistPerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhlebotomistPerformance&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.stats, stats) || other.stats == stats)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&const DeepCollectionEquality().equals(other._achievements, _achievements)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,userId,stats,const DeepCollectionEquality().hash(_ratings),const DeepCollectionEquality().hash(_achievements),quality,lastUpdated);

@override
String toString() {
  return 'PhlebotomistPerformance(userId: $userId, stats: $stats, ratings: $ratings, achievements: $achievements, quality: $quality, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$PhlebotomistPerformanceCopyWith<$Res> implements $PhlebotomistPerformanceCopyWith<$Res> {
  factory _$PhlebotomistPerformanceCopyWith(_PhlebotomistPerformance value, $Res Function(_PhlebotomistPerformance) _then) = __$PhlebotomistPerformanceCopyWithImpl;
@override @useResult
$Res call({
 String userId, PerformanceStats stats, List<Rating> ratings, List<Achievement> achievements, QualityMetrics quality, DateTime lastUpdated
});


@override $PerformanceStatsCopyWith<$Res> get stats;@override $QualityMetricsCopyWith<$Res> get quality;

}
/// @nodoc
class __$PhlebotomistPerformanceCopyWithImpl<$Res>
    implements _$PhlebotomistPerformanceCopyWith<$Res> {
  __$PhlebotomistPerformanceCopyWithImpl(this._self, this._then);

  final _PhlebotomistPerformance _self;
  final $Res Function(_PhlebotomistPerformance) _then;

/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? stats = null,Object? ratings = null,Object? achievements = null,Object? quality = null,Object? lastUpdated = null,}) {
  return _then(_PhlebotomistPerformance(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as PerformanceStats,ratings: null == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<Rating>,achievements: null == achievements ? _self._achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<Achievement>,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as QualityMetrics,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceStatsCopyWith<$Res> get stats {
  
  return $PerformanceStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of PhlebotomistPerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QualityMetricsCopyWith<$Res> get quality {
  
  return $QualityMetricsCopyWith<$Res>(_self.quality, (value) {
    return _then(_self.copyWith(quality: value));
  });
}
}

/// @nodoc
mixin _$PerformanceStats {

 int get totalCollections; int get successfulCollections; int get rejectedSamples; double get successRate; double get averageIntegrityScore; double get averageRating; int get totalRatings; double get tatComplianceRate; double get coldChainComplianceRate; int get streakDays; int get bonusesEarned;
/// Create a copy of PerformanceStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceStatsCopyWith<PerformanceStats> get copyWith => _$PerformanceStatsCopyWithImpl<PerformanceStats>(this as PerformanceStats, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceStats&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.successfulCollections, successfulCollections) || other.successfulCollections == successfulCollections)&&(identical(other.rejectedSamples, rejectedSamples) || other.rejectedSamples == rejectedSamples)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.totalRatings, totalRatings) || other.totalRatings == totalRatings)&&(identical(other.tatComplianceRate, tatComplianceRate) || other.tatComplianceRate == tatComplianceRate)&&(identical(other.coldChainComplianceRate, coldChainComplianceRate) || other.coldChainComplianceRate == coldChainComplianceRate)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.bonusesEarned, bonusesEarned) || other.bonusesEarned == bonusesEarned));
}


@override
int get hashCode => Object.hash(runtimeType,totalCollections,successfulCollections,rejectedSamples,successRate,averageIntegrityScore,averageRating,totalRatings,tatComplianceRate,coldChainComplianceRate,streakDays,bonusesEarned);

@override
String toString() {
  return 'PerformanceStats(totalCollections: $totalCollections, successfulCollections: $successfulCollections, rejectedSamples: $rejectedSamples, successRate: $successRate, averageIntegrityScore: $averageIntegrityScore, averageRating: $averageRating, totalRatings: $totalRatings, tatComplianceRate: $tatComplianceRate, coldChainComplianceRate: $coldChainComplianceRate, streakDays: $streakDays, bonusesEarned: $bonusesEarned)';
}


}

/// @nodoc
abstract mixin class $PerformanceStatsCopyWith<$Res>  {
  factory $PerformanceStatsCopyWith(PerformanceStats value, $Res Function(PerformanceStats) _then) = _$PerformanceStatsCopyWithImpl;
@useResult
$Res call({
 int totalCollections, int successfulCollections, int rejectedSamples, double successRate, double averageIntegrityScore, double averageRating, int totalRatings, double tatComplianceRate, double coldChainComplianceRate, int streakDays, int bonusesEarned
});




}
/// @nodoc
class _$PerformanceStatsCopyWithImpl<$Res>
    implements $PerformanceStatsCopyWith<$Res> {
  _$PerformanceStatsCopyWithImpl(this._self, this._then);

  final PerformanceStats _self;
  final $Res Function(PerformanceStats) _then;

/// Create a copy of PerformanceStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCollections = null,Object? successfulCollections = null,Object? rejectedSamples = null,Object? successRate = null,Object? averageIntegrityScore = null,Object? averageRating = null,Object? totalRatings = null,Object? tatComplianceRate = null,Object? coldChainComplianceRate = null,Object? streakDays = null,Object? bonusesEarned = null,}) {
  return _then(_self.copyWith(
totalCollections: null == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int,successfulCollections: null == successfulCollections ? _self.successfulCollections : successfulCollections // ignore: cast_nullable_to_non_nullable
as int,rejectedSamples: null == rejectedSamples ? _self.rejectedSamples : rejectedSamples // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,averageIntegrityScore: null == averageIntegrityScore ? _self.averageIntegrityScore : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
as double,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,totalRatings: null == totalRatings ? _self.totalRatings : totalRatings // ignore: cast_nullable_to_non_nullable
as int,tatComplianceRate: null == tatComplianceRate ? _self.tatComplianceRate : tatComplianceRate // ignore: cast_nullable_to_non_nullable
as double,coldChainComplianceRate: null == coldChainComplianceRate ? _self.coldChainComplianceRate : coldChainComplianceRate // ignore: cast_nullable_to_non_nullable
as double,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,bonusesEarned: null == bonusesEarned ? _self.bonusesEarned : bonusesEarned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PerformanceStats].
extension PerformanceStatsPatterns on PerformanceStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerformanceStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerformanceStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerformanceStats value)  $default,){
final _that = this;
switch (_that) {
case _PerformanceStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerformanceStats value)?  $default,){
final _that = this;
switch (_that) {
case _PerformanceStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCollections,  int successfulCollections,  int rejectedSamples,  double successRate,  double averageIntegrityScore,  double averageRating,  int totalRatings,  double tatComplianceRate,  double coldChainComplianceRate,  int streakDays,  int bonusesEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerformanceStats() when $default != null:
return $default(_that.totalCollections,_that.successfulCollections,_that.rejectedSamples,_that.successRate,_that.averageIntegrityScore,_that.averageRating,_that.totalRatings,_that.tatComplianceRate,_that.coldChainComplianceRate,_that.streakDays,_that.bonusesEarned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCollections,  int successfulCollections,  int rejectedSamples,  double successRate,  double averageIntegrityScore,  double averageRating,  int totalRatings,  double tatComplianceRate,  double coldChainComplianceRate,  int streakDays,  int bonusesEarned)  $default,) {final _that = this;
switch (_that) {
case _PerformanceStats():
return $default(_that.totalCollections,_that.successfulCollections,_that.rejectedSamples,_that.successRate,_that.averageIntegrityScore,_that.averageRating,_that.totalRatings,_that.tatComplianceRate,_that.coldChainComplianceRate,_that.streakDays,_that.bonusesEarned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCollections,  int successfulCollections,  int rejectedSamples,  double successRate,  double averageIntegrityScore,  double averageRating,  int totalRatings,  double tatComplianceRate,  double coldChainComplianceRate,  int streakDays,  int bonusesEarned)?  $default,) {final _that = this;
switch (_that) {
case _PerformanceStats() when $default != null:
return $default(_that.totalCollections,_that.successfulCollections,_that.rejectedSamples,_that.successRate,_that.averageIntegrityScore,_that.averageRating,_that.totalRatings,_that.tatComplianceRate,_that.coldChainComplianceRate,_that.streakDays,_that.bonusesEarned);case _:
  return null;

}
}

}

/// @nodoc


class _PerformanceStats implements PerformanceStats {
  const _PerformanceStats({required this.totalCollections, required this.successfulCollections, required this.rejectedSamples, required this.successRate, required this.averageIntegrityScore, required this.averageRating, required this.totalRatings, required this.tatComplianceRate, required this.coldChainComplianceRate, required this.streakDays, required this.bonusesEarned});
  

@override final  int totalCollections;
@override final  int successfulCollections;
@override final  int rejectedSamples;
@override final  double successRate;
@override final  double averageIntegrityScore;
@override final  double averageRating;
@override final  int totalRatings;
@override final  double tatComplianceRate;
@override final  double coldChainComplianceRate;
@override final  int streakDays;
@override final  int bonusesEarned;

/// Create a copy of PerformanceStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceStatsCopyWith<_PerformanceStats> get copyWith => __$PerformanceStatsCopyWithImpl<_PerformanceStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformanceStats&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&(identical(other.successfulCollections, successfulCollections) || other.successfulCollections == successfulCollections)&&(identical(other.rejectedSamples, rejectedSamples) || other.rejectedSamples == rejectedSamples)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.averageIntegrityScore, averageIntegrityScore) || other.averageIntegrityScore == averageIntegrityScore)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.totalRatings, totalRatings) || other.totalRatings == totalRatings)&&(identical(other.tatComplianceRate, tatComplianceRate) || other.tatComplianceRate == tatComplianceRate)&&(identical(other.coldChainComplianceRate, coldChainComplianceRate) || other.coldChainComplianceRate == coldChainComplianceRate)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.bonusesEarned, bonusesEarned) || other.bonusesEarned == bonusesEarned));
}


@override
int get hashCode => Object.hash(runtimeType,totalCollections,successfulCollections,rejectedSamples,successRate,averageIntegrityScore,averageRating,totalRatings,tatComplianceRate,coldChainComplianceRate,streakDays,bonusesEarned);

@override
String toString() {
  return 'PerformanceStats(totalCollections: $totalCollections, successfulCollections: $successfulCollections, rejectedSamples: $rejectedSamples, successRate: $successRate, averageIntegrityScore: $averageIntegrityScore, averageRating: $averageRating, totalRatings: $totalRatings, tatComplianceRate: $tatComplianceRate, coldChainComplianceRate: $coldChainComplianceRate, streakDays: $streakDays, bonusesEarned: $bonusesEarned)';
}


}

/// @nodoc
abstract mixin class _$PerformanceStatsCopyWith<$Res> implements $PerformanceStatsCopyWith<$Res> {
  factory _$PerformanceStatsCopyWith(_PerformanceStats value, $Res Function(_PerformanceStats) _then) = __$PerformanceStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalCollections, int successfulCollections, int rejectedSamples, double successRate, double averageIntegrityScore, double averageRating, int totalRatings, double tatComplianceRate, double coldChainComplianceRate, int streakDays, int bonusesEarned
});




}
/// @nodoc
class __$PerformanceStatsCopyWithImpl<$Res>
    implements _$PerformanceStatsCopyWith<$Res> {
  __$PerformanceStatsCopyWithImpl(this._self, this._then);

  final _PerformanceStats _self;
  final $Res Function(_PerformanceStats) _then;

/// Create a copy of PerformanceStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCollections = null,Object? successfulCollections = null,Object? rejectedSamples = null,Object? successRate = null,Object? averageIntegrityScore = null,Object? averageRating = null,Object? totalRatings = null,Object? tatComplianceRate = null,Object? coldChainComplianceRate = null,Object? streakDays = null,Object? bonusesEarned = null,}) {
  return _then(_PerformanceStats(
totalCollections: null == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as int,successfulCollections: null == successfulCollections ? _self.successfulCollections : successfulCollections // ignore: cast_nullable_to_non_nullable
as int,rejectedSamples: null == rejectedSamples ? _self.rejectedSamples : rejectedSamples // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,averageIntegrityScore: null == averageIntegrityScore ? _self.averageIntegrityScore : averageIntegrityScore // ignore: cast_nullable_to_non_nullable
as double,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,totalRatings: null == totalRatings ? _self.totalRatings : totalRatings // ignore: cast_nullable_to_non_nullable
as int,tatComplianceRate: null == tatComplianceRate ? _self.tatComplianceRate : tatComplianceRate // ignore: cast_nullable_to_non_nullable
as double,coldChainComplianceRate: null == coldChainComplianceRate ? _self.coldChainComplianceRate : coldChainComplianceRate // ignore: cast_nullable_to_non_nullable
as double,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,bonusesEarned: null == bonusesEarned ? _self.bonusesEarned : bonusesEarned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Rating {

 String get id; String get sampleId; int get stars; String? get comment; String get reviewerName; DateTime get timestamp;
/// Create a copy of Rating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingCopyWith<Rating> get copyWith => _$RatingCopyWithImpl<Rating>(this as Rating, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rating&&(identical(other.id, id) || other.id == id)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,id,sampleId,stars,comment,reviewerName,timestamp);

@override
String toString() {
  return 'Rating(id: $id, sampleId: $sampleId, stars: $stars, comment: $comment, reviewerName: $reviewerName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $RatingCopyWith<$Res>  {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) _then) = _$RatingCopyWithImpl;
@useResult
$Res call({
 String id, String sampleId, int stars, String? comment, String reviewerName, DateTime timestamp
});




}
/// @nodoc
class _$RatingCopyWithImpl<$Res>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._self, this._then);

  final Rating _self;
  final $Res Function(Rating) _then;

/// Create a copy of Rating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sampleId = null,Object? stars = null,Object? comment = freezed,Object? reviewerName = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Rating].
extension RatingPatterns on Rating {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rating value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rating() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rating value)  $default,){
final _that = this;
switch (_that) {
case _Rating():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rating value)?  $default,){
final _that = this;
switch (_that) {
case _Rating() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sampleId,  int stars,  String? comment,  String reviewerName,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rating() when $default != null:
return $default(_that.id,_that.sampleId,_that.stars,_that.comment,_that.reviewerName,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sampleId,  int stars,  String? comment,  String reviewerName,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _Rating():
return $default(_that.id,_that.sampleId,_that.stars,_that.comment,_that.reviewerName,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sampleId,  int stars,  String? comment,  String reviewerName,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _Rating() when $default != null:
return $default(_that.id,_that.sampleId,_that.stars,_that.comment,_that.reviewerName,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _Rating implements Rating {
  const _Rating({required this.id, required this.sampleId, required this.stars, this.comment, required this.reviewerName, required this.timestamp});
  

@override final  String id;
@override final  String sampleId;
@override final  int stars;
@override final  String? comment;
@override final  String reviewerName;
@override final  DateTime timestamp;

/// Create a copy of Rating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingCopyWith<_Rating> get copyWith => __$RatingCopyWithImpl<_Rating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rating&&(identical(other.id, id) || other.id == id)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,id,sampleId,stars,comment,reviewerName,timestamp);

@override
String toString() {
  return 'Rating(id: $id, sampleId: $sampleId, stars: $stars, comment: $comment, reviewerName: $reviewerName, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$RatingCopyWith(_Rating value, $Res Function(_Rating) _then) = __$RatingCopyWithImpl;
@override @useResult
$Res call({
 String id, String sampleId, int stars, String? comment, String reviewerName, DateTime timestamp
});




}
/// @nodoc
class __$RatingCopyWithImpl<$Res>
    implements _$RatingCopyWith<$Res> {
  __$RatingCopyWithImpl(this._self, this._then);

  final _Rating _self;
  final $Res Function(_Rating) _then;

/// Create a copy of Rating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sampleId = null,Object? stars = null,Object? comment = freezed,Object? reviewerName = null,Object? timestamp = null,}) {
  return _then(_Rating(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$Achievement {

 String get id; String get title; String get description; String get icon; DateTime get unlockedAt; AchievementTier get tier;
/// Create a copy of Achievement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementCopyWith<Achievement> get copyWith => _$AchievementCopyWithImpl<Achievement>(this as Achievement, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Achievement&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.unlockedAt, unlockedAt) || other.unlockedAt == unlockedAt)&&(identical(other.tier, tier) || other.tier == tier));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,unlockedAt,tier);

@override
String toString() {
  return 'Achievement(id: $id, title: $title, description: $description, icon: $icon, unlockedAt: $unlockedAt, tier: $tier)';
}


}

/// @nodoc
abstract mixin class $AchievementCopyWith<$Res>  {
  factory $AchievementCopyWith(Achievement value, $Res Function(Achievement) _then) = _$AchievementCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, DateTime unlockedAt, AchievementTier tier
});




}
/// @nodoc
class _$AchievementCopyWithImpl<$Res>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._self, this._then);

  final Achievement _self;
  final $Res Function(Achievement) _then;

/// Create a copy of Achievement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? unlockedAt = null,Object? tier = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,unlockedAt: null == unlockedAt ? _self.unlockedAt : unlockedAt // ignore: cast_nullable_to_non_nullable
as DateTime,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as AchievementTier,
  ));
}

}


/// Adds pattern-matching-related methods to [Achievement].
extension AchievementPatterns on Achievement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Achievement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Achievement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Achievement value)  $default,){
final _that = this;
switch (_that) {
case _Achievement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Achievement value)?  $default,){
final _that = this;
switch (_that) {
case _Achievement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  DateTime unlockedAt,  AchievementTier tier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Achievement() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.unlockedAt,_that.tier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  DateTime unlockedAt,  AchievementTier tier)  $default,) {final _that = this;
switch (_that) {
case _Achievement():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.unlockedAt,_that.tier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  DateTime unlockedAt,  AchievementTier tier)?  $default,) {final _that = this;
switch (_that) {
case _Achievement() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.unlockedAt,_that.tier);case _:
  return null;

}
}

}

/// @nodoc


class _Achievement implements Achievement {
  const _Achievement({required this.id, required this.title, required this.description, required this.icon, required this.unlockedAt, required this.tier});
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  DateTime unlockedAt;
@override final  AchievementTier tier;

/// Create a copy of Achievement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementCopyWith<_Achievement> get copyWith => __$AchievementCopyWithImpl<_Achievement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Achievement&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.unlockedAt, unlockedAt) || other.unlockedAt == unlockedAt)&&(identical(other.tier, tier) || other.tier == tier));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,unlockedAt,tier);

@override
String toString() {
  return 'Achievement(id: $id, title: $title, description: $description, icon: $icon, unlockedAt: $unlockedAt, tier: $tier)';
}


}

/// @nodoc
abstract mixin class _$AchievementCopyWith<$Res> implements $AchievementCopyWith<$Res> {
  factory _$AchievementCopyWith(_Achievement value, $Res Function(_Achievement) _then) = __$AchievementCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, DateTime unlockedAt, AchievementTier tier
});




}
/// @nodoc
class __$AchievementCopyWithImpl<$Res>
    implements _$AchievementCopyWith<$Res> {
  __$AchievementCopyWithImpl(this._self, this._then);

  final _Achievement _self;
  final $Res Function(_Achievement) _then;

/// Create a copy of Achievement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? unlockedAt = null,Object? tier = null,}) {
  return _then(_Achievement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,unlockedAt: null == unlockedAt ? _self.unlockedAt : unlockedAt // ignore: cast_nullable_to_non_nullable
as DateTime,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as AchievementTier,
  ));
}


}

/// @nodoc
mixin _$QualityMetrics {

 double get integrityScoreAvg; double get collectionQuality; double get documentationQuality; double get punctualityScore; int get qualityIncidents;
/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QualityMetricsCopyWith<QualityMetrics> get copyWith => _$QualityMetricsCopyWithImpl<QualityMetrics>(this as QualityMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QualityMetrics&&(identical(other.integrityScoreAvg, integrityScoreAvg) || other.integrityScoreAvg == integrityScoreAvg)&&(identical(other.collectionQuality, collectionQuality) || other.collectionQuality == collectionQuality)&&(identical(other.documentationQuality, documentationQuality) || other.documentationQuality == documentationQuality)&&(identical(other.punctualityScore, punctualityScore) || other.punctualityScore == punctualityScore)&&(identical(other.qualityIncidents, qualityIncidents) || other.qualityIncidents == qualityIncidents));
}


@override
int get hashCode => Object.hash(runtimeType,integrityScoreAvg,collectionQuality,documentationQuality,punctualityScore,qualityIncidents);

@override
String toString() {
  return 'QualityMetrics(integrityScoreAvg: $integrityScoreAvg, collectionQuality: $collectionQuality, documentationQuality: $documentationQuality, punctualityScore: $punctualityScore, qualityIncidents: $qualityIncidents)';
}


}

/// @nodoc
abstract mixin class $QualityMetricsCopyWith<$Res>  {
  factory $QualityMetricsCopyWith(QualityMetrics value, $Res Function(QualityMetrics) _then) = _$QualityMetricsCopyWithImpl;
@useResult
$Res call({
 double integrityScoreAvg, double collectionQuality, double documentationQuality, double punctualityScore, int qualityIncidents
});




}
/// @nodoc
class _$QualityMetricsCopyWithImpl<$Res>
    implements $QualityMetricsCopyWith<$Res> {
  _$QualityMetricsCopyWithImpl(this._self, this._then);

  final QualityMetrics _self;
  final $Res Function(QualityMetrics) _then;

/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? integrityScoreAvg = null,Object? collectionQuality = null,Object? documentationQuality = null,Object? punctualityScore = null,Object? qualityIncidents = null,}) {
  return _then(_self.copyWith(
integrityScoreAvg: null == integrityScoreAvg ? _self.integrityScoreAvg : integrityScoreAvg // ignore: cast_nullable_to_non_nullable
as double,collectionQuality: null == collectionQuality ? _self.collectionQuality : collectionQuality // ignore: cast_nullable_to_non_nullable
as double,documentationQuality: null == documentationQuality ? _self.documentationQuality : documentationQuality // ignore: cast_nullable_to_non_nullable
as double,punctualityScore: null == punctualityScore ? _self.punctualityScore : punctualityScore // ignore: cast_nullable_to_non_nullable
as double,qualityIncidents: null == qualityIncidents ? _self.qualityIncidents : qualityIncidents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QualityMetrics].
extension QualityMetricsPatterns on QualityMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QualityMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QualityMetrics value)  $default,){
final _that = this;
switch (_that) {
case _QualityMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QualityMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double integrityScoreAvg,  double collectionQuality,  double documentationQuality,  double punctualityScore,  int qualityIncidents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
return $default(_that.integrityScoreAvg,_that.collectionQuality,_that.documentationQuality,_that.punctualityScore,_that.qualityIncidents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double integrityScoreAvg,  double collectionQuality,  double documentationQuality,  double punctualityScore,  int qualityIncidents)  $default,) {final _that = this;
switch (_that) {
case _QualityMetrics():
return $default(_that.integrityScoreAvg,_that.collectionQuality,_that.documentationQuality,_that.punctualityScore,_that.qualityIncidents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double integrityScoreAvg,  double collectionQuality,  double documentationQuality,  double punctualityScore,  int qualityIncidents)?  $default,) {final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
return $default(_that.integrityScoreAvg,_that.collectionQuality,_that.documentationQuality,_that.punctualityScore,_that.qualityIncidents);case _:
  return null;

}
}

}

/// @nodoc


class _QualityMetrics implements QualityMetrics {
  const _QualityMetrics({required this.integrityScoreAvg, required this.collectionQuality, required this.documentationQuality, required this.punctualityScore, required this.qualityIncidents});
  

@override final  double integrityScoreAvg;
@override final  double collectionQuality;
@override final  double documentationQuality;
@override final  double punctualityScore;
@override final  int qualityIncidents;

/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QualityMetricsCopyWith<_QualityMetrics> get copyWith => __$QualityMetricsCopyWithImpl<_QualityMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QualityMetrics&&(identical(other.integrityScoreAvg, integrityScoreAvg) || other.integrityScoreAvg == integrityScoreAvg)&&(identical(other.collectionQuality, collectionQuality) || other.collectionQuality == collectionQuality)&&(identical(other.documentationQuality, documentationQuality) || other.documentationQuality == documentationQuality)&&(identical(other.punctualityScore, punctualityScore) || other.punctualityScore == punctualityScore)&&(identical(other.qualityIncidents, qualityIncidents) || other.qualityIncidents == qualityIncidents));
}


@override
int get hashCode => Object.hash(runtimeType,integrityScoreAvg,collectionQuality,documentationQuality,punctualityScore,qualityIncidents);

@override
String toString() {
  return 'QualityMetrics(integrityScoreAvg: $integrityScoreAvg, collectionQuality: $collectionQuality, documentationQuality: $documentationQuality, punctualityScore: $punctualityScore, qualityIncidents: $qualityIncidents)';
}


}

/// @nodoc
abstract mixin class _$QualityMetricsCopyWith<$Res> implements $QualityMetricsCopyWith<$Res> {
  factory _$QualityMetricsCopyWith(_QualityMetrics value, $Res Function(_QualityMetrics) _then) = __$QualityMetricsCopyWithImpl;
@override @useResult
$Res call({
 double integrityScoreAvg, double collectionQuality, double documentationQuality, double punctualityScore, int qualityIncidents
});




}
/// @nodoc
class __$QualityMetricsCopyWithImpl<$Res>
    implements _$QualityMetricsCopyWith<$Res> {
  __$QualityMetricsCopyWithImpl(this._self, this._then);

  final _QualityMetrics _self;
  final $Res Function(_QualityMetrics) _then;

/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? integrityScoreAvg = null,Object? collectionQuality = null,Object? documentationQuality = null,Object? punctualityScore = null,Object? qualityIncidents = null,}) {
  return _then(_QualityMetrics(
integrityScoreAvg: null == integrityScoreAvg ? _self.integrityScoreAvg : integrityScoreAvg // ignore: cast_nullable_to_non_nullable
as double,collectionQuality: null == collectionQuality ? _self.collectionQuality : collectionQuality // ignore: cast_nullable_to_non_nullable
as double,documentationQuality: null == documentationQuality ? _self.documentationQuality : documentationQuality // ignore: cast_nullable_to_non_nullable
as double,punctualityScore: null == punctualityScore ? _self.punctualityScore : punctualityScore // ignore: cast_nullable_to_non_nullable
as double,qualityIncidents: null == qualityIncidents ? _self.qualityIncidents : qualityIncidents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
