import 'package:flutter/material.dart';
import 'package:flutter_grocerry/pages/category_page/category_page.dart';
import 'package:flutter_grocerry/pages/home_page/home_page.dart';
import 'package:flutter_grocerry/pages/product_details/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Grocerry",
        home: ProductDetails()); //CategoryPage//HomePage//ProductDetails
  }
}
