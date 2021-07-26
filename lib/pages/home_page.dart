import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/widgets/home_page/home_page.dart';
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;
import 'package:cucumber_mobile/config/palette.dart' as palette;

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<welcomeMessageController>(() => welcomeMessageController());
    Get.lazyPut<welcomeMessageController2>(() => welcomeMessageController2());
  }
}

class HomePageController extends GetxController {
  int tabIndex = 0;

  final pages = <String>[
    '${route_name.HOME}/first',
    '${route_name.HOME}/second'
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '${route_name.HOME}/first') {
      return GetPageRoute(
        settings: settings,
        page: () => welcomeMessageBuilder1(changeTabIndex),
        transition: Transition.cupertino,
        binding: HomePageBinding(),
      );
    }

    if (settings.name == '${route_name.HOME}/second') {
      return GetPageRoute(
        settings: settings,
        page: () => welcomeMessageBuilder2(),
        transition: Transition.cupertino,
      );
    }

    return null;
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    Get.toNamed(pages[index], id: 1);
  }
}

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: palette.Black.PRIMARY,
      ),
      child: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '${route_name.HOME}/first',
        onGenerateRoute: controller.onGenerateRoute,
      ),
    );
  }
}

class welcomeMessageController extends GetxController {}

class welcomeMessageBuilder1 extends GetView<welcomeMessageController> {
  Function func;
  welcomeMessageBuilder1(
    this.func, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: palette.Black.PRIMARY,
      ),
      child: Column(
        children: [
          WelcomeMessage('Привет. У нас етсь доставка, чтобы ей' +
              'воспользоваться-укажите свой номер телефона.'),
          FloatingActionButton(
            child: Center(child: Text('Go to 2')),
            onPressed: () {
              func(1);
            },
          )
        ],
      ),
    );
  }
}

class welcomeMessageController2 extends GetxController {}

class welcomeMessageBuilder2 extends GetView<welcomeMessageController2> {
  welcomeMessageBuilder2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: palette.Black.PRIMARY,
      ),
      child: Column(
        children: [
          WelcomeMessage('хех'),
          FloatingActionButton(
            child: Center(child: Text('Go to 1')),
            onPressed: () {
              Get.back(id: 1);
            },
          )
        ],
      ),
    );
  }
}
