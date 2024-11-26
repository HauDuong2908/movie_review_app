import 'package:flutter/material.dart';
import 'package:movie_review_app/Models/Constants.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              color: constants.black.withOpacity(1),
              child: Positioned.fill(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Banner.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.39,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/Logo.png',
                        height: 80,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: constants.white.withOpacity(0.8),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        'Please sign in to continue.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: constants.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'User Name',
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: const TextStyle(color: Colors.grey)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                hintText: 'Password',
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: const TextStyle(color: Colors.grey)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
