import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'phone_input_controller.dart';

class PhoneInputPage extends GetView<PhoneInputController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268,
      margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 0),
      child: CupertinoTextField(
        placeholder: '+7(123)456-78-90',
        cursorColor: Color(0xFF000000),
        textAlignVertical: TextAlignVertical.bottom,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        keyboardType: TextInputType.phone,
        style: TextStyle(
          fontSize: Get.context!.height * 0.033,
          color: Get.context!.theme.primaryColor,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF000000)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
