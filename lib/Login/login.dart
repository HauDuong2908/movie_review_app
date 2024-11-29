// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import 'package:go_router/go_router.dart';
import '../Models/Models.dart';
// import '../Services/Authentications.dart';
import '../widgets/widgets.dart';
import '../Provider/Providers.dart';

// ignore: must_be_immutable
class LoginUi extends StatelessWidget {
  LoginUi({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final Loginprovider loginprovider = Loginprovider();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return Scaffold(
      backgroundColor: constants.black.withOpacity(1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Background(
              image: AssetImage('assets/Banner.png'),
              heightImage: 0.5,
              heightContainer: 0.5,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.39),
                  Center(
                    child: Image.asset(
                      'assets/Logo.png',
                      width: size.width * 0.3,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
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
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'User Name',
                            filled: true,
                            fillColor: Colors.grey[800],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                            filled: true,
                            fillColor: Colors.grey[800],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: const TextStyle(color: Colors.grey),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Consumer<Loginprovider>(
                    builder: (context, provider, child) {
                      return CustomButton(
                        onTap: () {
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          provider.signIn(email, password, context);
                        },
                        text: 'Login',
                        size: size,
                        height: 50,
                        width: 0.4,
                        color: constants.pink.withOpacity(1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontFamily: 'Open Sans',
                        textColor: Colors.black,
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                    onTap: () => print('Sign Up tapped!'),
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.pink[100]),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 122, 81, 103),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Sign Up tapped!');
                              },
                          ),
                          TextSpan(
                            text: ' first.',
                            style: TextStyle(color: Colors.pink[100]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
