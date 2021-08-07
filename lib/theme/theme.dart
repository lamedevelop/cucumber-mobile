import 'package:flutter/material.dart';

class Themes {
  static final _defaultLight = ThemeData.light().copyWith(
    backgroundColor: Color(0xFFFFFFFF),
    primaryColor: Color(0xFF000000),
    textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
  );
  static final light = <String, ThemeData>{
    'white': _defaultLight,
    'green50': ThemeData.light().copyWith(
      backgroundColor: Color(0xFF6EDEB9),
      primaryColor: Color(0xFFFFFFFF),
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
    ),
    'green100': ThemeData.light().copyWith(
      backgroundColor: Color(0xFF62C5A4),
      primaryColor: Color(0xFFFFFFFF),
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
    ),
    'green150': ThemeData.light().copyWith(
      backgroundColor: Color(0xFF4A997F),
      primaryColor: Color(0xFFFFFFFF),
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
    ),
    'green200': ThemeData.light().copyWith(
      backgroundColor: Color(0xFF336856),
      primaryColor: Color(0xFFFFFFFF),
      textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
    ),
  };

  static final _defaultBlack = ThemeData.dark().copyWith(
    backgroundColor: Color(0xFF313030),
    primaryColor: Color(0xFFFFFFFF),
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'GothamPro'),
  );
  static final dark = <String, ThemeData>{
    'black': _defaultBlack,
  };

  ThemeData getLight(String colorName) {
    return light[colorName] ?? _defaultLight;
  }

  ThemeData getDark(String colorName) {
    return dark[colorName] ?? _defaultBlack;
  }
}
