import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/config/network.dart' as network;

class ProductProvider {
  static final ProductProvider _instance = ProductProvider._internal();

  ProductProvider._internal();

  factory ProductProvider() {
    return _instance;
  }

  Future<List<Product>> getProducts() async {
    var products = <Product>[];

    Uri url = Uri.http(network.API_URL, network.PRODUCTS_LIST_PATH);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var productsJson = json.decode(utf8.decode(response.bodyBytes));
      for (var productJson in productsJson['products']) {
        products.add(Product.fromJson(productJson));
      }
    }

    return products;
  }
}
