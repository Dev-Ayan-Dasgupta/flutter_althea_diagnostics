// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sampleRemoteDataSource)
final sampleRemoteDataSourceProvider = SampleRemoteDataSourceProvider._();

final class SampleRemoteDataSourceProvider extends $FunctionalProvider<
    SampleRemoteDataSource,
    SampleRemoteDataSource,
    SampleRemoteDataSource> with $Provider<SampleRemoteDataSource> {
  SampleRemoteDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sampleRemoteDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sampleRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<SampleRemoteDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SampleRemoteDataSource create(Ref ref) {
    return sampleRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SampleRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SampleRemoteDataSource>(value),
    );
  }
}

String _$sampleRemoteDataSourceHash() =>
    r'cfaa6a42f3d1b81caea5ebaa275897870e2ea31d';

@ProviderFor(sampleLocalDataSource)
final sampleLocalDataSourceProvider = SampleLocalDataSourceProvider._();

final class SampleLocalDataSourceProvider extends $FunctionalProvider<
    SampleLocalDataSource,
    SampleLocalDataSource,
    SampleLocalDataSource> with $Provider<SampleLocalDataSource> {
  SampleLocalDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sampleLocalDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sampleLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<SampleLocalDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SampleLocalDataSource create(Ref ref) {
    return sampleLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SampleLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SampleLocalDataSource>(value),
    );
  }
}

String _$sampleLocalDataSourceHash() =>
    r'6c8d2a21ec3728cdc2e11aef2aadaf93f7975311';

@ProviderFor(sampleRepository)
final sampleRepositoryProvider = SampleRepositoryProvider._();

final class SampleRepositoryProvider extends $FunctionalProvider<
    SampleRepository,
    SampleRepository,
    SampleRepository> with $Provider<SampleRepository> {
  SampleRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sampleRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sampleRepositoryHash();

  @$internal
  @override
  $ProviderElement<SampleRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SampleRepository create(Ref ref) {
    return sampleRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SampleRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SampleRepository>(value),
    );
  }
}

String _$sampleRepositoryHash() => r'2c79e64e213634f91127a864981843fd53c36a9b';

@ProviderFor(getSamplesUseCase)
final getSamplesUseCaseProvider = GetSamplesUseCaseProvider._();

final class GetSamplesUseCaseProvider
    extends $FunctionalProvider<GetSamples, GetSamples, GetSamples>
    with $Provider<GetSamples> {
  GetSamplesUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSamplesUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSamplesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSamples> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSamples create(Ref ref) {
    return getSamplesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSamples value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSamples>(value),
    );
  }
}

String _$getSamplesUseCaseHash() => r'ced8d2afeb796c9e0872f291b401cdfd67aba98a';

@ProviderFor(getSampleByIdUseCase)
final getSampleByIdUseCaseProvider = GetSampleByIdUseCaseProvider._();

final class GetSampleByIdUseCaseProvider
    extends $FunctionalProvider<GetSampleById, GetSampleById, GetSampleById>
    with $Provider<GetSampleById> {
  GetSampleByIdUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSampleByIdUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSampleByIdUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSampleById> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSampleById create(Ref ref) {
    return getSampleByIdUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSampleById value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSampleById>(value),
    );
  }
}

String _$getSampleByIdUseCaseHash() =>
    r'24ea44c7f74df649a1a5cc7fb3edc7592fde308f';

@ProviderFor(scanBarcodeUseCase)
final scanBarcodeUseCaseProvider = ScanBarcodeUseCaseProvider._();

final class ScanBarcodeUseCaseProvider
    extends $FunctionalProvider<ScanBarcode, ScanBarcode, ScanBarcode>
    with $Provider<ScanBarcode> {
  ScanBarcodeUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'scanBarcodeUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$scanBarcodeUseCaseHash();

  @$internal
  @override
  $ProviderElement<ScanBarcode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ScanBarcode create(Ref ref) {
    return scanBarcodeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScanBarcode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScanBarcode>(value),
    );
  }
}

String _$scanBarcodeUseCaseHash() =>
    r'247df9097cc272a523e7db5446483a0526b66a09';

@ProviderFor(verifyBiometricHandshakeUseCase)
final verifyBiometricHandshakeUseCaseProvider =
    VerifyBiometricHandshakeUseCaseProvider._();

final class VerifyBiometricHandshakeUseCaseProvider extends $FunctionalProvider<
    VerifyBiometricHandshake,
    VerifyBiometricHandshake,
    VerifyBiometricHandshake> with $Provider<VerifyBiometricHandshake> {
  VerifyBiometricHandshakeUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'verifyBiometricHandshakeUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$verifyBiometricHandshakeUseCaseHash();

  @$internal
  @override
  $ProviderElement<VerifyBiometricHandshake> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VerifyBiometricHandshake create(Ref ref) {
    return verifyBiometricHandshakeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VerifyBiometricHandshake value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VerifyBiometricHandshake>(value),
    );
  }
}

String _$verifyBiometricHandshakeUseCaseHash() =>
    r'2e2f2066fa7a32100202c984d185bc2a8e13f6bf';

@ProviderFor(markSampleAsCollectedUseCase)
final markSampleAsCollectedUseCaseProvider =
    MarkSampleAsCollectedUseCaseProvider._();

final class MarkSampleAsCollectedUseCaseProvider extends $FunctionalProvider<
    MarkSampleAsCollected,
    MarkSampleAsCollected,
    MarkSampleAsCollected> with $Provider<MarkSampleAsCollected> {
  MarkSampleAsCollectedUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'markSampleAsCollectedUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$markSampleAsCollectedUseCaseHash();

  @$internal
  @override
  $ProviderElement<MarkSampleAsCollected> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MarkSampleAsCollected create(Ref ref) {
    return markSampleAsCollectedUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarkSampleAsCollected value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarkSampleAsCollected>(value),
    );
  }
}

String _$markSampleAsCollectedUseCaseHash() =>
    r'7805cdd7dd8854352868168e3cef38584b22b5b0';

@ProviderFor(watchSampleUseCase)
final watchSampleUseCaseProvider = WatchSampleUseCaseProvider._();

final class WatchSampleUseCaseProvider
    extends $FunctionalProvider<WatchSample, WatchSample, WatchSample>
    with $Provider<WatchSample> {
  WatchSampleUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'watchSampleUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$watchSampleUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchSample> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WatchSample create(Ref ref) {
    return watchSampleUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchSample value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchSample>(value),
    );
  }
}

String _$watchSampleUseCaseHash() =>
    r'8a07eadc0f70984d92e98507f21acc47bf236709';

@ProviderFor(SamplesNotifier)
final samplesProvider = SamplesNotifierFamily._();

final class SamplesNotifierProvider
    extends $AsyncNotifierProvider<SamplesNotifier, List<Sample>> {
  SamplesNotifierProvider._(
      {required SamplesNotifierFamily super.from,
      required ({
        SampleStatus? status,
        DateTime? startDate,
        DateTime? endDate,
        int page,
        int limit,
      })
          super.argument})
      : super(
          retry: null,
          name: r'samplesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$samplesNotifierHash();

  @override
  String toString() {
    return r'samplesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SamplesNotifier create() => SamplesNotifier();

  @override
  bool operator ==(Object other) {
    return other is SamplesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$samplesNotifierHash() => r'1bf01fc2bda2018a8b38af564c36155524e05325';

final class SamplesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            SamplesNotifier,
            AsyncValue<List<Sample>>,
            List<Sample>,
            FutureOr<List<Sample>>,
            ({
              SampleStatus? status,
              DateTime? startDate,
              DateTime? endDate,
              int page,
              int limit,
            })> {
  SamplesNotifierFamily._()
      : super(
          retry: null,
          name: r'samplesProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SamplesNotifierProvider call({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page = 1,
    int limit = 20,
  }) =>
      SamplesNotifierProvider._(argument: (
        status: status,
        startDate: startDate,
        endDate: endDate,
        page: page,
        limit: limit,
      ), from: this);

  @override
  String toString() => r'samplesProvider';
}

abstract class _$SamplesNotifier extends $AsyncNotifier<List<Sample>> {
  late final _$args = ref.$arg as ({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page,
    int limit,
  });
  SampleStatus? get status => _$args.status;
  DateTime? get startDate => _$args.startDate;
  DateTime? get endDate => _$args.endDate;
  int get page => _$args.page;
  int get limit => _$args.limit;

  FutureOr<List<Sample>> build({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page = 1,
    int limit = 20,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Sample>>, List<Sample>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Sample>>, List<Sample>>,
        AsyncValue<List<Sample>>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              status: _$args.status,
              startDate: _$args.startDate,
              endDate: _$args.endDate,
              page: _$args.page,
              limit: _$args.limit,
            ));
  }
}

@ProviderFor(SampleNotifier)
final sampleProvider = SampleNotifierFamily._();

final class SampleNotifierProvider
    extends $AsyncNotifierProvider<SampleNotifier, Sample> {
  SampleNotifierProvider._(
      {required SampleNotifierFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'sampleProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sampleNotifierHash();

  @override
  String toString() {
    return r'sampleProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SampleNotifier create() => SampleNotifier();

  @override
  bool operator ==(Object other) {
    return other is SampleNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sampleNotifierHash() => r'8364c06b2383683ad312e24571503e457e2639df';

final class SampleNotifierFamily extends $Family
    with
        $ClassFamilyOverride<SampleNotifier, AsyncValue<Sample>, Sample,
            FutureOr<Sample>, String> {
  SampleNotifierFamily._()
      : super(
          retry: null,
          name: r'sampleProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SampleNotifierProvider call(
    String sampleId,
  ) =>
      SampleNotifierProvider._(argument: sampleId, from: this);

  @override
  String toString() => r'sampleProvider';
}

abstract class _$SampleNotifier extends $AsyncNotifier<Sample> {
  late final _$args = ref.$arg as String;
  String get sampleId => _$args;

  FutureOr<Sample> build(
    String sampleId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Sample>, Sample>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<Sample>, Sample>,
        AsyncValue<Sample>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args,
            ));
  }
}

@ProviderFor(watchSample)
final watchSampleProvider = WatchSampleFamily._();

final class WatchSampleProvider
    extends $FunctionalProvider<AsyncValue<Sample>, Sample, Stream<Sample>>
    with $FutureModifier<Sample>, $StreamProvider<Sample> {
  WatchSampleProvider._(
      {required WatchSampleFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'watchSampleProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$watchSampleHash();

  @override
  String toString() {
    return r'watchSampleProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Sample> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Sample> create(Ref ref) {
    final argument = this.argument as String;
    return watchSample(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WatchSampleProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$watchSampleHash() => r'66434cce749de5017af11c64aaf0669bd6bfa6f8';

final class WatchSampleFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Sample>, String> {
  WatchSampleFamily._()
      : super(
          retry: null,
          name: r'watchSampleProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  WatchSampleProvider call(
    String sampleId,
  ) =>
      WatchSampleProvider._(argument: sampleId, from: this);

  @override
  String toString() => r'watchSampleProvider';
}

@ProviderFor(samplesInTransit)
final samplesInTransitProvider = SamplesInTransitProvider._();

final class SamplesInTransitProvider extends $FunctionalProvider<
        AsyncValue<List<Sample>>, List<Sample>, FutureOr<List<Sample>>>
    with $FutureModifier<List<Sample>>, $FutureProvider<List<Sample>> {
  SamplesInTransitProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'samplesInTransitProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$samplesInTransitHash();

  @$internal
  @override
  $FutureProviderElement<List<Sample>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Sample>> create(Ref ref) {
    return samplesInTransit(ref);
  }
}

String _$samplesInTransitHash() => r'd58b9f63920b9f1e567c1d748dc1c4b8e8eeadff';

@ProviderFor(samplesProcessing)
final samplesProcessingProvider = SamplesProcessingProvider._();

final class SamplesProcessingProvider extends $FunctionalProvider<
        AsyncValue<List<Sample>>, List<Sample>, FutureOr<List<Sample>>>
    with $FutureModifier<List<Sample>>, $FutureProvider<List<Sample>> {
  SamplesProcessingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'samplesProcessingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$samplesProcessingHash();

  @$internal
  @override
  $FutureProviderElement<List<Sample>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Sample>> create(Ref ref) {
    return samplesProcessing(ref);
  }
}

String _$samplesProcessingHash() => r'a08311bbd1c763065b55a07b297f2f406ec3ca88';
