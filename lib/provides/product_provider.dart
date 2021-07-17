import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/config/network.dart' as network;

Future<List<Product>> fetchProducts(http.Client client) async {
  Uri url = Uri.http(network.API_URL, network.PRODUCTS_LIST_PATH);
  try {
    
    print(3);
    final response = await client.get(url).timeout(Duration(seconds: 5));
    print(4);
    return parseProducts(utf8.decode(response.bodyBytes));
  } on TimeoutException catch (error) {
    throw ('TimeoutException: $error');
  } on SocketException catch (error) {
    throw ('SocketException: $error');
  } catch (error) {
    throw ('Exception: $error');
  }
}

List<Product> parseProducts(String responseBody) =>
    jsonDecode(responseBody)['products']
        .map<Product>((json) => Product.fromJson(json))
        .toList();
