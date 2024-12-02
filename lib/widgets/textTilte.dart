// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../Models/Constants.dart';

class textTilte extends StatelessWidget {
  const textTilte({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          color: constants.white.withOpacity(0.8),
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
