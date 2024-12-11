// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';

class BuildcardReview extends StatelessWidget {
  const BuildcardReview({
    Key? key,
    required this.imageProfile,
    required this.nameFilm,
    required this.nameUser,
    required this.comments,
    required this.textReview,
    required this.imageMovies,
  }) : super(key: key);

  final String imageProfile;
  final String nameFilm;
  final String nameUser;
  final int comments;
  final String textReview;
  final String imageMovies;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(80)),
            child: Image.asset(
              imageProfile,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(width: size.width * 0.04),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameFilm,
                style: TextStyle(
                    color: constants.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Review by $nameUser '),
                  SizedBox(width: size.width * 0.02),
                  const Icon(Icons.comment, color: Colors.grey, size: 12.0),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    comments.toString(),
                    style: TextStyle(color: constants.white, fontSize: 12),
                  ),
                ],
              ),
              Text(
                textReview,
                textScaleFactor: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}
