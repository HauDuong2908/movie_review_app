import 'package:flutter/material.dart';
import '../../../../Models/Models.dart';
import '../../main_home.dart';

// ignore: camel_case_types
class listviewReview extends StatelessWidget {
  const listviewReview({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    final List<Map<String, dynamic>> review = Reviewjson().reviews;
    return Column(
      children: review.map((listview) {
        return Card(
          color: constants.black.withOpacity(0.5),
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BuildcardReview(
              imageProfile: listview['imageProfile'],
              nameFilm: listview['name'],
              nameUser: listview['tagFriends'],
              comments: listview['comments'],
              textReview: listview['textReview'],
              imageMovies: listview['imageMovies'],
            ),
          ),
        );
      }).toList(),
    );
  }
}
