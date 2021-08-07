import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'phone_controller.dart';
import 'phone_input_widget/phone_input_view.dart';

class PhonePage extends GetView<PhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 124, left: 55, right: 55),
        child: Column(
          children: [
            _appName('<cucmber-flex-party-nazi-krinj>'),
            SizedBox(height: context.height * 0.095),
            _description('У нас есть доставка, чтобы ею воспользоваться, '
                'введите номер телефона.'),
            SizedBox(height: context.height * 0.095),
            PhoneInputPage(),
            SizedBox(height: context.height * 0.216),
            OutlinedButton(
              child: Text(
                'Пропустить',
                style: TextStyle(
                  color: context.theme.primaryColor,
                  fontSize: 20,
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
    );
  }

  Widget _appName(String name) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Get.context!.theme.primaryColor,
        height: 1.33,
        fontSize: 20,
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
        fontSize: 27,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
