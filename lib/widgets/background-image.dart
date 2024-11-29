// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movie_review_app/Models/Constants.dart';

class Background extends StatelessWidget {
  final ImageProvider image;
  final double heightImage;
  final double heightContainer;

  const Background({
    Key? key,
    required this.image,
    required this.heightImage,
    required this.heightContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [constants.black, constants.black],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(constants.black, BlendMode.darken),
              ),
            ),
            width: size.width,
            height: size.height * heightImage,
          ),
          Container(
            width: size.width,
            height: size.height * heightContainer,
            decoration: BoxDecoration(
              color: constants.black.withOpacity(1),
            ),
          ),
        ],
      ),
    );
  }
}
