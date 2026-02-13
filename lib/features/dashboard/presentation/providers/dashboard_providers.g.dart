// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardRemoteDataSource)
final dashboardRemoteDataSourceProvider = DashboardRemoteDataSourceProvider._();

final class DashboardRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          DashboardRemoteDataSource,
          DashboardRemoteDataSource,
          DashboardRemoteDataSource
        >
    with $Provider<DashboardRemoteDataSource> {
  DashboardRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<DashboardRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardRemoteDataSource create(Ref ref) {
    return dashboardRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardRemoteDataSource>(value),
    );
  }
}

String _$dashboardRemoteDataSourceHash() =>
    r'530a32c131b8b1e49bcd16be5d62e7d41b9cd9e8';

@ProviderFor(dashboardRepository)
final dashboardRepositoryProvider = DashboardRepositoryProvider._();

final class DashboardRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardRepository,
          DashboardRepository,
          DashboardRepository
        >
    with $Provider<DashboardRepository> {
  DashboardRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardRepository create(Ref ref) {
    return dashboardRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardRepository>(value),
    );
  }
}

String _$dashboardRepositoryHash() =>
    r'cd969e35cfb5b8ed5286952c90420f5eba898383';

@ProviderFor(getLabPulseUseCase)
final getLabPulseUseCaseProvider = GetLabPulseUseCaseProvider._();

final class GetLabPulseUseCaseProvider
    extends $FunctionalProvider<GetLabPulse, GetLabPulse, GetLabPulse>
    with $Provider<GetLabPulse> {
  GetLabPulseUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLabPulseUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLabPulseUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetLabPulse> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetLabPulse create(Ref ref) {
    return getLabPulseUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetLabPulse value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetLabPulse>(value),
    );
  }
}

String _$getLabPulseUseCaseHash() =>
    r'29deb0fb91b5f4e19cca3fdb6af4879d02f75860';

@ProviderFor(watchLabPulseUseCase)
final watchLabPulseUseCaseProvider = WatchLabPulseUseCaseProvider._();

final class WatchLabPulseUseCaseProvider
    extends $FunctionalProvider<WatchLabPulse, WatchLabPulse, WatchLabPulse>
    with $Provider<WatchLabPulse> {
  WatchLabPulseUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchLabPulseUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchLabPulseUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchLabPulse> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WatchLabPulse create(Ref ref) {
    return watchLabPulseUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchLabPulse value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchLabPulse>(value),
    );
  }
}

String _$watchLabPulseUseCaseHash() =>
    r'217cff00ef37b23e24c7ece8a095b291b25ad255';

@ProviderFor(LabPulseNotifier)
final labPulseProvider = LabPulseNotifierProvider._();

final class LabPulseNotifierProvider
    extends $AsyncNotifierProvider<LabPulseNotifier, LabPulse> {
  LabPulseNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'labPulseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$labPulseNotifierHash();

  @$internal
  @override
  LabPulseNotifier create() => LabPulseNotifier();
}

String _$labPulseNotifierHash() => r'756493290ecb6273e57d8f2d470db843a792640a';

abstract class _$LabPulseNotifier extends $AsyncNotifier<LabPulse> {
  FutureOr<LabPulse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<LabPulse>, LabPulse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<LabPulse>, LabPulse>,
              AsyncValue<LabPulse>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(watchLabPulse)
final watchLabPulseProvider = WatchLabPulseProvider._();

final class WatchLabPulseProvider
    extends
        $FunctionalProvider<AsyncValue<LabPulse>, LabPulse, Stream<LabPulse>>
    with $FutureModifier<LabPulse>, $StreamProvider<LabPulse> {
  WatchLabPulseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchLabPulseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchLabPulseHash();

  @$internal
  @override
  $StreamProviderElement<LabPulse> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<LabPulse> create(Ref ref) {
    return watchLabPulse(ref);
  }
}

String _$watchLabPulseHash() => r'3bdf4a4f588321b76c993a07121bbe015ae30944';
