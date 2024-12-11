import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';
import '../../main_home.dart';

// ignore: camel_case_types
class listviewReview extends StatelessWidget {
  const listviewReview({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return SizedBox(
      height: size.height * 0.8,
      child: ListView.builder(
          itemCount: Reviewjson().reviews.length,
          itemBuilder: (context, index) {
            final Map<String, dynamic> review = Reviewjson().reviews[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: constants.gray),
                    child: BuildcardReview(
                      imageProfile: review['imageProfile'],
                      nameFilm: review['name'],
                      nameUser: review['tagFriends'],
                      comments: review['comments'],
                      textReview: review['textReview'],
                      imageMovies: review['imageMovies'],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
