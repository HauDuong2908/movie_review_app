import 'package:flutter/material.dart';
// import '../../Nav_bar/navBar.dart';
import '../../../Models/Models.dart';

import '../main_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Scaffold(
      backgroundColor: constants.black1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Tilte_Home(),
              Text(
                'Popular Films This Month',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              const PopularFilms(),
              Text(
                'Popular Films This Month',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              const Lists(),
              Text(
                'Recent Friends Is Review',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              const FriendsReview()
            ],
          ),
        ),
      ),
      extendBody: true,
      // bottomNavigationBar: const Navbar(),
    );
  }
}
