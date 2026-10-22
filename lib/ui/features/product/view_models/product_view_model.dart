import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/repositories/product_repository.dart';
import '../../../../domain/models/product.dart';
part 'product_view_model.g.dart';

@riverpod
class ProductViewModel extends _$ProductViewModel {
  @override
  Future<List<Product>> build() async {
    final repository = ref.watch(productRepositoriesProvider);
    return repository.getProducts();
  }
}
