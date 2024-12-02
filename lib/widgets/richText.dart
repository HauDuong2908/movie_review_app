import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class richText extends StatelessWidget {
  const richText({
    Key? key,
    required this.text,
    this.text1,
    required this.tapText,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String? text1;
  final String tapText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(color: Colors.pink[100]),
        children: [
          TextSpan(
            text: tapText,
            style: const TextStyle(
              color: Color.fromARGB(255, 122, 81, 103),
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
          TextSpan(
            text: text1,
            style: TextStyle(color: Colors.pink[100]),
          ),
        ],
      ),
    );
  }
}
