import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/widgets/product/product.dart';
import 'package:cucumber_mobile/widgets/bars/bars.dart';
import 'package:cucumber_mobile/config/icons.dart' as icons;

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final String productImage = 'assets/images/milk.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            child: ListView(
              children: <Widget>[
                _productImage(productImage),
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
            ),
          ),
          Positioned(
            top: 0,
            child: MainTopBar(),
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 0,
            child: BottomBarCustom(),
            width: MediaQuery.of(context).size.width,
          ),
        ]),
      ),
    );
  }

  Widget _productImage(image) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Image.asset(
        image,
        height: 300,
      ),
    );
  }
}
