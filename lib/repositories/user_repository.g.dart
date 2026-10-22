// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userReposistories)
final userReposistoriesProvider = UserReposistoriesProvider._();

final class UserReposistoriesProvider
    extends
        $FunctionalProvider<
          UserReposistories,
          UserReposistories,
          UserReposistories
        >
    with $Provider<UserReposistories> {
  UserReposistoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userReposistoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userReposistoriesHash();

  @$internal
  @override
  $ProviderElement<UserReposistories> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserReposistories create(Ref ref) {
    return userReposistories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserReposistories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserReposistories>(value),
    );
  }
}

String _$userReposistoriesHash() => r'ef3e6a102be269c519a8d0d8ea576096ac81e0c2';
