// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../Models/Models.dart';

class title_box extends StatelessWidget {
  const title_box({
    super.key,
    required this.widthSize,
    required this.textTitle,
    required this.size,
    required this.constants,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  final double widthSize;
  final String textTitle;
  final Size size;
  final Constants constants;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * widthSize,
      child: Text(
        textTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          color: constants.white.withOpacity(0.8),
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
