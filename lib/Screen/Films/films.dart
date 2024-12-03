import 'package:flutter/material.dart';

class Films extends StatelessWidget {
  const Films({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Films'),
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
