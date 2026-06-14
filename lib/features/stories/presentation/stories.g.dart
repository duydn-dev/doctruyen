// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoriesController)
final storiesControllerProvider = StoriesControllerProvider._();

final class StoriesControllerProvider
    extends $NotifierProvider<StoriesController, void> {
  StoriesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'storiesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$storiesControllerHash();

  @$internal
  @override
  StoriesController create() => StoriesController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$storiesControllerHash() => r'a18c2530a23cf24365b486487877aa4d622eceb0';

abstract class _$StoriesController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
