import 'package:flutter/material.dart';
import 'package:untitled1/Data/models/Product.dart';
import 'package:untitled1/UI/Screens/ProductDetailPage.dart';

class ButtonLike extends StatefulWidget {
  const ButtonLike({super.key});

  @override
  State<ButtonLike> createState() => _ButtonLikeState();
}

class _ButtonLikeState extends State<ButtonLike> {
  int x = 0;
  void ChangeLike(){
    setState(() {
      x = x == 0 ? 1 : x == 1 ? 2 : 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: ChangeLike,
        icon: Icon(x == 2?Icons.start: Icons.star), color: x==0?Colors.grey:Colors.yellow);
  }
}


class ProductWidget1 extends StatelessWidget {
  final Product product;
  const ProductWidget1({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: Column(
        // Sắp xếp giao diện theo chiều dọc
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
                // Button
                IconButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Productdetailpage(product: product,) )));
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),

          // Ảnh của sản phẩm
          Expanded(
            flex: 1,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Căn chỉnh nút Like sang phía trên góc phải
                    Align(
                      alignment: Alignment.topRight,
                      child: const ButtonLike(),
                    ), // Thêm dấu phẩy bị thiếu ở đây

                    const Text("Name: Hoa Tam Giac mach"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Price: "),
                        Text(
                          'Old: ${product.price}',
                          style: const TextStyle(color: Colors.cyan),
                        ),
                        // Thực hiện phép tính nhân thay vì in chuỗi
                        Text(
                          'Sale: ${(product.price * 0.9).toStringAsFixed(0)}',
                          style: const TextStyle(color: Colors.deepOrange),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 3,
                      child: const SingleChildScrollView(
                        child: Text(
                          "description: Nguon Goc Ha Giang, oaqbhfiuegwohf jgpwrpfnovih rwfèejhoigjijcknek ;jprjjjvoejwoehp ifjejpj[j[gj[wjip vihrhuhcnenhoihnthipnpijwhipbjjp ",
                          textAlign: TextAlign.justify,
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