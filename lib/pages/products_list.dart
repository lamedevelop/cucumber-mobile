import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list.dart';
import 'package:cucumber_mobile/provides/product_provider.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:shimmer/shimmer.dart';

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
    final int _crossAxisCount = MediaQuery.of(context).size.width ~/ 240;
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      crossAxisCount: _crossAxisCount,
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
          Shimmer.fromColors(
            baseColor: palette.Blue.PRIMARY_ICON,
            highlightColor: palette.Blue.PRIMARY_ICON.withOpacity(0.85),
            child: Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                color: palette.Blue.PRIMARY_ICON,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.white.withOpacity(0.85),
              child: Container(
                padding: EdgeInsets.all(8),
                width: 125,
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
