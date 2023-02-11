import 'package:flutter/material.dart';
import 'package:food_app/ItemPage.dart';

import 'CartPage.dart';
import 'HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Food app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),

      routes: {
        "/" :(context) => HomePage(),
        "cartpage" :(context) => CartPage(),
        "itempage" :(context) => Itempage(),

      },
    );
  }
}
