import 'package:get/get.dart';

import 'package:cucumber_mobile/pages/pages.dart';
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;

List<GetPage<dynamic>> routes = [
  GetPage(
    name: route_name.HOME,
    page: () => HomePage(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: route_name.PRODUCTS_LIST,
    page: () => ProductsList(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: route_name.PRODUCT,
    page: () => Product(),
    transition: Transition.noTransition,
  ),
];
