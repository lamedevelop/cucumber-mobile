import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/product/product.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final String productImage = 'assets/images/milk.png';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _listViewBuilder(),
    );
  }

  Widget _listViewBuilder() {
    return ListView(
      children: <Widget>[
        _productImageBuilder(productImage),
        ProductDescription(
          name: 'Молоко домашнее',
          volume: '1 литр',
          price: '178₽/шт',
        ),
        ProductSocial(),
        ProductWideDescription('Много много молока'),
        ProductWideDescription('Много много молока'),
        ProductWideDescription('Много много молока'),
        ProductWideDescription('Много много молока'),
        ProductWideDescription('Много много молока'),
        ProductWideDescription('Много много молока'),
        SizedBox(height: 100),
      ],
    );
  }

  Widget _productImageBuilder(image) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Image.asset(
        image,
        height: 300,
      ),
    );
  }
}
