import 'package:flutter/material.dart';
import '../../Models/Models.dart';
import '../../widgets/widgets.dart';
import '../drawer/slideMenu.dart';

class Films extends StatelessWidget {
  const Films({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constans = Constants();
    return Scaffold(
      drawer: SlideMenu(),
      appBar: AppBar(
        title: Text('Home'),
        leading: IconDrawer(),
        backgroundColor: constans.black.withOpacity(1),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Films',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
