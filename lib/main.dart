import 'package:flutter/material.dart';

import 'package:cucumber_mobile/pages/products_list.dart';
import 'package:cucumber_mobile/pages/product.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "cucumber-mobile",
      theme: ThemeData(
        primaryColor: palette.Black.PRIMARY,
        scaffoldBackgroundColor: palette.Black.PRIMARY,
        fontFamily: 'GothamPro',
      ),
      home: ProductsList(),
    );
  }
}
