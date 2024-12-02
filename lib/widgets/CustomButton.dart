// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../Models/Models.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width * 0.4,
        decoration: BoxDecoration(
          color: constants.pink.withOpacity(1),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.bold,
              fontFamily: 'Open Sans',
            ),
          ),
        ),
      ),
    );
  }
}
