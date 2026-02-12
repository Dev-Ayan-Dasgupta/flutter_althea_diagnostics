// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_analytical_risk_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreAnalyticalRiskModel {

 double get riskScore; String get riskLevel; List<RiskFactorModel> get factors; String get assessedAt; String? get recommendation; bool? get requiresRecollection; double? get sampleViabilityProbability;
/// Create a copy of PreAnalyticalRiskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreAnalyticalRiskModelCopyWith<PreAnalyticalRiskModel> get copyWith => _$PreAnalyticalRiskModelCopyWithImpl<PreAnalyticalRiskModel>(this as PreAnalyticalRiskModel, _$identity);

  /// Serializes this PreAnalyticalRiskModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreAnalyticalRiskModel&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other.factors, factors)&&(identical(other.assessedAt, assessedAt) || other.assessedAt == assessedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.requiresRecollection, requiresRecollection) || other.requiresRecollection == requiresRecollection)&&(identical(other.sampleViabilityProbability, sampleViabilityProbability) || other.sampleViabilityProbability == sampleViabilityProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riskScore,riskLevel,const DeepCollectionEquality().hash(factors),assessedAt,recommendation,requiresRecollection,sampleViabilityProbability);

@override
String toString() {
  return 'PreAnalyticalRiskModel(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
}


}

/// @nodoc
abstract mixin class $PreAnalyticalRiskModelCopyWith<$Res>  {
  factory $PreAnalyticalRiskModelCopyWith(PreAnalyticalRiskModel value, $Res Function(PreAnalyticalRiskModel) _then) = _$PreAnalyticalRiskModelCopyWithImpl;
@useResult
$Res call({
 double riskScore, String riskLevel, List<RiskFactorModel> factors, String assessedAt, String? recommendation, bool? requiresRecollection, double? sampleViabilityProbability
});




}
/// @nodoc
class _$PreAnalyticalRiskModelCopyWithImpl<$Res>
    implements $PreAnalyticalRiskModelCopyWith<$Res> {
  _$PreAnalyticalRiskModelCopyWithImpl(this._self, this._then);

  final PreAnalyticalRiskModel _self;
  final $Res Function(PreAnalyticalRiskModel) _then;

/// Create a copy of PreAnalyticalRiskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? riskScore = null,Object? riskLevel = null,Object? factors = null,Object? assessedAt = null,Object? recommendation = freezed,Object? requiresRecollection = freezed,Object? sampleViabilityProbability = freezed,}) {
  return _then(_self.copyWith(
riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,factors: null == factors ? _self.factors : factors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,assessedAt: null == assessedAt ? _self.assessedAt : assessedAt // ignore: cast_nullable_to_non_nullable
as String,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,requiresRecollection: freezed == requiresRecollection ? _self.requiresRecollection : requiresRecollection // ignore: cast_nullable_to_non_nullable
as bool?,sampleViabilityProbability: freezed == sampleViabilityProbability ? _self.sampleViabilityProbability : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreAnalyticalRiskModel].
extension PreAnalyticalRiskModelPatterns on PreAnalyticalRiskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreAnalyticalRiskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreAnalyticalRiskModel value)  $default,){
final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreAnalyticalRiskModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double riskScore,  String riskLevel,  List<RiskFactorModel> factors,  String assessedAt,  String? recommendation,  bool? requiresRecollection,  double? sampleViabilityProbability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel() when $default != null:
return $default(_that.riskScore,_that.riskLevel,_that.factors,_that.assessedAt,_that.recommendation,_that.requiresRecollection,_that.sampleViabilityProbability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double riskScore,  String riskLevel,  List<RiskFactorModel> factors,  String assessedAt,  String? recommendation,  bool? requiresRecollection,  double? sampleViabilityProbability)  $default,) {final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel():
return $default(_that.riskScore,_that.riskLevel,_that.factors,_that.assessedAt,_that.recommendation,_that.requiresRecollection,_that.sampleViabilityProbability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double riskScore,  String riskLevel,  List<RiskFactorModel> factors,  String assessedAt,  String? recommendation,  bool? requiresRecollection,  double? sampleViabilityProbability)?  $default,) {final _that = this;
switch (_that) {
case _PreAnalyticalRiskModel() when $default != null:
return $default(_that.riskScore,_that.riskLevel,_that.factors,_that.assessedAt,_that.recommendation,_that.requiresRecollection,_that.sampleViabilityProbability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreAnalyticalRiskModel implements PreAnalyticalRiskModel {
  const _PreAnalyticalRiskModel({required this.riskScore, required this.riskLevel, required final  List<RiskFactorModel> factors, required this.assessedAt, this.recommendation, this.requiresRecollection, this.sampleViabilityProbability}): _factors = factors;
  factory _PreAnalyticalRiskModel.fromJson(Map<String, dynamic> json) => _$PreAnalyticalRiskModelFromJson(json);

@override final  double riskScore;
@override final  String riskLevel;
 final  List<RiskFactorModel> _factors;
@override List<RiskFactorModel> get factors {
  if (_factors is EqualUnmodifiableListView) return _factors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_factors);
}

@override final  String assessedAt;
@override final  String? recommendation;
@override final  bool? requiresRecollection;
@override final  double? sampleViabilityProbability;

/// Create a copy of PreAnalyticalRiskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreAnalyticalRiskModelCopyWith<_PreAnalyticalRiskModel> get copyWith => __$PreAnalyticalRiskModelCopyWithImpl<_PreAnalyticalRiskModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreAnalyticalRiskModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreAnalyticalRiskModel&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other._factors, _factors)&&(identical(other.assessedAt, assessedAt) || other.assessedAt == assessedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.requiresRecollection, requiresRecollection) || other.requiresRecollection == requiresRecollection)&&(identical(other.sampleViabilityProbability, sampleViabilityProbability) || other.sampleViabilityProbability == sampleViabilityProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riskScore,riskLevel,const DeepCollectionEquality().hash(_factors),assessedAt,recommendation,requiresRecollection,sampleViabilityProbability);

@override
String toString() {
  return 'PreAnalyticalRiskModel(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
}


}

/// @nodoc
abstract mixin class _$PreAnalyticalRiskModelCopyWith<$Res> implements $PreAnalyticalRiskModelCopyWith<$Res> {
  factory _$PreAnalyticalRiskModelCopyWith(_PreAnalyticalRiskModel value, $Res Function(_PreAnalyticalRiskModel) _then) = __$PreAnalyticalRiskModelCopyWithImpl;
@override @useResult
$Res call({
 double riskScore, String riskLevel, List<RiskFactorModel> factors, String assessedAt, String? recommendation, bool? requiresRecollection, double? sampleViabilityProbability
});




}
/// @nodoc
class __$PreAnalyticalRiskModelCopyWithImpl<$Res>
    implements _$PreAnalyticalRiskModelCopyWith<$Res> {
  __$PreAnalyticalRiskModelCopyWithImpl(this._self, this._then);

  final _PreAnalyticalRiskModel _self;
  final $Res Function(_PreAnalyticalRiskModel) _then;

/// Create a copy of PreAnalyticalRiskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riskScore = null,Object? riskLevel = null,Object? factors = null,Object? assessedAt = null,Object? recommendation = freezed,Object? requiresRecollection = freezed,Object? sampleViabilityProbability = freezed,}) {
  return _then(_PreAnalyticalRiskModel(
riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,factors: null == factors ? _self._factors : factors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,assessedAt: null == assessedAt ? _self.assessedAt : assessedAt // ignore: cast_nullable_to_non_nullable
as String,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,requiresRecollection: freezed == requiresRecollection ? _self.requiresRecollection : requiresRecollection // ignore: cast_nullable_to_non_nullable
as bool?,sampleViabilityProbability: freezed == sampleViabilityProbability ? _self.sampleViabilityProbability : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$RiskFactorModel {

 String get type; double get impact; String get description; bool? get detected; Map<String, dynamic>? get metadata;
/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorModelCopyWith<RiskFactorModel> get copyWith => _$RiskFactorModelCopyWithImpl<RiskFactorModel>(this as RiskFactorModel, _$identity);

  /// Serializes this RiskFactorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactorModel&&(identical(other.type, type) || other.type == type)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.description, description) || other.description == description)&&(identical(other.detected, detected) || other.detected == detected)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,impact,description,detected,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'RiskFactorModel(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $RiskFactorModelCopyWith<$Res>  {
  factory $RiskFactorModelCopyWith(RiskFactorModel value, $Res Function(RiskFactorModel) _then) = _$RiskFactorModelCopyWithImpl;
@useResult
$Res call({
 String type, double impact, String description, bool? detected, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$RiskFactorModelCopyWithImpl<$Res>
    implements $RiskFactorModelCopyWith<$Res> {
  _$RiskFactorModelCopyWithImpl(this._self, this._then);

  final RiskFactorModel _self;
  final $Res Function(RiskFactorModel) _then;

/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? impact = null,Object? description = null,Object? detected = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,impact: null == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,detected: freezed == detected ? _self.detected : detected // ignore: cast_nullable_to_non_nullable
as bool?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskFactorModel].
extension RiskFactorModelPatterns on RiskFactorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactorModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactorModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  double impact,  String description,  bool? detected,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
return $default(_that.type,_that.impact,_that.description,_that.detected,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  double impact,  String description,  bool? detected,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _RiskFactorModel():
return $default(_that.type,_that.impact,_that.description,_that.detected,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  double impact,  String description,  bool? detected,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
return $default(_that.type,_that.impact,_that.description,_that.detected,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskFactorModel implements RiskFactorModel {
  const _RiskFactorModel({required this.type, required this.impact, required this.description, this.detected, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _RiskFactorModel.fromJson(Map<String, dynamic> json) => _$RiskFactorModelFromJson(json);

@override final  String type;
@override final  double impact;
@override final  String description;
@override final  bool? detected;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorModelCopyWith<_RiskFactorModel> get copyWith => __$RiskFactorModelCopyWithImpl<_RiskFactorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskFactorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactorModel&&(identical(other.type, type) || other.type == type)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.description, description) || other.description == description)&&(identical(other.detected, detected) || other.detected == detected)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,impact,description,detected,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'RiskFactorModel(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorModelCopyWith<$Res> implements $RiskFactorModelCopyWith<$Res> {
  factory _$RiskFactorModelCopyWith(_RiskFactorModel value, $Res Function(_RiskFactorModel) _then) = __$RiskFactorModelCopyWithImpl;
@override @useResult
$Res call({
 String type, double impact, String description, bool? detected, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$RiskFactorModelCopyWithImpl<$Res>
    implements _$RiskFactorModelCopyWith<$Res> {
  __$RiskFactorModelCopyWithImpl(this._self, this._then);

  final _RiskFactorModel _self;
  final $Res Function(_RiskFactorModel) _then;

/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? impact = null,Object? description = null,Object? detected = freezed,Object? metadata = freezed,}) {
  return _then(_RiskFactorModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,impact: null == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,detected: freezed == detected ? _self.detected : detected // ignore: cast_nullable_to_non_nullable
as bool?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
