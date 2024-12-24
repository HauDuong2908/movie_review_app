import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Models/Models.dart';
import 'package:movie_review_app/Router/Router.dart';

import '../drawer/folderDrawe.dart';

// ignore: must_be_immutable
class DrawerMenu extends StatelessWidget {
  DrawerMenu({super.key});

  Constants constants = Constants();
  final padding = const EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: constants.black1,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            Builmenuitem(
              text: 'Home',
              icon: Icons.home_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const Builmenuitem(
              text: 'Films',
              icon: Icons.local_movies,
            ),
            const Builmenuitem(
              text: 'Diary',
              icon: Icons.newspaper_sharp,
            ),
            const Builmenuitem(
              text: 'Reviews',
              icon: Icons.auto_stories,
            ),
            const Builmenuitem(
              text: 'WatchList',
              icon: Icons.playlist_add,
            ),
            const Builmenuitem(
              text: 'Lists',
              icon: Icons.list,
            ),
            const Builmenuitem(
              text: 'Likes',
              icon: Icons.favorite_border,
            ),
          ],
        ),
      ),
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.push(RouterWidget.filmpage);
        break;
    }
  }
}
