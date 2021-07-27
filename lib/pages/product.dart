import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cucumber_mobile/widgets/product/product.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;

class ProductController extends GetxController {
  final String productImage = 'assets/images/milk.png';
}

class Product extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: palette.Black.PRIMARY,
      ),
      child: _listViewBuilder(),
    );
  }

  Widget _listViewBuilder() {
    return ListView(
      children: <Widget>[
        _productImageBuilder(controller.productImage),
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
