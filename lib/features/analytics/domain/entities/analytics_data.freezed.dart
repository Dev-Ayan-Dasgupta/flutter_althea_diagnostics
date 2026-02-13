// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnalyticsData {

 AnalyticsSummary get summary; List<TrendData> get trends; List<CategoryData> get byCategory; PerformanceMetrics get performance; QualityMetrics get quality; String get generatedAt;
/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsDataCopyWith<AnalyticsData> get copyWith => _$AnalyticsDataCopyWithImpl<AnalyticsData>(this as AnalyticsData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsData&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.trends, trends)&&const DeepCollectionEquality().equals(other.byCategory, byCategory)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(trends),const DeepCollectionEquality().hash(byCategory),performance,quality,generatedAt);

@override
String toString() {
  return 'AnalyticsData(summary: $summary, trends: $trends, byCategory: $byCategory, performance: $performance, quality: $quality, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class $AnalyticsDataCopyWith<$Res>  {
  factory $AnalyticsDataCopyWith(AnalyticsData value, $Res Function(AnalyticsData) _then) = _$AnalyticsDataCopyWithImpl;
@useResult
$Res call({
 AnalyticsSummary summary, List<TrendData> trends, List<CategoryData> byCategory, PerformanceMetrics performance, QualityMetrics quality, String generatedAt
});


$AnalyticsSummaryCopyWith<$Res> get summary;$PerformanceMetricsCopyWith<$Res> get performance;$QualityMetricsCopyWith<$Res> get quality;

}
/// @nodoc
class _$AnalyticsDataCopyWithImpl<$Res>
    implements $AnalyticsDataCopyWith<$Res> {
  _$AnalyticsDataCopyWithImpl(this._self, this._then);

  final AnalyticsData _self;
  final $Res Function(AnalyticsData) _then;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,Object? trends = null,Object? byCategory = null,Object? performance = null,Object? quality = null,Object? generatedAt = null,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as AnalyticsSummary,trends: null == trends ? _self.trends : trends // ignore: cast_nullable_to_non_nullable
as List<TrendData>,byCategory: null == byCategory ? _self.byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as List<CategoryData>,performance: null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as PerformanceMetrics,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as QualityMetrics,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsSummaryCopyWith<$Res> get summary {
  
  return $AnalyticsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceMetricsCopyWith<$Res> get performance {
  
  return $PerformanceMetricsCopyWith<$Res>(_self.performance, (value) {
    return _then(_self.copyWith(performance: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QualityMetricsCopyWith<$Res> get quality {
  
  return $QualityMetricsCopyWith<$Res>(_self.quality, (value) {
    return _then(_self.copyWith(quality: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyticsData].
extension AnalyticsDataPatterns on AnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AnalyticsSummary summary,  List<TrendData> trends,  List<CategoryData> byCategory,  PerformanceMetrics performance,  QualityMetrics quality,  String generatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
return $default(_that.summary,_that.trends,_that.byCategory,_that.performance,_that.quality,_that.generatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AnalyticsSummary summary,  List<TrendData> trends,  List<CategoryData> byCategory,  PerformanceMetrics performance,  QualityMetrics quality,  String generatedAt)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsData():
return $default(_that.summary,_that.trends,_that.byCategory,_that.performance,_that.quality,_that.generatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AnalyticsSummary summary,  List<TrendData> trends,  List<CategoryData> byCategory,  PerformanceMetrics performance,  QualityMetrics quality,  String generatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
return $default(_that.summary,_that.trends,_that.byCategory,_that.performance,_that.quality,_that.generatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsData implements AnalyticsData {
  const _AnalyticsData({required this.summary, required final  List<TrendData> trends, required final  List<CategoryData> byCategory, required this.performance, required this.quality, required this.generatedAt}): _trends = trends,_byCategory = byCategory;
  

@override final  AnalyticsSummary summary;
 final  List<TrendData> _trends;
@override List<TrendData> get trends {
  if (_trends is EqualUnmodifiableListView) return _trends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trends);
}

 final  List<CategoryData> _byCategory;
@override List<CategoryData> get byCategory {
  if (_byCategory is EqualUnmodifiableListView) return _byCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byCategory);
}

@override final  PerformanceMetrics performance;
@override final  QualityMetrics quality;
@override final  String generatedAt;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsDataCopyWith<_AnalyticsData> get copyWith => __$AnalyticsDataCopyWithImpl<_AnalyticsData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsData&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._trends, _trends)&&const DeepCollectionEquality().equals(other._byCategory, _byCategory)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(_trends),const DeepCollectionEquality().hash(_byCategory),performance,quality,generatedAt);

@override
String toString() {
  return 'AnalyticsData(summary: $summary, trends: $trends, byCategory: $byCategory, performance: $performance, quality: $quality, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsDataCopyWith<$Res> implements $AnalyticsDataCopyWith<$Res> {
  factory _$AnalyticsDataCopyWith(_AnalyticsData value, $Res Function(_AnalyticsData) _then) = __$AnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 AnalyticsSummary summary, List<TrendData> trends, List<CategoryData> byCategory, PerformanceMetrics performance, QualityMetrics quality, String generatedAt
});


@override $AnalyticsSummaryCopyWith<$Res> get summary;@override $PerformanceMetricsCopyWith<$Res> get performance;@override $QualityMetricsCopyWith<$Res> get quality;

}
/// @nodoc
class __$AnalyticsDataCopyWithImpl<$Res>
    implements _$AnalyticsDataCopyWith<$Res> {
  __$AnalyticsDataCopyWithImpl(this._self, this._then);

  final _AnalyticsData _self;
  final $Res Function(_AnalyticsData) _then;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,Object? trends = null,Object? byCategory = null,Object? performance = null,Object? quality = null,Object? generatedAt = null,}) {
  return _then(_AnalyticsData(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as AnalyticsSummary,trends: null == trends ? _self._trends : trends // ignore: cast_nullable_to_non_nullable
as List<TrendData>,byCategory: null == byCategory ? _self._byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as List<CategoryData>,performance: null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as PerformanceMetrics,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as QualityMetrics,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsSummaryCopyWith<$Res> get summary {
  
  return $AnalyticsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceMetricsCopyWith<$Res> get performance {
  
  return $PerformanceMetricsCopyWith<$Res>(_self.performance, (value) {
    return _then(_self.copyWith(performance: value));
  });
}/// Create a copy of AnalyticsData
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
mixin _$AnalyticsSummary {

 int get totalSamples; int get completedSamples; int get rejectedSamples; int get inTransitSamples; double get completionRate; double get rejectionRate; double get averageTAT; int get tatBreaches;
/// Create a copy of AnalyticsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsSummaryCopyWith<AnalyticsSummary> get copyWith => _$AnalyticsSummaryCopyWithImpl<AnalyticsSummary>(this as AnalyticsSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsSummary&&(identical(other.totalSamples, totalSamples) || other.totalSamples == totalSamples)&&(identical(other.completedSamples, completedSamples) || other.completedSamples == completedSamples)&&(identical(other.rejectedSamples, rejectedSamples) || other.rejectedSamples == rejectedSamples)&&(identical(other.inTransitSamples, inTransitSamples) || other.inTransitSamples == inTransitSamples)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.rejectionRate, rejectionRate) || other.rejectionRate == rejectionRate)&&(identical(other.averageTAT, averageTAT) || other.averageTAT == averageTAT)&&(identical(other.tatBreaches, tatBreaches) || other.tatBreaches == tatBreaches));
}


@override
int get hashCode => Object.hash(runtimeType,totalSamples,completedSamples,rejectedSamples,inTransitSamples,completionRate,rejectionRate,averageTAT,tatBreaches);

@override
String toString() {
  return 'AnalyticsSummary(totalSamples: $totalSamples, completedSamples: $completedSamples, rejectedSamples: $rejectedSamples, inTransitSamples: $inTransitSamples, completionRate: $completionRate, rejectionRate: $rejectionRate, averageTAT: $averageTAT, tatBreaches: $tatBreaches)';
}


}

/// @nodoc
abstract mixin class $AnalyticsSummaryCopyWith<$Res>  {
  factory $AnalyticsSummaryCopyWith(AnalyticsSummary value, $Res Function(AnalyticsSummary) _then) = _$AnalyticsSummaryCopyWithImpl;
@useResult
$Res call({
 int totalSamples, int completedSamples, int rejectedSamples, int inTransitSamples, double completionRate, double rejectionRate, double averageTAT, int tatBreaches
});




}
/// @nodoc
class _$AnalyticsSummaryCopyWithImpl<$Res>
    implements $AnalyticsSummaryCopyWith<$Res> {
  _$AnalyticsSummaryCopyWithImpl(this._self, this._then);

  final AnalyticsSummary _self;
  final $Res Function(AnalyticsSummary) _then;

/// Create a copy of AnalyticsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSamples = null,Object? completedSamples = null,Object? rejectedSamples = null,Object? inTransitSamples = null,Object? completionRate = null,Object? rejectionRate = null,Object? averageTAT = null,Object? tatBreaches = null,}) {
  return _then(_self.copyWith(
totalSamples: null == totalSamples ? _self.totalSamples : totalSamples // ignore: cast_nullable_to_non_nullable
as int,completedSamples: null == completedSamples ? _self.completedSamples : completedSamples // ignore: cast_nullable_to_non_nullable
as int,rejectedSamples: null == rejectedSamples ? _self.rejectedSamples : rejectedSamples // ignore: cast_nullable_to_non_nullable
as int,inTransitSamples: null == inTransitSamples ? _self.inTransitSamples : inTransitSamples // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,rejectionRate: null == rejectionRate ? _self.rejectionRate : rejectionRate // ignore: cast_nullable_to_non_nullable
as double,averageTAT: null == averageTAT ? _self.averageTAT : averageTAT // ignore: cast_nullable_to_non_nullable
as double,tatBreaches: null == tatBreaches ? _self.tatBreaches : tatBreaches // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsSummary].
extension AnalyticsSummaryPatterns on AnalyticsSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsSummary value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSamples,  int completedSamples,  int rejectedSamples,  int inTransitSamples,  double completionRate,  double rejectionRate,  double averageTAT,  int tatBreaches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsSummary() when $default != null:
return $default(_that.totalSamples,_that.completedSamples,_that.rejectedSamples,_that.inTransitSamples,_that.completionRate,_that.rejectionRate,_that.averageTAT,_that.tatBreaches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSamples,  int completedSamples,  int rejectedSamples,  int inTransitSamples,  double completionRate,  double rejectionRate,  double averageTAT,  int tatBreaches)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsSummary():
return $default(_that.totalSamples,_that.completedSamples,_that.rejectedSamples,_that.inTransitSamples,_that.completionRate,_that.rejectionRate,_that.averageTAT,_that.tatBreaches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSamples,  int completedSamples,  int rejectedSamples,  int inTransitSamples,  double completionRate,  double rejectionRate,  double averageTAT,  int tatBreaches)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsSummary() when $default != null:
return $default(_that.totalSamples,_that.completedSamples,_that.rejectedSamples,_that.inTransitSamples,_that.completionRate,_that.rejectionRate,_that.averageTAT,_that.tatBreaches);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsSummary implements AnalyticsSummary {
  const _AnalyticsSummary({required this.totalSamples, required this.completedSamples, required this.rejectedSamples, required this.inTransitSamples, required this.completionRate, required this.rejectionRate, required this.averageTAT, required this.tatBreaches});
  

@override final  int totalSamples;
@override final  int completedSamples;
@override final  int rejectedSamples;
@override final  int inTransitSamples;
@override final  double completionRate;
@override final  double rejectionRate;
@override final  double averageTAT;
@override final  int tatBreaches;

/// Create a copy of AnalyticsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsSummaryCopyWith<_AnalyticsSummary> get copyWith => __$AnalyticsSummaryCopyWithImpl<_AnalyticsSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsSummary&&(identical(other.totalSamples, totalSamples) || other.totalSamples == totalSamples)&&(identical(other.completedSamples, completedSamples) || other.completedSamples == completedSamples)&&(identical(other.rejectedSamples, rejectedSamples) || other.rejectedSamples == rejectedSamples)&&(identical(other.inTransitSamples, inTransitSamples) || other.inTransitSamples == inTransitSamples)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.rejectionRate, rejectionRate) || other.rejectionRate == rejectionRate)&&(identical(other.averageTAT, averageTAT) || other.averageTAT == averageTAT)&&(identical(other.tatBreaches, tatBreaches) || other.tatBreaches == tatBreaches));
}


@override
int get hashCode => Object.hash(runtimeType,totalSamples,completedSamples,rejectedSamples,inTransitSamples,completionRate,rejectionRate,averageTAT,tatBreaches);

@override
String toString() {
  return 'AnalyticsSummary(totalSamples: $totalSamples, completedSamples: $completedSamples, rejectedSamples: $rejectedSamples, inTransitSamples: $inTransitSamples, completionRate: $completionRate, rejectionRate: $rejectionRate, averageTAT: $averageTAT, tatBreaches: $tatBreaches)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsSummaryCopyWith<$Res> implements $AnalyticsSummaryCopyWith<$Res> {
  factory _$AnalyticsSummaryCopyWith(_AnalyticsSummary value, $Res Function(_AnalyticsSummary) _then) = __$AnalyticsSummaryCopyWithImpl;
@override @useResult
$Res call({
 int totalSamples, int completedSamples, int rejectedSamples, int inTransitSamples, double completionRate, double rejectionRate, double averageTAT, int tatBreaches
});




}
/// @nodoc
class __$AnalyticsSummaryCopyWithImpl<$Res>
    implements _$AnalyticsSummaryCopyWith<$Res> {
  __$AnalyticsSummaryCopyWithImpl(this._self, this._then);

  final _AnalyticsSummary _self;
  final $Res Function(_AnalyticsSummary) _then;

/// Create a copy of AnalyticsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSamples = null,Object? completedSamples = null,Object? rejectedSamples = null,Object? inTransitSamples = null,Object? completionRate = null,Object? rejectionRate = null,Object? averageTAT = null,Object? tatBreaches = null,}) {
  return _then(_AnalyticsSummary(
totalSamples: null == totalSamples ? _self.totalSamples : totalSamples // ignore: cast_nullable_to_non_nullable
as int,completedSamples: null == completedSamples ? _self.completedSamples : completedSamples // ignore: cast_nullable_to_non_nullable
as int,rejectedSamples: null == rejectedSamples ? _self.rejectedSamples : rejectedSamples // ignore: cast_nullable_to_non_nullable
as int,inTransitSamples: null == inTransitSamples ? _self.inTransitSamples : inTransitSamples // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,rejectionRate: null == rejectionRate ? _self.rejectionRate : rejectionRate // ignore: cast_nullable_to_non_nullable
as double,averageTAT: null == averageTAT ? _self.averageTAT : averageTAT // ignore: cast_nullable_to_non_nullable
as double,tatBreaches: null == tatBreaches ? _self.tatBreaches : tatBreaches // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TrendData {

 DateTime get date; int get samples; int get completed; int get rejected; double get avgTat;
/// Create a copy of TrendData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendDataCopyWith<TrendData> get copyWith => _$TrendDataCopyWithImpl<TrendData>(this as TrendData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendData&&(identical(other.date, date) || other.date == date)&&(identical(other.samples, samples) || other.samples == samples)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.rejected, rejected) || other.rejected == rejected)&&(identical(other.avgTat, avgTat) || other.avgTat == avgTat));
}


@override
int get hashCode => Object.hash(runtimeType,date,samples,completed,rejected,avgTat);

@override
String toString() {
  return 'TrendData(date: $date, samples: $samples, completed: $completed, rejected: $rejected, avgTat: $avgTat)';
}


}

/// @nodoc
abstract mixin class $TrendDataCopyWith<$Res>  {
  factory $TrendDataCopyWith(TrendData value, $Res Function(TrendData) _then) = _$TrendDataCopyWithImpl;
@useResult
$Res call({
 DateTime date, int samples, int completed, int rejected, double avgTat
});




}
/// @nodoc
class _$TrendDataCopyWithImpl<$Res>
    implements $TrendDataCopyWith<$Res> {
  _$TrendDataCopyWithImpl(this._self, this._then);

  final TrendData _self;
  final $Res Function(TrendData) _then;

/// Create a copy of TrendData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? samples = null,Object? completed = null,Object? rejected = null,Object? avgTat = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,samples: null == samples ? _self.samples : samples // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,avgTat: null == avgTat ? _self.avgTat : avgTat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendData].
extension TrendDataPatterns on TrendData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendData value)  $default,){
final _that = this;
switch (_that) {
case _TrendData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendData value)?  $default,){
final _that = this;
switch (_that) {
case _TrendData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int samples,  int completed,  int rejected,  double avgTat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendData() when $default != null:
return $default(_that.date,_that.samples,_that.completed,_that.rejected,_that.avgTat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int samples,  int completed,  int rejected,  double avgTat)  $default,) {final _that = this;
switch (_that) {
case _TrendData():
return $default(_that.date,_that.samples,_that.completed,_that.rejected,_that.avgTat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int samples,  int completed,  int rejected,  double avgTat)?  $default,) {final _that = this;
switch (_that) {
case _TrendData() when $default != null:
return $default(_that.date,_that.samples,_that.completed,_that.rejected,_that.avgTat);case _:
  return null;

}
}

}

/// @nodoc


class _TrendData implements TrendData {
  const _TrendData({required this.date, required this.samples, required this.completed, required this.rejected, required this.avgTat});
  

@override final  DateTime date;
@override final  int samples;
@override final  int completed;
@override final  int rejected;
@override final  double avgTat;

/// Create a copy of TrendData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendDataCopyWith<_TrendData> get copyWith => __$TrendDataCopyWithImpl<_TrendData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendData&&(identical(other.date, date) || other.date == date)&&(identical(other.samples, samples) || other.samples == samples)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.rejected, rejected) || other.rejected == rejected)&&(identical(other.avgTat, avgTat) || other.avgTat == avgTat));
}


@override
int get hashCode => Object.hash(runtimeType,date,samples,completed,rejected,avgTat);

@override
String toString() {
  return 'TrendData(date: $date, samples: $samples, completed: $completed, rejected: $rejected, avgTat: $avgTat)';
}


}

/// @nodoc
abstract mixin class _$TrendDataCopyWith<$Res> implements $TrendDataCopyWith<$Res> {
  factory _$TrendDataCopyWith(_TrendData value, $Res Function(_TrendData) _then) = __$TrendDataCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int samples, int completed, int rejected, double avgTat
});




}
/// @nodoc
class __$TrendDataCopyWithImpl<$Res>
    implements _$TrendDataCopyWith<$Res> {
  __$TrendDataCopyWithImpl(this._self, this._then);

  final _TrendData _self;
  final $Res Function(_TrendData) _then;

/// Create a copy of TrendData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? samples = null,Object? completed = null,Object? rejected = null,Object? avgTat = null,}) {
  return _then(_TrendData(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,samples: null == samples ? _self.samples : samples // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,rejected: null == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int,avgTat: null == avgTat ? _self.avgTat : avgTat // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$CategoryData {

 String get category; int get count; double get percentage; String get color;
/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<CategoryData> get copyWith => _$CategoryDataCopyWithImpl<CategoryData>(this as CategoryData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryData&&(identical(other.category, category) || other.category == category)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,category,count,percentage,color);

@override
String toString() {
  return 'CategoryData(category: $category, count: $count, percentage: $percentage, color: $color)';
}


}

/// @nodoc
abstract mixin class $CategoryDataCopyWith<$Res>  {
  factory $CategoryDataCopyWith(CategoryData value, $Res Function(CategoryData) _then) = _$CategoryDataCopyWithImpl;
@useResult
$Res call({
 String category, int count, double percentage, String color
});




}
/// @nodoc
class _$CategoryDataCopyWithImpl<$Res>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._self, this._then);

  final CategoryData _self;
  final $Res Function(CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? count = null,Object? percentage = null,Object? color = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryData].
extension CategoryDataPatterns on CategoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  int count,  double percentage,  String color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that.category,_that.count,_that.percentage,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  int count,  double percentage,  String color)  $default,) {final _that = this;
switch (_that) {
case _CategoryData():
return $default(_that.category,_that.count,_that.percentage,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  int count,  double percentage,  String color)?  $default,) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that.category,_that.count,_that.percentage,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryData implements CategoryData {
  const _CategoryData({required this.category, required this.count, required this.percentage, required this.color});
  

@override final  String category;
@override final  int count;
@override final  double percentage;
@override final  String color;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDataCopyWith<_CategoryData> get copyWith => __$CategoryDataCopyWithImpl<_CategoryData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryData&&(identical(other.category, category) || other.category == category)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,category,count,percentage,color);

@override
String toString() {
  return 'CategoryData(category: $category, count: $count, percentage: $percentage, color: $color)';
}


}

/// @nodoc
abstract mixin class _$CategoryDataCopyWith<$Res> implements $CategoryDataCopyWith<$Res> {
  factory _$CategoryDataCopyWith(_CategoryData value, $Res Function(_CategoryData) _then) = __$CategoryDataCopyWithImpl;
@override @useResult
$Res call({
 String category, int count, double percentage, String color
});




}
/// @nodoc
class __$CategoryDataCopyWithImpl<$Res>
    implements _$CategoryDataCopyWith<$Res> {
  __$CategoryDataCopyWithImpl(this._self, this._then);

  final _CategoryData _self;
  final $Res Function(_CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? count = null,Object? percentage = null,Object? color = null,}) {
  return _then(_CategoryData(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PerformanceMetrics {

 double get tatCompliance; double get coldChainCompliance; double get integrityScoreAvg; int get totalBreaches; int get criticalAlerts;
/// Create a copy of PerformanceMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceMetricsCopyWith<PerformanceMetrics> get copyWith => _$PerformanceMetricsCopyWithImpl<PerformanceMetrics>(this as PerformanceMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceMetrics&&(identical(other.tatCompliance, tatCompliance) || other.tatCompliance == tatCompliance)&&(identical(other.coldChainCompliance, coldChainCompliance) || other.coldChainCompliance == coldChainCompliance)&&(identical(other.integrityScoreAvg, integrityScoreAvg) || other.integrityScoreAvg == integrityScoreAvg)&&(identical(other.totalBreaches, totalBreaches) || other.totalBreaches == totalBreaches)&&(identical(other.criticalAlerts, criticalAlerts) || other.criticalAlerts == criticalAlerts));
}


@override
int get hashCode => Object.hash(runtimeType,tatCompliance,coldChainCompliance,integrityScoreAvg,totalBreaches,criticalAlerts);

@override
String toString() {
  return 'PerformanceMetrics(tatCompliance: $tatCompliance, coldChainCompliance: $coldChainCompliance, integrityScoreAvg: $integrityScoreAvg, totalBreaches: $totalBreaches, criticalAlerts: $criticalAlerts)';
}


}

/// @nodoc
abstract mixin class $PerformanceMetricsCopyWith<$Res>  {
  factory $PerformanceMetricsCopyWith(PerformanceMetrics value, $Res Function(PerformanceMetrics) _then) = _$PerformanceMetricsCopyWithImpl;
@useResult
$Res call({
 double tatCompliance, double coldChainCompliance, double integrityScoreAvg, int totalBreaches, int criticalAlerts
});




}
/// @nodoc
class _$PerformanceMetricsCopyWithImpl<$Res>
    implements $PerformanceMetricsCopyWith<$Res> {
  _$PerformanceMetricsCopyWithImpl(this._self, this._then);

  final PerformanceMetrics _self;
  final $Res Function(PerformanceMetrics) _then;

/// Create a copy of PerformanceMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tatCompliance = null,Object? coldChainCompliance = null,Object? integrityScoreAvg = null,Object? totalBreaches = null,Object? criticalAlerts = null,}) {
  return _then(_self.copyWith(
tatCompliance: null == tatCompliance ? _self.tatCompliance : tatCompliance // ignore: cast_nullable_to_non_nullable
as double,coldChainCompliance: null == coldChainCompliance ? _self.coldChainCompliance : coldChainCompliance // ignore: cast_nullable_to_non_nullable
as double,integrityScoreAvg: null == integrityScoreAvg ? _self.integrityScoreAvg : integrityScoreAvg // ignore: cast_nullable_to_non_nullable
as double,totalBreaches: null == totalBreaches ? _self.totalBreaches : totalBreaches // ignore: cast_nullable_to_non_nullable
as int,criticalAlerts: null == criticalAlerts ? _self.criticalAlerts : criticalAlerts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PerformanceMetrics].
extension PerformanceMetricsPatterns on PerformanceMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerformanceMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerformanceMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerformanceMetrics value)  $default,){
final _that = this;
switch (_that) {
case _PerformanceMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerformanceMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _PerformanceMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double tatCompliance,  double coldChainCompliance,  double integrityScoreAvg,  int totalBreaches,  int criticalAlerts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerformanceMetrics() when $default != null:
return $default(_that.tatCompliance,_that.coldChainCompliance,_that.integrityScoreAvg,_that.totalBreaches,_that.criticalAlerts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double tatCompliance,  double coldChainCompliance,  double integrityScoreAvg,  int totalBreaches,  int criticalAlerts)  $default,) {final _that = this;
switch (_that) {
case _PerformanceMetrics():
return $default(_that.tatCompliance,_that.coldChainCompliance,_that.integrityScoreAvg,_that.totalBreaches,_that.criticalAlerts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double tatCompliance,  double coldChainCompliance,  double integrityScoreAvg,  int totalBreaches,  int criticalAlerts)?  $default,) {final _that = this;
switch (_that) {
case _PerformanceMetrics() when $default != null:
return $default(_that.tatCompliance,_that.coldChainCompliance,_that.integrityScoreAvg,_that.totalBreaches,_that.criticalAlerts);case _:
  return null;

}
}

}

/// @nodoc


class _PerformanceMetrics implements PerformanceMetrics {
  const _PerformanceMetrics({required this.tatCompliance, required this.coldChainCompliance, required this.integrityScoreAvg, required this.totalBreaches, required this.criticalAlerts});
  

@override final  double tatCompliance;
@override final  double coldChainCompliance;
@override final  double integrityScoreAvg;
@override final  int totalBreaches;
@override final  int criticalAlerts;

/// Create a copy of PerformanceMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceMetricsCopyWith<_PerformanceMetrics> get copyWith => __$PerformanceMetricsCopyWithImpl<_PerformanceMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformanceMetrics&&(identical(other.tatCompliance, tatCompliance) || other.tatCompliance == tatCompliance)&&(identical(other.coldChainCompliance, coldChainCompliance) || other.coldChainCompliance == coldChainCompliance)&&(identical(other.integrityScoreAvg, integrityScoreAvg) || other.integrityScoreAvg == integrityScoreAvg)&&(identical(other.totalBreaches, totalBreaches) || other.totalBreaches == totalBreaches)&&(identical(other.criticalAlerts, criticalAlerts) || other.criticalAlerts == criticalAlerts));
}


@override
int get hashCode => Object.hash(runtimeType,tatCompliance,coldChainCompliance,integrityScoreAvg,totalBreaches,criticalAlerts);

@override
String toString() {
  return 'PerformanceMetrics(tatCompliance: $tatCompliance, coldChainCompliance: $coldChainCompliance, integrityScoreAvg: $integrityScoreAvg, totalBreaches: $totalBreaches, criticalAlerts: $criticalAlerts)';
}


}

/// @nodoc
abstract mixin class _$PerformanceMetricsCopyWith<$Res> implements $PerformanceMetricsCopyWith<$Res> {
  factory _$PerformanceMetricsCopyWith(_PerformanceMetrics value, $Res Function(_PerformanceMetrics) _then) = __$PerformanceMetricsCopyWithImpl;
@override @useResult
$Res call({
 double tatCompliance, double coldChainCompliance, double integrityScoreAvg, int totalBreaches, int criticalAlerts
});




}
/// @nodoc
class __$PerformanceMetricsCopyWithImpl<$Res>
    implements _$PerformanceMetricsCopyWith<$Res> {
  __$PerformanceMetricsCopyWithImpl(this._self, this._then);

  final _PerformanceMetrics _self;
  final $Res Function(_PerformanceMetrics) _then;

/// Create a copy of PerformanceMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tatCompliance = null,Object? coldChainCompliance = null,Object? integrityScoreAvg = null,Object? totalBreaches = null,Object? criticalAlerts = null,}) {
  return _then(_PerformanceMetrics(
tatCompliance: null == tatCompliance ? _self.tatCompliance : tatCompliance // ignore: cast_nullable_to_non_nullable
as double,coldChainCompliance: null == coldChainCompliance ? _self.coldChainCompliance : coldChainCompliance // ignore: cast_nullable_to_non_nullable
as double,integrityScoreAvg: null == integrityScoreAvg ? _self.integrityScoreAvg : integrityScoreAvg // ignore: cast_nullable_to_non_nullable
as double,totalBreaches: null == totalBreaches ? _self.totalBreaches : totalBreaches // ignore: cast_nullable_to_non_nullable
as int,criticalAlerts: null == criticalAlerts ? _self.criticalAlerts : criticalAlerts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$QualityMetrics {

 double get preAnalyticalQuality; double get collectionQuality; double get transportQuality; int get qualityIncidents;
/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QualityMetricsCopyWith<QualityMetrics> get copyWith => _$QualityMetricsCopyWithImpl<QualityMetrics>(this as QualityMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QualityMetrics&&(identical(other.preAnalyticalQuality, preAnalyticalQuality) || other.preAnalyticalQuality == preAnalyticalQuality)&&(identical(other.collectionQuality, collectionQuality) || other.collectionQuality == collectionQuality)&&(identical(other.transportQuality, transportQuality) || other.transportQuality == transportQuality)&&(identical(other.qualityIncidents, qualityIncidents) || other.qualityIncidents == qualityIncidents));
}


@override
int get hashCode => Object.hash(runtimeType,preAnalyticalQuality,collectionQuality,transportQuality,qualityIncidents);

@override
String toString() {
  return 'QualityMetrics(preAnalyticalQuality: $preAnalyticalQuality, collectionQuality: $collectionQuality, transportQuality: $transportQuality, qualityIncidents: $qualityIncidents)';
}


}

/// @nodoc
abstract mixin class $QualityMetricsCopyWith<$Res>  {
  factory $QualityMetricsCopyWith(QualityMetrics value, $Res Function(QualityMetrics) _then) = _$QualityMetricsCopyWithImpl;
@useResult
$Res call({
 double preAnalyticalQuality, double collectionQuality, double transportQuality, int qualityIncidents
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
@pragma('vm:prefer-inline') @override $Res call({Object? preAnalyticalQuality = null,Object? collectionQuality = null,Object? transportQuality = null,Object? qualityIncidents = null,}) {
  return _then(_self.copyWith(
preAnalyticalQuality: null == preAnalyticalQuality ? _self.preAnalyticalQuality : preAnalyticalQuality // ignore: cast_nullable_to_non_nullable
as double,collectionQuality: null == collectionQuality ? _self.collectionQuality : collectionQuality // ignore: cast_nullable_to_non_nullable
as double,transportQuality: null == transportQuality ? _self.transportQuality : transportQuality // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double preAnalyticalQuality,  double collectionQuality,  double transportQuality,  int qualityIncidents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
return $default(_that.preAnalyticalQuality,_that.collectionQuality,_that.transportQuality,_that.qualityIncidents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double preAnalyticalQuality,  double collectionQuality,  double transportQuality,  int qualityIncidents)  $default,) {final _that = this;
switch (_that) {
case _QualityMetrics():
return $default(_that.preAnalyticalQuality,_that.collectionQuality,_that.transportQuality,_that.qualityIncidents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double preAnalyticalQuality,  double collectionQuality,  double transportQuality,  int qualityIncidents)?  $default,) {final _that = this;
switch (_that) {
case _QualityMetrics() when $default != null:
return $default(_that.preAnalyticalQuality,_that.collectionQuality,_that.transportQuality,_that.qualityIncidents);case _:
  return null;

}
}

}

/// @nodoc


class _QualityMetrics implements QualityMetrics {
  const _QualityMetrics({required this.preAnalyticalQuality, required this.collectionQuality, required this.transportQuality, required this.qualityIncidents});
  

@override final  double preAnalyticalQuality;
@override final  double collectionQuality;
@override final  double transportQuality;
@override final  int qualityIncidents;

/// Create a copy of QualityMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QualityMetricsCopyWith<_QualityMetrics> get copyWith => __$QualityMetricsCopyWithImpl<_QualityMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QualityMetrics&&(identical(other.preAnalyticalQuality, preAnalyticalQuality) || other.preAnalyticalQuality == preAnalyticalQuality)&&(identical(other.collectionQuality, collectionQuality) || other.collectionQuality == collectionQuality)&&(identical(other.transportQuality, transportQuality) || other.transportQuality == transportQuality)&&(identical(other.qualityIncidents, qualityIncidents) || other.qualityIncidents == qualityIncidents));
}


@override
int get hashCode => Object.hash(runtimeType,preAnalyticalQuality,collectionQuality,transportQuality,qualityIncidents);

@override
String toString() {
  return 'QualityMetrics(preAnalyticalQuality: $preAnalyticalQuality, collectionQuality: $collectionQuality, transportQuality: $transportQuality, qualityIncidents: $qualityIncidents)';
}


}

/// @nodoc
abstract mixin class _$QualityMetricsCopyWith<$Res> implements $QualityMetricsCopyWith<$Res> {
  factory _$QualityMetricsCopyWith(_QualityMetrics value, $Res Function(_QualityMetrics) _then) = __$QualityMetricsCopyWithImpl;
@override @useResult
$Res call({
 double preAnalyticalQuality, double collectionQuality, double transportQuality, int qualityIncidents
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
@override @pragma('vm:prefer-inline') $Res call({Object? preAnalyticalQuality = null,Object? collectionQuality = null,Object? transportQuality = null,Object? qualityIncidents = null,}) {
  return _then(_QualityMetrics(
preAnalyticalQuality: null == preAnalyticalQuality ? _self.preAnalyticalQuality : preAnalyticalQuality // ignore: cast_nullable_to_non_nullable
as double,collectionQuality: null == collectionQuality ? _self.collectionQuality : collectionQuality // ignore: cast_nullable_to_non_nullable
as double,transportQuality: null == transportQuality ? _self.transportQuality : transportQuality // ignore: cast_nullable_to_non_nullable
as double,qualityIncidents: null == qualityIncidents ? _self.qualityIncidents : qualityIncidents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
