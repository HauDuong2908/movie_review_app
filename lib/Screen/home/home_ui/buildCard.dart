// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
  final String imagePath;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: const EdgeInsets.only(bottom: 16.0),
      // padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140.0,
            child: Stack(
              children: [
                for (int i = 3; i >= 0; i--)
                  Positioned(
                    left: i * 20.0,
                    child: SizedBox(
                      width: 100.0,
                      height: 140.0,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 18.0,
                child: Text(
                  author[0],
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  author,
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red, size: 16.0),
                  const SizedBox(width: 2.0),
                  Text(
                    likes.toString(),
                    style: const TextStyle(color: Colors.black87, fontSize: 10),
                  ),
                  SizedBox(width: size.width * 0.1),
                  const Icon(Icons.comment, color: Colors.grey, size: 16.0),
                  const SizedBox(width: 2.0),
                  Text(
                    comments.toString(),
                    style: const TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
