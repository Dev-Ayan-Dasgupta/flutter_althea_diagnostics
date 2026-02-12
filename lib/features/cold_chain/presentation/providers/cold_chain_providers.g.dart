// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_chain_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(coldChainRemoteDataSource)
final coldChainRemoteDataSourceProvider = ColdChainRemoteDataSourceProvider._();

final class ColdChainRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ColdChainRemoteDataSource,
          ColdChainRemoteDataSource,
          ColdChainRemoteDataSource
        >
    with $Provider<ColdChainRemoteDataSource> {
  ColdChainRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coldChainRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coldChainRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ColdChainRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ColdChainRemoteDataSource create(Ref ref) {
    return coldChainRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ColdChainRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ColdChainRemoteDataSource>(value),
    );
  }
}

String _$coldChainRemoteDataSourceHash() =>
    r'c4301ad1e6d5f6c8ce32846ad19b93f7fe663f15';

@ProviderFor(coldChainRepository)
final coldChainRepositoryProvider = ColdChainRepositoryProvider._();

final class ColdChainRepositoryProvider
    extends
        $FunctionalProvider<
          ColdChainRepository,
          ColdChainRepository,
          ColdChainRepository
        >
    with $Provider<ColdChainRepository> {
  ColdChainRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coldChainRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coldChainRepositoryHash();

  @$internal
  @override
  $ProviderElement<ColdChainRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ColdChainRepository create(Ref ref) {
    return coldChainRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ColdChainRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ColdChainRepository>(value),
    );
  }
}

String _$coldChainRepositoryHash() =>
    r'a5ee054971e5219d577d18c59f7df3aa948d5498';

@ProviderFor(getColdChainDataUseCase)
final getColdChainDataUseCaseProvider = GetColdChainDataUseCaseProvider._();

final class GetColdChainDataUseCaseProvider
    extends
        $FunctionalProvider<
          GetColdChainData,
          GetColdChainData,
          GetColdChainData
        >
    with $Provider<GetColdChainData> {
  GetColdChainDataUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getColdChainDataUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getColdChainDataUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetColdChainData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetColdChainData create(Ref ref) {
    return getColdChainDataUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetColdChainData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetColdChainData>(value),
    );
  }
}

String _$getColdChainDataUseCaseHash() =>
    r'a49096bd1ae0dcd7a03cc4d06e5dd1092457540a';

@ProviderFor(logTemperatureUseCase)
final logTemperatureUseCaseProvider = LogTemperatureUseCaseProvider._();

final class LogTemperatureUseCaseProvider
    extends $FunctionalProvider<LogTemperature, LogTemperature, LogTemperature>
    with $Provider<LogTemperature> {
  LogTemperatureUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logTemperatureUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logTemperatureUseCaseHash();

  @$internal
  @override
  $ProviderElement<LogTemperature> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogTemperature create(Ref ref) {
    return logTemperatureUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogTemperature value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogTemperature>(value),
    );
  }
}

String _$logTemperatureUseCaseHash() =>
    r'718c5dd2d9af5eb28ec112534d291b22d8e0e33a';

@ProviderFor(watchTelemetryUseCase)
final watchTelemetryUseCaseProvider = WatchTelemetryUseCaseProvider._();

final class WatchTelemetryUseCaseProvider
    extends $FunctionalProvider<WatchTelemetry, WatchTelemetry, WatchTelemetry>
    with $Provider<WatchTelemetry> {
  WatchTelemetryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchTelemetryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchTelemetryUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchTelemetry> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WatchTelemetry create(Ref ref) {
    return watchTelemetryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchTelemetry value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchTelemetry>(value),
    );
  }
}

String _$watchTelemetryUseCaseHash() =>
    r'09debf524d1d887cb311a975f99b4b374f466cf0';

@ProviderFor(ColdChainNotifier)
final coldChainProvider = ColdChainNotifierFamily._();

final class ColdChainNotifierProvider
    extends $AsyncNotifierProvider<ColdChainNotifier, ColdChainData> {
  ColdChainNotifierProvider._({
    required ColdChainNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'coldChainProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$coldChainNotifierHash();

  @override
  String toString() {
    return r'coldChainProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ColdChainNotifier create() => ColdChainNotifier();

  @override
  bool operator ==(Object other) {
    return other is ColdChainNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$coldChainNotifierHash() => r'04d63afb05018c899cb22a561e5d07195208918d';

final class ColdChainNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ColdChainNotifier,
          AsyncValue<ColdChainData>,
          ColdChainData,
          FutureOr<ColdChainData>,
          String
        > {
  ColdChainNotifierFamily._()
    : super(
        retry: null,
        name: r'coldChainProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ColdChainNotifierProvider call(String sampleId) =>
      ColdChainNotifierProvider._(argument: sampleId, from: this);

  @override
  String toString() => r'coldChainProvider';
}

abstract class _$ColdChainNotifier extends $AsyncNotifier<ColdChainData> {
  late final _$args = ref.$arg as String;
  String get sampleId => _$args;

  FutureOr<ColdChainData> build(String sampleId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ColdChainData>, ColdChainData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ColdChainData>, ColdChainData>,
              AsyncValue<ColdChainData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(watchTelemetry)
final watchTelemetryProvider = WatchTelemetryFamily._();

final class WatchTelemetryProvider
    extends
        $FunctionalProvider<
          AsyncValue<TelemetryReading>,
          TelemetryReading,
          Stream<TelemetryReading>
        >
    with $FutureModifier<TelemetryReading>, $StreamProvider<TelemetryReading> {
  WatchTelemetryProvider._({
    required WatchTelemetryFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'watchTelemetryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$watchTelemetryHash();

  @override
  String toString() {
    return r'watchTelemetryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<TelemetryReading> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<TelemetryReading> create(Ref ref) {
    final argument = this.argument as String;
    return watchTelemetry(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchTelemetryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$watchTelemetryHash() => r'18a0bf9759216848ca0df999047c1d1df6ecddb5';

final class WatchTelemetryFamily extends $Family
    with $FunctionalFamilyOverride<Stream<TelemetryReading>, String> {
  WatchTelemetryFamily._()
    : super(
        retry: null,
        name: r'watchTelemetryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WatchTelemetryProvider call(String sampleId) =>
      WatchTelemetryProvider._(argument: sampleId, from: this);

  @override
  String toString() => r'watchTelemetryProvider';
}

@ProviderFor(isCompliant)
final isCompliantProvider = IsCompliantFamily._();

final class IsCompliantProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsCompliantProvider._({
    required IsCompliantFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'isCompliantProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isCompliantHash();

  @override
  String toString() {
    return r'isCompliantProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as String;
    return isCompliant(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsCompliantProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isCompliantHash() => r'386e9011d006d5e770087d4c76d1bdd2600a057c';

final class IsCompliantFamily extends $Family
    with $FunctionalFamilyOverride<bool, String> {
  IsCompliantFamily._()
    : super(
        retry: null,
        name: r'isCompliantProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsCompliantProvider call(String sampleId) =>
      IsCompliantProvider._(argument: sampleId, from: this);

  @override
  String toString() => r'isCompliantProvider';
}
