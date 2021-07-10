import 'package:cucumber_mobile/pages/products_list.dart';
import 'package:flutter/material.dart';
import 'package:cucumber_mobile/pages/product.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my_test_app",
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFF313030),
        fontFamily: 'GothamPro',
      ),
      home: ProductsList(),
    );
  }
}
