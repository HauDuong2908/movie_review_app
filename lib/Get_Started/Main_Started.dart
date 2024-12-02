// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/CustomButton.dart';
import '../widgets/widgets.dart';
import '../Models/Constants.dart';

// ignore: must_be_immutable
class Started extends StatelessWidget {
  Started({super.key});
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Background(
              image: AssetImage('assets/Header.png'),
              heightImage: 0.6,
              heightContainer: 0.4,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.52,
                ),
                Center(
                  child: Image.asset(
                    'assets/Logo.png',
                    width: size.width * 0.3,
                  ),
                ),
                const SizedBox(height: 45),
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
                const SizedBox(height: 45),
                CustomButton(
                  onTap: () => context.go('/login'),
                  text: 'Get Started',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
