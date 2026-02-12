// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message, this.statusCode});

  @override
  final String message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.server(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return server(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return server?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(
      {required final String message,
      final int? statusCode}) = _$ServerFailureImpl;

  @override
  String get message;
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure({required final String message}) =
      _$NetworkFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements AuthenticationFailure {
  const _$AuthenticationFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.authentication(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return authentication(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return authentication?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return authentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return authentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements Failure {
  const factory AuthenticationFailure({required final String message}) =
      _$AuthenticationFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(_$ValidationFailureImpl value,
          $Res Function(_$ValidationFailureImpl) then) =
      __$$ValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Map<String, String>? fieldErrors});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(_$ValidationFailureImpl _value,
      $Res Function(_$ValidationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fieldErrors = freezed,
  }) {
    return _then(_$ValidationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fieldErrors: freezed == fieldErrors
          ? _value._fieldErrors
          : fieldErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$ValidationFailureImpl implements ValidationFailure {
  const _$ValidationFailureImpl(
      {required this.message, final Map<String, String>? fieldErrors})
      : _fieldErrors = fieldErrors;

  @override
  final String message;
  final Map<String, String>? _fieldErrors;
  @override
  Map<String, String>? get fieldErrors {
    final value = _fieldErrors;
    if (value == null) return null;
    if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Failure.validation(message: $message, fieldErrors: $fieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._fieldErrors, _fieldErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_fieldErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return validation(message, fieldErrors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return validation?.call(message, fieldErrors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, fieldErrors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationFailure implements Failure {
  const factory ValidationFailure(
      {required final String message,
      final Map<String, String>? fieldErrors}) = _$ValidationFailureImpl;

  @override
  String get message;
  Map<String, String>? get fieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleIntegrityFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SampleIntegrityFailureImplCopyWith(
          _$SampleIntegrityFailureImpl value,
          $Res Function(_$SampleIntegrityFailureImpl) then) =
      __$$SampleIntegrityFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String sampleId, double? integrityScore});
}

/// @nodoc
class __$$SampleIntegrityFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SampleIntegrityFailureImpl>
    implements _$$SampleIntegrityFailureImplCopyWith<$Res> {
  __$$SampleIntegrityFailureImplCopyWithImpl(
      _$SampleIntegrityFailureImpl _value,
      $Res Function(_$SampleIntegrityFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? sampleId = null,
    Object? integrityScore = freezed,
  }) {
    return _then(_$SampleIntegrityFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      integrityScore: freezed == integrityScore
          ? _value.integrityScore
          : integrityScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SampleIntegrityFailureImpl implements SampleIntegrityFailure {
  const _$SampleIntegrityFailureImpl(
      {required this.message, required this.sampleId, this.integrityScore});

  @override
  final String message;
  @override
  final String sampleId;
  @override
  final double? integrityScore;

  @override
  String toString() {
    return 'Failure.sampleIntegrity(message: $message, sampleId: $sampleId, integrityScore: $integrityScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleIntegrityFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.integrityScore, integrityScore) ||
                other.integrityScore == integrityScore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, sampleId, integrityScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleIntegrityFailureImplCopyWith<_$SampleIntegrityFailureImpl>
      get copyWith => __$$SampleIntegrityFailureImplCopyWithImpl<
          _$SampleIntegrityFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return sampleIntegrity(message, sampleId, integrityScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return sampleIntegrity?.call(message, sampleId, integrityScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (sampleIntegrity != null) {
      return sampleIntegrity(message, sampleId, integrityScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return sampleIntegrity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return sampleIntegrity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (sampleIntegrity != null) {
      return sampleIntegrity(this);
    }
    return orElse();
  }
}

abstract class SampleIntegrityFailure implements Failure {
  const factory SampleIntegrityFailure(
      {required final String message,
      required final String sampleId,
      final double? integrityScore}) = _$SampleIntegrityFailureImpl;

  @override
  String get message;
  String get sampleId;
  double? get integrityScore;
  @override
  @JsonKey(ignore: true)
  _$$SampleIntegrityFailureImplCopyWith<_$SampleIntegrityFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColdChainFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ColdChainFailureImplCopyWith(_$ColdChainFailureImpl value,
          $Res Function(_$ColdChainFailureImpl) then) =
      __$$ColdChainFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, double? temperature, DateTime? timestamp});
}

/// @nodoc
class __$$ColdChainFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ColdChainFailureImpl>
    implements _$$ColdChainFailureImplCopyWith<$Res> {
  __$$ColdChainFailureImplCopyWithImpl(_$ColdChainFailureImpl _value,
      $Res Function(_$ColdChainFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? temperature = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$ColdChainFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ColdChainFailureImpl implements ColdChainFailure {
  const _$ColdChainFailureImpl(
      {required this.message, this.temperature, this.timestamp});

  @override
  final String message;
  @override
  final double? temperature;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'Failure.coldChain(message: $message, temperature: $temperature, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColdChainFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, temperature, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColdChainFailureImplCopyWith<_$ColdChainFailureImpl> get copyWith =>
      __$$ColdChainFailureImplCopyWithImpl<_$ColdChainFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return coldChain(message, temperature, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return coldChain?.call(message, temperature, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (coldChain != null) {
      return coldChain(message, temperature, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return coldChain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return coldChain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (coldChain != null) {
      return coldChain(this);
    }
    return orElse();
  }
}

abstract class ColdChainFailure implements Failure {
  const factory ColdChainFailure(
      {required final String message,
      final double? temperature,
      final DateTime? timestamp}) = _$ColdChainFailureImpl;

  @override
  String get message;
  double? get temperature;
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ColdChainFailureImplCopyWith<_$ColdChainFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BleFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$BleFailureImplCopyWith(
          _$BleFailureImpl value, $Res Function(_$BleFailureImpl) then) =
      __$$BleFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? deviceId});
}

/// @nodoc
class __$$BleFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BleFailureImpl>
    implements _$$BleFailureImplCopyWith<$Res> {
  __$$BleFailureImplCopyWithImpl(
      _$BleFailureImpl _value, $Res Function(_$BleFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? deviceId = freezed,
  }) {
    return _then(_$BleFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BleFailureImpl implements BleFailure {
  const _$BleFailureImpl({required this.message, this.deviceId});

  @override
  final String message;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'Failure.ble(message: $message, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleFailureImplCopyWith<_$BleFailureImpl> get copyWith =>
      __$$BleFailureImplCopyWithImpl<_$BleFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return ble(message, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return ble?.call(message, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (ble != null) {
      return ble(message, deviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return ble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return ble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (ble != null) {
      return ble(this);
    }
    return orElse();
  }
}

abstract class BleFailure implements Failure {
  const factory BleFailure(
      {required final String message,
      final String? deviceId}) = _$BleFailureImpl;

  @override
  String get message;
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$BleFailureImplCopyWith<_$BleFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure({required final String message}) =
      _$CacheFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionFailureImplCopyWith(_$PermissionFailureImpl value,
          $Res Function(_$PermissionFailureImpl) then) =
      __$$PermissionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String permission});
}

/// @nodoc
class __$$PermissionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionFailureImpl>
    implements _$$PermissionFailureImplCopyWith<$Res> {
  __$$PermissionFailureImplCopyWithImpl(_$PermissionFailureImpl _value,
      $Res Function(_$PermissionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? permission = null,
  }) {
    return _then(_$PermissionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermissionFailureImpl implements PermissionFailure {
  const _$PermissionFailureImpl(
      {required this.message, required this.permission});

  @override
  final String message;
  @override
  final String permission;

  @override
  String toString() {
    return 'Failure.permission(message: $message, permission: $permission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, permission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      __$$PermissionFailureImplCopyWithImpl<_$PermissionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return permission(message, this.permission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return permission?.call(message, this.permission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(message, this.permission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return permission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(this);
    }
    return orElse();
  }
}

abstract class PermissionFailure implements Failure {
  const factory PermissionFailure(
      {required final String message,
      required final String permission}) = _$PermissionFailureImpl;

  @override
  String get message;
  String get permission;
  @override
  @JsonKey(ignore: true)
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) server,
    required TResult Function(String message) network,
    required TResult Function(String message) authentication,
    required TResult Function(String message, Map<String, String>? fieldErrors)
        validation,
    required TResult Function(
            String message, String sampleId, double? integrityScore)
        sampleIntegrity,
    required TResult Function(
            String message, double? temperature, DateTime? timestamp)
        coldChain,
    required TResult Function(String message, String? deviceId) ble,
    required TResult Function(String message) cache,
    required TResult Function(String message, String permission) permission,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? server,
    TResult? Function(String message)? network,
    TResult? Function(String message)? authentication,
    TResult? Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult? Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult? Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult? Function(String message, String? deviceId)? ble,
    TResult? Function(String message)? cache,
    TResult? Function(String message, String permission)? permission,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? server,
    TResult Function(String message)? network,
    TResult Function(String message)? authentication,
    TResult Function(String message, Map<String, String>? fieldErrors)?
        validation,
    TResult Function(String message, String sampleId, double? integrityScore)?
        sampleIntegrity,
    TResult Function(String message, double? temperature, DateTime? timestamp)?
        coldChain,
    TResult Function(String message, String? deviceId)? ble,
    TResult Function(String message)? cache,
    TResult Function(String message, String permission)? permission,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(AuthenticationFailure value) authentication,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(SampleIntegrityFailure value) sampleIntegrity,
    required TResult Function(ColdChainFailure value) coldChain,
    required TResult Function(BleFailure value) ble,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(AuthenticationFailure value)? authentication,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult? Function(ColdChainFailure value)? coldChain,
    TResult? Function(BleFailure value)? ble,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(AuthenticationFailure value)? authentication,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(SampleIntegrityFailure value)? sampleIntegrity,
    TResult Function(ColdChainFailure value)? coldChain,
    TResult Function(BleFailure value)? ble,
    TResult Function(CacheFailure value)? cache,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure({required final String message}) =
      _$UnknownFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
