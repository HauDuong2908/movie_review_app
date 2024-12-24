// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../Models/Models.dart';

class Friendbuildcard extends StatelessWidget {
  const Friendbuildcard({
    super.key,
    required this.imageProfile,
    required this.nameFilm,
    required this.nameUser,
    required this.comments,
    required this.textReview,
    required this.imageMovies,
  });

  final String imageProfile;
  final String nameFilm;
  final String nameUser;
  final int comments;
  final String textReview;
  final String imageMovies;

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(80)),
          child: Image.asset(
            imageProfile,
            fit: BoxFit.cover,
            width: 28,
            height: 28,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameFilm,
                style: TextStyle(
                    color: constants.white,
                    fontSize: 7,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Review by $nameUser ',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.comment, color: Colors.grey, size: 12.0),
                  const SizedBox(width: 8),
                  Text(
                    comments.toString(),
                    style: TextStyle(color: constants.white, fontSize: 12),
                  ),
                ],
              ),
              ReadMoreText(
                textReview.toString(),
                trimLength: 3,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read More.',
                trimExpandedText: 'Show Less',
                style: TextStyle(color: constants.white),
                moreStyle: const TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
                lessStyle: const TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(width: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            imageMovies,
            fit: BoxFit.cover,
            width: 57,
            height: 93,
          ),
        )
      ],
    );
  }
}
