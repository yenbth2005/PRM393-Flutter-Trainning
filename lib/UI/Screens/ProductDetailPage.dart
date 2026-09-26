import 'package:flutter/material.dart';
import 'package:untitled1/Data/models/Product.dart';

class Productdetailpage extends StatelessWidget {
  final Product product;

  const Productdetailpage({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Image.asset(
            "asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg",
            width: 300,
            height: 300,
          ),

          Text("Name: ${product.name}"),
          Text("Price: ${product.price}"),
          Text("Quantity: ${product.quatity}"),
        ],
      ),
    );
  }
}