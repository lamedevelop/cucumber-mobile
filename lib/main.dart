import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/theme/theme.dart';
import 'package:cucumber_mobile/router/routes.dart';
import 'package:cucumber_mobile/router/routes_names.dart' as routes_names;

void main() {
  Get.put(Themes());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themes = Get.find<Themes>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'cucumber-mobile',
      theme: themes.getLight('white'),
      darkTheme: themes.getDark('black'),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: routes_names.PHONE,
    );
  }
}
