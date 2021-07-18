import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cucumber_mobile/config/icons.dart' as icons;

class MainTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 65,
          margin: EdgeInsets.only(left: 27),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: MaterialButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            elevation: 4,
            child: SvgPicture.asset(
              icons.MENU,
              height: 65,
              fit: BoxFit.scaleDown,
            ),
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
          ),
        ),
        Container(
          width: 65,
          margin: EdgeInsets.only(right: 9),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: MaterialButton(
            onPressed: () {},
            elevation: 4,
            child: SvgPicture.asset(
              icons.LEFT_ARROW,
              height: 65,
              fit: BoxFit.scaleDown,
            ),
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
          ),
        ),
      ],
    );
  }
}
