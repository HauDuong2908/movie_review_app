import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import '../../widgets/widgets.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
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
              'Lists',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
