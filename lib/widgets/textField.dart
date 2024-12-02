import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({
    Key? key,
    required this.controller,
    required this.icon,
    required this.hintText,
    required this.obText,
  }) : super(key: key);

  final TextEditingController controller;
  final Widget? icon;
  final String hintText;
  final bool obText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey[800],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      obscureText: obText,
    );
  }
}
