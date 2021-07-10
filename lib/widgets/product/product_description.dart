import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.name,
    required this.volume,
    required this.price,
  }) : super(key: key);

  final String name;
  final String volume;
  final String price;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Color(0xFF313030),
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.volume,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color(0xFFC4C4C4),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF323030),
            ),
            child: Text(
              widget.price,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Bebas Neue',
                height: 1,
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
