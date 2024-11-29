import 'package:flutter/material.dart';

class textFieldWidget extends StatelessWidget {
  const textFieldWidget({
    Key? key,
    required this.obscureText,
    required this.controller,
    required this.prefixIcon,
    required this.text,
    required this.filled,
    required this.color,
    required this.border,
    required this.hintText,
  }) : super(key: key);

  final bool obscureText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final String text;
  final bool filled;
  final Color color;
  final OutlineInputBorder? border;
  final TextStyle? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: text,
        filled: filled,
        fillColor: color,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
        hintStyle: hintText,
      ),
      obscureText: obscureText,
    );
  }
}
