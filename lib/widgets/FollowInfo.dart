import 'package:flutter/material.dart';
import 'package:movie_review_app/Models/Models.dart';

class FollowInfo extends StatelessWidget {
  const FollowInfo({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: constants.hexadecimal.withOpacity(1), width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(color: constants.white, fontSize: 12),
      ),
    );
  }
}
