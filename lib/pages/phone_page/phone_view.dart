import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'phone_input_widget/phone_input_view.dart';
import 'phone_controller.dart';

class PhonePage extends GetView<PhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Get.context!.theme.backgroundColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: Get.context!.height * 0.1,
              left: 55,
              right: 55,
            ),
            child: Column(
              children: [
                _appName('<cucmber-flex-party-nazi-krinj>'),
                SizedBox(height: Get.context!.height * 0.1),
                _description('У нас есть доставка, чтобы ею воспользоваться, '
                    'введите номер телефона.'),
                SizedBox(height: Get.context!.height * 0.1),
                PhoneInputPage(),
                SizedBox(height: Get.context!.height * 0.22),
                OutlinedButton(
                  child: Text(
                    'Пропустить',
                    style: TextStyle(
                      color: Get.context!.theme.primaryColor,
                      fontSize: Get.context!.height * 0.025,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.transparent)),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appName(String name) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Get.context!.theme.primaryColor,
        height: 1.33,
        fontSize: Get.context!.height * 0.025,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _description(String description) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Get.context!.theme.primaryColor,
        height: 1.33,
        fontSize: Get.context!.height * 0.033,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
