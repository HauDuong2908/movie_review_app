import 'package:flutter/material.dart';
import '../../Models/Models.dart';

class Films extends StatelessWidget {
  const Films({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constans = Constants();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('Home'),
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
