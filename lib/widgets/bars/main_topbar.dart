import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cucumber_mobile/config/icons.dart' as icons;

class MainTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: SvgPicture.asset(
            icons.MENU,
            fit: BoxFit.fitWidth,
          ),
        ), // Your widgets here
      ],
    );
  }
}
