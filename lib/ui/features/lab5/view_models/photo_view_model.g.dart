// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PhotoViewModel)
final photoViewModelProvider = PhotoViewModelProvider._();

final class PhotoViewModelProvider
    extends $AsyncNotifierProvider<PhotoViewModel, List<Photo>> {
  PhotoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'photoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$photoViewModelHash();

  @$internal
  @override
  PhotoViewModel create() => PhotoViewModel();
}

String _$photoViewModelHash() => r'2241b80b3c85a054668ba751c80996ce6d28485c';

abstract class _$PhotoViewModel extends $AsyncNotifier<List<Photo>> {
  FutureOr<List<Photo>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Photo>>, List<Photo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Photo>>, List<Photo>>,
              AsyncValue<List<Photo>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
