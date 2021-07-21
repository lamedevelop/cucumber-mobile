import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:cucumber_mobile/config/icons.dart' as icons;
import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:cucumber_mobile/config/routes_names.dart' as route_name;

class BottomBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(32, 0, 32, 25),
      padding: EdgeInsets.symmetric(horizontal: 33.5, vertical: 9),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Color(0x4BFFFFFF),
              offset: Offset(0, 15),
              blurRadius: 15,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _circleIconBuilder(icons.HOME, route_name.HOME),
          _circleIconBuilder(icons.WALLET, route_name.PRODUCT),
          _circleIconBuilder(icons.MESSAGE, route_name.PRODUCTS_LIST),
          _circleIconBuilder(icons.MAN, route_name.CATEGORIES),
        ],
      ),
    );
  }

  Widget _circleIconBuilder(String icon, String routeName) {
    return Container(
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: MaterialButton(
        onPressed: () {
          Get.toNamed(routeName);
        },
        elevation: 4,
        color:
            Get.currentRoute == routeName ? palette.Black.PRIMARY_LIGHT : null,
        child: SvgPicture.asset(
          icon,
          height: 45,
          fit: BoxFit.scaleDown,
        ),
        padding: EdgeInsets.all(0),
        shape: CircleBorder(),
      ),
    );
  }
}
