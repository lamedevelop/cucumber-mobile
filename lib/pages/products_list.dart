import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list.dart';
import 'package:cucumber_mobile/provides/product_provider.dart';
import 'package:cucumber_mobile/config/icons.dart' as icons;
import 'package:cucumber_mobile/widgets/bars/bars.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  bool _isWaitForLoading = true;
  List<Product> _products = [];

  Future<void> _checkParseData() async {
    try {
      print(1);
      var data = await fetchProducts(http.Client());
      print(2);
      setState(() {
        _products = data;
        _isWaitForLoading = false;
      });
    } catch (error) {
      print(5);
      setState(() {
        _isWaitForLoading = true;
      });
      Get.snackbar('Error', '$error');
    }
  }

  @override
  void initState() {
    super.initState();
    _checkParseData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isWaitForLoading
          ? _productListBuilder(Center(child: CircularProgressIndicator()))
          : _productListBuilder(_gridViewBuilder(_products)),
    );
  }

  Widget _gridViewBuilder(products) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(products.length, (index) {
        return ProductListElem(
          product: products[index],
        );
      }),
    );
  }

  Widget _productListBuilder(widget) {
    return SafeArea(
      child: Stack(
        children: [
          widget,
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
        ],
      ),
    );
  }
}
