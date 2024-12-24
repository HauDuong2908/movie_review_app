import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import '../../widgets/widgets.dart';
import '../drawer/slideMenu.dart';
// import '../Nav_bar/navBar.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return MaterialApp(
      home: Scaffold(
        // drawer: DrawerMenu(),
        appBar: AppBar(
          leading: IconDrawer(),
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
        extendBody: true,
        // bottomNavigationBar: Navbar(),
      ),
    );
  }
}
