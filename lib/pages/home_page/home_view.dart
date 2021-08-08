import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: _slidingUpPanelBuilder(
        bodyContent: Center(
          child: Text('Вы недавно покупали'),
        ),
      ),
    );
  }

  Widget _slidingUpPanelBuilder({Widget? bodyContent}) {
    return SlidingUpPanel(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
      panel: Column(
        children: [
          Container(
            width: Get.context!.width,
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Container(
                width: 101,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Text(
            'Корзина',
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: bodyContent,
    );
  }
}
