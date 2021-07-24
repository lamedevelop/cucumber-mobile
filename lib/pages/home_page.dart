import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/widgets/home_page/home_page.dart';
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;

class HomePageController extends GetxController {
  int tabIndex = 0;

  void changeTabIndex(int index) {
    print(index);
    print(tabIndex);
    tabIndex = index;
    update();
  }
}

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (c, p, s) => FadeThroughTransition(
        animation: p,
        secondaryAnimation: s,
        child: c,
      ),
      child: [
        _welcomeMessageBuilder1(context, controller.changeTabIndex),
        _welcomeMessageBuilder2(context, controller.changeTabIndex),
      ][controller.tabIndex],
    );
  }

  Widget _welcomeMessageBuilder1(context, Function func) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          WelcomeMessage(
              'Привет. У нас етсь доставка, чтобы ей воспользоваться-укажите свой номер телефона.'),
          FloatingActionButton(
            child: Text('Go to 2'),
            onPressed: () {
              print(11);
              func(1);
            },
          )
        ],
      ),
    );
  }

  Widget _welcomeMessageBuilder2(context, Function func) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          WelcomeMessage('хех'),
          FloatingActionButton(
            child: Text('Go to 1'),
            onPressed: () {
              print(22);
              func(0);
            },
          )
        ],
      ),
    );
  }
}
