import 'package:flutter/material.dart';

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list_elem.dart';
import 'package:cucumber_mobile/provides/product_provider.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  final List<Product> _products = <Product>[];

  @override
  Widget build(BuildContext context) {
    ProductProvider().getProducts().then((value) {
      // _products.clear();
      _products.addAll(value);
    });

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(_products.length, (index) {
          return ProductListElem(
            product: _products[index],
          );
        }),
      ),
    );
  }
}
