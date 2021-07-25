import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/bars/bars.dart';
import 'package:cucumber_mobile/config/icons.dart' as icons;
import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;
import 'package:get/get.dart';
import 'package:cucumber_mobile/pages/pages.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomScaffoldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomScaffoldController>(() => CustomScaffoldController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<CategoriesController>(() => CategoriesController());
    Get.lazyPut<ProductsListController>(() => ProductsListController());
    Get.lazyPut<ProductController>(() => ProductController());
  }
}

class CustomScaffoldController extends GetxController {
  int tabIndex = 0;

  final pages = <String>[
    route_name.HOME,
    route_name.CATEGORIES,
    route_name.PRODUCTS_LIST,
    route_name.PRODUCT,
  ];

  void changeTabIndex(int index) {
    tabIndex = index;
    Get.toNamed(pages[index], id: 2);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == route_name.HOME) {
      return GetPageRoute(
        settings: settings,
        page: () => HomePage(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == route_name.CATEGORIES) {
      return GetPageRoute(
        settings: settings,
        page: () => Categories(),
        transition: Transition.fade,
      );
    }

    if (settings.name == route_name.PRODUCTS_LIST) {
      return GetPageRoute(
        settings: settings,
        page: () => ProductsList(),
        transition: Transition.fade,
      );
    }

    if (settings.name == route_name.PRODUCT) {
      return GetPageRoute(
        settings: settings,
        page: () => Product(),
        transition: Transition.fade,
      );
    }

    return null;
  }
}

class CustomScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomScaffoldController>(
      builder: (controller) {
        return Scaffold(
          body: Navigator(
            key: Get.nestedKey(2),
            initialRoute: route_name.HOME,
            onGenerateRoute: controller.onGenerateRoute,
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _circleIconBuilder(icons.HOME, route_name.HOME),
              _circleIconBuilder(icons.WALLET, route_name.CATEGORIES),
              _circleIconBuilder(icons.MESSAGE, route_name.PRODUCTS_LIST),
              _circleIconBuilder(icons.MAN, route_name.PRODUCT),
            ],
          ),
        );
      },
    );
  }

  _circleIconBuilder(String icon, String routeName) {
    return BottomNavigationBarItem(
      label: routeName,
      icon: Container(
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          height: 45,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
