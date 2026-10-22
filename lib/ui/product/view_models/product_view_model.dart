import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:untitled1/data/models/product.dart';
import 'package:untitled1/repositories/product_repository.dart';
part 'product_view_model.g.dart';

@riverpod
class ProductViewModel extends _$ProductViewModel {
  @override
  Future<List<Product>> build() async {
    final repository = ref.watch(productRepositoriesProvider);
    return repository.getProducts();
  }
}
