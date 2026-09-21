import 'package:flutter/material.dart';
import 'package:untitled1/Data/models/Product.dart';
class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: Column(
        //sắp xếp giao diện theo chiều dọc
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                //button
                IconButton(
                  color: Colors.redAccent,

                    onPressed: (){},icon: Icon(Icons.shopping_cart))
              ],
            ),
          ),

          //Ảnh của sản phẩm
          Expanded(
            flex: 1,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Hoa Tam Giac mach"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Price: "),
                        Text('Old: ${product.price}', style: TextStyle(color: Colors.cyan)),
                        Text('Sale: ${product.price}*0.9', style: TextStyle(color: Colors.deepOrange)),
                      ],
                    ),
                    Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "description: Nguon Goc Ha Giang, oaqbhfiuegwohf jgpwrpfnovih rwfèejhoigjijcknek ;jprjjjvoejwoehp ifjejpj[j[gj[wjip vihrhuhcnenhoihnthipnpijwhipbjjp ",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}