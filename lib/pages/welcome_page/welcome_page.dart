import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/theme/theme.dart';
import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  final themes = Get.find<Themes>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 152),
          child: Text(
            'Доброе утро,\nНиколай!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: context.theme.primaryColor,
              height: 1.33,
              fontSize: 27,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}
