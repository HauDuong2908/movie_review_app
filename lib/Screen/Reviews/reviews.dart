import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import '../../widgets/widgets.dart';
import '../drawer/slideMenu.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Scaffold(
      drawer: SlideMenu(),
      appBar: AppBar(
        title: Text('Home'),
        leading: IconDrawer(),
        backgroundColor: constants.black.withOpacity(1),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reviews',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
