import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:cucumber_mobile/config/icons.dart' as icons;

class ProductSocial extends StatefulWidget {
  @override
  _ProductSocialState createState() => _ProductSocialState();
}

class _ProductSocialState extends State<ProductSocial> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.Green.PRIMARY_SOCIAL,
              ),
              child: IconButton(
                icon: SocialCard(icon: icons.CART),
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.Red.PRIMARY_SOCIAL,
              ),
              child: IconButton(
                icon: SocialCard(icon: icons.HEART),
                tooltip: 'Increase volume by 10',
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.Green.PRIMARY_SOCIAL_LIGHT,
              ),
              child: IconButton(
                icon: SocialCard(icon: icons.LIST),
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.Green.PRIMARY_SOCIAL_LIGHT,
              ),
              child: IconButton(
                icon: SocialCard(icon: icons.MESSAGE),
                onPressed: () => {},
              ),
            ),
          ],
        ));
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: 50,
    );
  }
}
