import 'package:flutter/material.dart';

class Size_box extends StatelessWidget {
  const Size_box({
    super.key,
    required this.size,
    required this.heightSize,
  });

  final Size size;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size.height * heightSize);
  }
}
