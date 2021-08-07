import 'package:cucumber_mobile/pages/sms_auth_page/sms_auth_view.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/pages/pages.dart';
import 'package:cucumber_mobile/router/routes_names.dart' as routes_names;

class AppPages {
  static var routes = [
    GetPage(
      name: routes_names.WELCOME,
      page: () => WelcomePage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: routes_names.PHONE,
      page: () => PhonePage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: routes_names.SMS,
      page: () => SmsAuthPage(),
      transition: Transition.fade,
    ),
  ];
}
