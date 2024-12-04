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
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
              route: '/homepage',
              selected: 0,
            ),
            MenuItem(
              context: context,
              icon: Icons.local_movies,
              label: "Films",
              route: '/films',
              selected: 1,
            ),
            MenuItem(
              context: context,
              icon: Icons.newspaper_sharp,
              label: "Diary",
              route: '/diary',
              selected: 2,
            ),
            MenuItem(
              context: context,
              icon: Icons.auto_stories,
              label: "Reviews",
              route: '/reviews',
              selected: 1,
            ),
            MenuItem(
              context: context,
              icon: Icons.playlist_add,
              label: "WatchList",
              route: '/watchList',
              selected: 1,
            ),
            MenuItem(
              context: context,
              icon: Icons.list,
              label: "Lists",
              route: '/lists',
              selected: 1,
            ),
            MenuItem(
              context: context,
              icon: Icons.favorite_border,
              label: "Likes",
              route: '/likes',
              selected: 1,
            ),
          ],
        ),
      ),
    );
  }
}
