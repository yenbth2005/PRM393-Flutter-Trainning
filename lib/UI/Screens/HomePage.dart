import 'package:flutter/material.dart';
import 'package:untitled1/UI/Widgets/BodyWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       leading: const  Icon(Icons.menu),
       title:  Text("Home Page"),
       actions: [IconButton(onPressed:(){}, icon: Icon(Icons.search))],
     ),
     body: BodyWidget(),
   );
  }

}