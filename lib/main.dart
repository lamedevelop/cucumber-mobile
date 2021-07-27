import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;
import 'package:cucumber_mobile/routes.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'cucumber-mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: palette.Black.PRIMARY,
        scaffoldBackgroundColor: palette.Black.PRIMARY,
        fontFamily: 'GothamPro',
      ),
      getPages: AppPages.routes,
      initialRoute: '/',
    );
  }
}
