import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list.dart';
import 'package:cucumber_mobile/provides/product_provider.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  bool _isWaitForLoading = true;
  List<Product> _products = [];

  Future<void> _checkParseData() async {
    try {
      var data = await fetchProducts(http.Client());
      setState(() {
        _products = data;
        _isWaitForLoading = false;
      });
    } catch (error) {
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
    return CustomScaffold(
      body: _isWaitForLoading
          ? Center(child: CircularProgressIndicator())
          : _gridViewBuilder(_products),
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
}
