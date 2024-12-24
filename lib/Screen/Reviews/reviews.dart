import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import '../../widgets/widgets.dart';
import '../drawer/slideMenu.dart';
// import '../Nav_bar/navBar.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Scaffold(
      drawer: DrawerMenu(),
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
      extendBody: true,
      // bottomNavigationBar: Navbar(),
    );
  }
}
