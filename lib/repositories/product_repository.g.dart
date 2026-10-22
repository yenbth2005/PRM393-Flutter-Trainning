// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productRepositories)
final productRepositoriesProvider = ProductRepositoriesProvider._();

final class ProductRepositoriesProvider
    extends
        $FunctionalProvider<
          ProductRepositories,
          ProductRepositories,
          ProductRepositories
        >
    with $Provider<ProductRepositories> {
  ProductRepositoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productRepositoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productRepositoriesHash();

  @$internal
  @override
  $ProviderElement<ProductRepositories> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductRepositories create(Ref ref) {
    return productRepositories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductRepositories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductRepositories>(value),
    );
  }
}

String _$productRepositoriesHash() =>
    r'f7e3df42c4683efb0a6972348525d5442462df69';
