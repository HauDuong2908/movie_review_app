// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../Models/Models.dart';

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
    Size size = MediaQuery.of(context).size;
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
            height: 160.0,
            child: Stack(
              children: [
                for (int i = imagesToShow.length - 1; i >= 0; i--)
                  Positioned(
                    left: i * 20.0,
                    child: SizedBox(
                      width: 115.0,
                      height: 160.0,
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
          // const SizedBox(height: 16.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: constants.pink,
            ),
          ),
          // const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 14.0,
                child: Text(
                  author[0],
                  style: TextStyle(color: constants.pink),
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                author,
                style: TextStyle(color: constants.pink, fontSize: 14),
              ),
              SizedBox(width: size.width * 0.02),
              const Icon(Icons.favorite, color: Colors.red, size: 14.0),
              SizedBox(width: size.width * 0.01),
              Text(
                likes.toString(),
                style: TextStyle(color: constants.white, fontSize: 10),
              ),
              SizedBox(width: size.width * 0.02),
              const Icon(Icons.comment, color: Colors.grey, size: 12.0),
              SizedBox(width: size.width * 0.01),
              Text(
                comments.toString(),
                style: TextStyle(color: constants.white, fontSize: 12),
              ),
              // Row(
              //   children: [
              //     const Icon(Icons.favorite, color: Colors.red, size: 14.0),
              //     // SizedBox(width: size.width * 0.01),
              //     Text(
              //       likes.toString(),
              //       style: const TextStyle(color: Colors.black87, fontSize: 10),
              //     ),
              //     // SizedBox(width: size.width * 0.11),
              //     const Icon(Icons.comment, color: Colors.grey, size: 12.0),
              //     // SizedBox(width: size.width * 0.01),
              //     Text(
              //       comments.toString(),
              //       style: const TextStyle(color: Colors.black87, fontSize: 12),
              //     ),
              //     // SizedBox(width: size.width * 0.05),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
