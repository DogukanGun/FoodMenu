import 'package:flutter/material.dart';
import 'package:food_menu/ui/food_list/food_list.dart';
import 'package:food_menu/ui/homepage/home_page.dart';
import 'package:food_menu/ui/shop/shopping_bag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/Home':(BuildContext context) => const HomePage(),
        '/Shop':(BuildContext context) => const ShoppingBag(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}