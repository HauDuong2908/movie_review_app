import 'package:flutter/material.dart';
import 'package:movie_review_app/Models/Models.dart';

import '../../widgets/widgets.dart';

// ignore: must_be_immutable
class SlideMenu extends StatelessWidget {
  SlideMenu({super.key});

  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: constants.black.withOpacity(1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(1.0),
                    bottomRight: Radius.circular(1.0)),
                color: constants.black.withOpacity(1),
              ),
              child: const Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/Logo1.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Kyran",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "@Kyran_d",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      FollowInfo(text: "500 Followers"),
                      SizedBox(width: 10),
                      FollowInfo(text: "420 Followings"),
                    ],
                  ),
                ],
              ),
            ),
            MenuItem(
                context: context,
                icon: Icons.home,
                label: "Home",
                route: '/homepage'),
            MenuItem(
                context: context,
                icon: Icons.movie,
                label: "WatchList",
                route: '/watchList'),
            MenuItem(
                context: context,
                icon: Icons.book,
                label: "Diary",
                route: '/diary'),
          ],
        ),
      ),
    );
  }
}
