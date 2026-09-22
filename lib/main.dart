import 'package:flutter/material.dart';
import 'package:untitled1/UI/Screens/HomePage.dart';
import 'package:untitled1/UI/Screens/home_screen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
          themeMode: ThemeMode.dark,
          // cai ni tat debug mode
          debugShowCheckedModeBanner: false,
    );
  }
}


// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(child: Text("Hello World!"))
//       ),
//     );
//   }
// }
