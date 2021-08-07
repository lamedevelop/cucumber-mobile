import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sms_auth_controller.dart';

class SmsAuthPage extends GetView<SmsAuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 124, left: 55, right: 55),
        child: Column(
          children: [
            Text(
              '<cucmber-flex-party-nazi-krinj>',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.primaryColor,
                height: 1.33,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: context.height * 0.095),
            Text(
              'Введите код подтверждения из СМС.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.primaryColor,
                height: 1.33,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
