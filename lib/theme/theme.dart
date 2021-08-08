import 'package:flutter/material.dart';

class Themes {
  static final _defaultLight = ThemeData.light().copyWith(
    backgroundColor: Color(0xFFFFFFFF),
    primaryColor: Color(0xFF000000),
    errorColor: Color(0xFFFF6767),
    textTheme: ThemeData.light().textTheme.apply(fontFamily: 'GothamPro'),
  );
  static final _light = <String, ThemeData>{
    'white': _defaultLight,
    'green50': _defaultLight.copyWith(
      backgroundColor: Color(0xFF6EDEB9),
      primaryColor: Color(0xFFFFFFFF),
      errorColor: Color(0xFFFF6767),
    ),
    'green100': _defaultLight.copyWith(
      backgroundColor: Color(0xFF62C5A4),
      primaryColor: Color(0xFFFFFFFF),
      errorColor: Color(0xFFFF6767),
    ),
    'green150': _defaultLight.copyWith(
      backgroundColor: Color(0xFF4A997F),
      primaryColor: Color(0xFFFFFFFF),
      errorColor: Color(0xFFFF6767),
    ),
    'green200': _defaultLight.copyWith(
      backgroundColor: Color(0xFF336856),
      primaryColor: Color(0xFFFFFFFF),
      errorColor: Color(0xFFFF6767),
    ),
  };

  static final _defaultBlack = ThemeData.dark().copyWith(
    backgroundColor: Color(0xFF313030),
    primaryColor: Color(0xFFFFFFFF),
    errorColor: Color(0xFFFF6767),
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'GothamPro'),
  );
  static final _dark = <String, ThemeData>{
    'black': _defaultBlack,
  };

  ThemeData getLight(String colorName) {
    return _light[colorName] ?? _defaultLight;
  }

  ThemeData getDark(String colorName) {
    return _dark[colorName] ?? _defaultBlack;
  }
}
