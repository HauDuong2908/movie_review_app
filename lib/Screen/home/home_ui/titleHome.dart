import 'package:flutter/material.dart';

import '../../../Models/Models.dart';

class Tilte_Home extends StatelessWidget {
  const Tilte_Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 35),
            children: [
              TextSpan(
                text: 'Hello, ',
                style: TextStyle(color: constants.white),
              ),
              TextSpan(
                text: 'Kyran!',
                style: TextStyle(color: constants.pink),
              ),
            ],
          ),
        ),
        Text(
          'Review or track film you are watched...',
          style: TextStyle(fontSize: 13, color: constants.white),
        ),
      ],
    );
  }
}
