// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_photo_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoritePhotoViewModel)
final favoritePhotoViewModelProvider = FavoritePhotoViewModelProvider._();

final class FavoritePhotoViewModelProvider
    extends $AsyncNotifierProvider<FavoritePhotoViewModel, List<Photo>> {
  FavoritePhotoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritePhotoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritePhotoViewModelHash();

  @$internal
  @override
  FavoritePhotoViewModel create() => FavoritePhotoViewModel();
}

String _$favoritePhotoViewModelHash() =>
    r'5ca278e98fed1bb0aa64ca622d1abb469688d810';

abstract class _$FavoritePhotoViewModel extends $AsyncNotifier<List<Photo>> {
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
