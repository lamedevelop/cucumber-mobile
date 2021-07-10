import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/widgets/product_list/product_list_elem.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({
    Key? key,
  }) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  final String productImage = 'assets/images/milk.png';

  final List<Product> _products = <Product>[];

  Future<List<Product>> fetchProducts() async {
    var products = <Product>[];

    Uri url = Uri.http('10.0.2.2:8000', '/test');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var productsJson = json.decode(utf8.decode(response.bodyBytes));
      for (var productJson in productsJson['products']) {
        products.add(Product.fromJson(productJson));
      }
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    fetchProducts().then((value) {
      _products.clear();
      _products.addAll(value);
    });

    return Scaffold(
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(_products.length, (index) {
          return ProductListElem(
            product: _products[index],
          );
        }),
      ),
    );
  }
}
