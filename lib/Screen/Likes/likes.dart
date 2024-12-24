import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import '../../widgets/widgets.dart';

class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: DrawerMenu(),
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
              'Likes',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
