// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.size,
    required this.onTap,
    required this.height,
    required this.width,
    required this.color,
    required this.textColor,
    required this.borderRadius,
    required this.fontWeight,
    required this.fontSize,
    required this.fontFamily,
    required this.text,
  }) : super(key: key);

  final Size size;

  final VoidCallback onTap;
  final double height;
  final double width;
  final Color color;
  final Color textColor;
  final BorderRadius borderRadius;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: size.width * width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                fontFamily: fontFamily),
          ),
        ),
      ),
    );
  }
}
