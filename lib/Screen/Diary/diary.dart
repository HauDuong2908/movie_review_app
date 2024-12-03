import 'package:flutter/material.dart';
import 'package:movie_review_app/Models/Models.dart';

import '../drawer/slideMenu.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Scaffold(
      drawer: SlideMenu(),
      appBar: AppBar(
        title: const Text(
          'Diary',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: constants.black.withOpacity(1),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Diary',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
