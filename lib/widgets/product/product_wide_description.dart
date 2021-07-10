import 'package:flutter/material.dart';

class ProductWideDescription extends StatefulWidget {
  const ProductWideDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  _ProductWideDescriptionState createState() => _ProductWideDescriptionState();
}

class _ProductWideDescriptionState extends State<ProductWideDescription> {
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
            'Описание',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xFF313030),
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.description,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF313030),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
