import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

import 'sms_auth_controller.dart';

class SmsAuthPage extends GetView<SmsAuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: context.theme.backgroundColor,
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
                _description('Введите код подтверждения из СМС.'),
                SizedBox(height: Get.context!.height * 0.1),
                _pinCodeTextFieldBuilder(),
                SizedBox(height: Get.context!.height * 0.1),
                _errorMessage('Код подтверждения неверен'),
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

  Widget _pinCodeTextFieldBuilder() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.context!.height * 0.08),
      child: PinCodeTextField(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        length: 4,
        obscureText: false,
        cursorColor: Colors.transparent,
        enableActiveFill: false,
        enablePinAutofill: true,
        appContext: Get.context!,
        animationType: AnimationType.fade,
        animationDuration: Duration(milliseconds: 300),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        textStyle: TextStyle(
          fontSize: Get.context!.height * 0.033,
          color: Get.context!.theme.primaryColor,
        ),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          fieldHeight: Get.context!.height * 0.028,
          fieldWidth: Get.context!.height * 0.023,
          activeColor: Colors.transparent,
          inactiveColor: Get.context!.theme.primaryColor,
          selectedColor: Colors.blue,
        ),
        onCompleted: (value) {
          print(value);
        },
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }

  Widget _errorMessage(String description) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Get.context!.theme.errorColor,
        height: 1.33,
        fontSize: Get.context!.height * 0.025,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
