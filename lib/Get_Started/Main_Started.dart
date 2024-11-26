// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Get_Started/CustomButton.dart';

import 'package:movie_review_app/Models/Constants.dart';

// ignore: must_be_immutable
class Started extends StatelessWidget {
  Started({super.key});
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: constants.black.withOpacity(1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Starteds.png',
                      width: size.width,
                      height: size.height * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: constants.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Logo.png',
                      width: size.width * 0.3,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        "Track films you've watched. Save those you want to see. Tell your friends what's good.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: constants.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    CustomButton(
                      onTap: () => context.go('/login'),
                      text: 'Get Started',
                      size: size,
                      height: 50,
                      width: 0.4,
                      color: constants.pink.withOpacity(1),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontFamily: 'Open Sans',
                      textColor: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
