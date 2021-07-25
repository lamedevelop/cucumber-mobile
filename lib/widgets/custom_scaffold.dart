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

  final List<Widget> pagesList = [
    HomePage(),
    Categories(),
    ProductsList(),
    Product(),
  ];

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}

class CustomScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomScaffoldController>(
      builder: (controller) {
        return Scaffold(
          body: PageTransitionSwitcher(
            duration: Duration(milliseconds: 500),
            child: controller.pagesList[controller.tabIndex],
            transitionBuilder: (c, p, s) => FadeThroughTransition(
              animation: p,
              secondaryAnimation: s,
              child: c,
            ),
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