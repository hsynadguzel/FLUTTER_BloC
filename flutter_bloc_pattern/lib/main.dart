import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/screens/cart_screen.dart';
import 'package:flutter_bloc_pattern/screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => ProductListScreen(),
        "/cart": (context) => CartScreen(),
      },
      initialRoute: "/",
    );
  }
}
