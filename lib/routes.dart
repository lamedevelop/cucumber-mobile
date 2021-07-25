import 'package:cucumber_mobile/pages/categories.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/pages/pages.dart';
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';

class AppPages {
  static var routes = [
    GetPage(
      name: '/',
      page: () => CustomScaffold(),
      binding: CustomScaffoldBinding(),
    ),
    GetPage(
      name: route_name.HOME,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: route_name.PRODUCTS_LIST,
      page: () => ProductsList(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: route_name.PRODUCT,
      page: () => Product(),
      transition: Transition.fade,
    ),
    GetPage(
      name: route_name.CATEGORIES,
      page: () => Categories(),
      transition: Transition.fade,
    ),
  ];
}
