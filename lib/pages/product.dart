import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/product/product_description.dart';
import 'package:cucumber_mobile/widgets/product/product_social.dart';
import 'package:cucumber_mobile/widgets/product/product_wide_description.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final String productImage = 'assets/images/milk.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Image.asset(productImage,height: 300,),
            SizedBox(height: 8),
            ProductDescription(
              name: 'Молоко домашнее',
              volume: '1 литр',
              price: '178₽/шт',
            ),
            SizedBox(height: 10),
            ProductSocial(),
            SizedBox(height: 10),
            ProductWideDescription(
              description: 'Много много молока',
            ),
          ],
        ),
      ),
    );
  }
}
