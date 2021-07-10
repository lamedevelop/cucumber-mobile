import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductSocial extends StatefulWidget {
  const ProductSocial({Key? key}) : super(key: key);

  @override
  _ProductSocialState createState() => _ProductSocialState();
}

class _ProductSocialState extends State<ProductSocial> {
  final String cart = 'assets/icons/cart.svg';
  final String heart = 'assets/icons/heart.svg';
  final String addList = 'assets/icons/add_list.svg';
  final String message = 'assets/icons/message.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20),
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
                color: Color(0xFF62C5A4),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  cart,
                  height: 50,
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x28D9335A),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  heart,
                  height: 50,
                ),
                tooltip: 'Increase volume by 10',
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x2862C5A4),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  addList,
                  height: 50,
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x2862C5A4),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  message,
                  height: 50,
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ));
  }
}
