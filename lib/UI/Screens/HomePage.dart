import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       leading: const  Icon(Icons.menu),
       title:  Text("Home Page"),
       actions: [IconButton(onPressed:(){}, icon: Icon(Icons.search))],
     ),
     body: Center(
       child: Container(
         padding: const EdgeInsets.all(20),
         child: Column(
           children: [
             Image.asset(
               'asserts/images/z7595284241599_433ab23f4b4c451114c61000b3741ef1.jpg',
               width: 500,
               height: 500,
             ),
              Text('Name: Hoa Tam Giac Mach'),
              Text('Author: Hoang Yen'),
              Text('Description: Toi chup ma sao khong dep duoc'),
           ],
         ),
       ),
     ),
   );
  }

}