import 'package:untitled1/data/models/product.dart';

class CartItem {
  final Product product;
  int quantity;
  int price;
  bool isSelected;

  CartItem({
    required this.product,
    this.quantity = 1,
    required this.price,
    this.isSelected = false,
  });

  CartItem copyWith({
    Product? product,
    int? quantity,
    int? price,
    bool? isSelected,
  }) {
    return CartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price ,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product.toJson(),
      'quantity': quantity,
      'price': price,
      'isSelected': isSelected,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] ?? json['quantity'] ?? 1) as int,
      price: (json['price'] ?? ['price']) as int,
      isSelected: json['isSelected'] as bool? ?? false,
    );
  }
}
