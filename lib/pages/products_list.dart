import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list.dart';
import 'package:cucumber_mobile/provides/product_provider.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;

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
          ? _emptyGridViewBuilder()
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

  Widget _emptyGridViewBuilder() {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) {
        return _emptyElemBuilder();
      }),
    );
  }

  Widget _emptyElemBuilder() {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * 0.30,
            width: MediaQuery.of(context).size.width * 0.30,
            decoration: BoxDecoration(
              color: palette.Blue.PRIMARY_ICON,
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            bottom: -10,
            child: Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: palette.Black.PRIMARY,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            child: Container(
              decoration: BoxDecoration(
                color: palette.Black.PRIMARY,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
