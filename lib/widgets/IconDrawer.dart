import 'package:flutter/material.dart';

class IconDrawer extends StatelessWidget {
  const IconDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Icon(
          Icons.sort_sharp,
          color: Colors.white,
        ),
      );
    });
  }
}
