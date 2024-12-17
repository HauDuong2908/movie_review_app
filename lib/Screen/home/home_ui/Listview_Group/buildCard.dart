// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';

class Buildcard extends StatelessWidget {
  const Buildcard({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.likes,
    required this.comments,
  });

  final String title;
  final String author;
  final List<String> imagePath;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    List<String> imagesToShow = imagePath.take(4).toList();
    return Container(
      decoration: BoxDecoration(
        color: constants.black.withOpacity(1),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 82,
            child: Stack(
              children: [
                for (int i = imagesToShow.length - 1; i >= 0; i--)
                  Positioned(
                    left: i * 10.0,
                    child: SizedBox(
                      width: 58.0,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            imagesToShow[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.0,
              color: constants.pink,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: constants.white,
                radius: 10.0,
                child: Text(
                  author[0],
                  style: TextStyle(color: constants.pink),
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                author,
                style: TextStyle(color: constants.pink, fontSize: 6),
              ),
              SizedBox(width: 2),
              const Icon(Icons.favorite, color: Colors.red, size: 6),
              SizedBox(width: 2),
              Text(
                likes.toString(),
                style: TextStyle(color: constants.white, fontSize: 4),
              ),
              SizedBox(width: 2),
              const Icon(Icons.comment, color: Colors.grey, size: 4),
              SizedBox(width: 1),
              Text(
                comments.toString(),
                style: TextStyle(color: constants.white, fontSize: 4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
