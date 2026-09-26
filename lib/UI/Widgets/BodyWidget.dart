import 'package:flutter/cupertino.dart';
import 'package:untitled1/UI/Widgets/ProductWidget1.dart';
import 'package:untitled1/Data/models/Product.dart';


class BodyWidget extends StatelessWidget {
  final List<Product> products =[
    Product(id: "01", name: "Hoa Tam Giac Mach", quatity: 0, price: 10.00 ,image: "asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg", description: "no"),
    Product(id: "02", name: "Hoa Tam Giac Mach", quatity: 0, price: 10.00 ,image: "asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg", description: "no"),
    Product(id: "03", name: "Hoa Tam Giac Mach", quatity: 0, price: 10.00 ,image: "asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg", description: "no"),

  ];
  BodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < products.length; i++)
          ProductWidget1(product: products[i]),
      ],
    );
  }
}