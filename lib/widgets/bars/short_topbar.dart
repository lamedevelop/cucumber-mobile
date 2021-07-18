import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cucumber_mobile/config/icons.dart' as icons;

class ShortTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 45,
          margin: EdgeInsets.only(left: 27, top: 7),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.white38,
                )
              ]),
          child: MaterialButton(
            onPressed: () {},
            elevation: 4,
            child: SvgPicture.asset(
              icons.SHORT_ARROW,
              height: 45,
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
