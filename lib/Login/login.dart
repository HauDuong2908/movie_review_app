// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Provider/providerWithLoginAndRegister.dart';
import 'package:provider/provider.dart';

import '../Models/Models.dart';
import '../Provider/Providers.dart';
import '../widgets/widgets.dart';

// ignore: must_be_immutable
class LoginUi extends StatelessWidget {
  LoginUi({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final Providerwithloginandregister loginprovider =
      Providerwithloginandregister();

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
                  Size_box(size: size, heightSize: 0.38),
                  Center(
                    child: Image.asset(
                      'assets/Logo.png',
                      width: size.width * 0.4,
                    ),
                  ),
                  Size_box(size: size, heightSize: 0.02),
                  title_box(
                    size: size,
                    constants: constants,
                    textTitle: 'Login',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: constants.white.withOpacity(0.8),
                    widthSize: 0.7,
                  ),
                  title_box(
                    size: size,
                    constants: constants,
                    textTitle: 'Please sign in to continue.',
                    fontSize: 13,
                    fontWeight: null,
                    color: constants.white.withOpacity(0.8),
                    widthSize: 0.7,
                  ),
                  Size_box(size: size, heightSize: 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        textFieldWidget(
                          controller: _emailController,
                          prefixIcon: const Icon(Icons.person_2),
                          text: 'User Name',
                          filled: true,
                          color: (Colors.grey[800])!,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          hintText: const TextStyle(color: Colors.grey),
                          obscureText: false,
                        ),
                        Size_box(size: size, heightSize: 0.03),
                        textFieldWidget(
                          controller: _passwordController,
                          prefixIcon: const Icon(Icons.lock),
                          text: 'Password',
                          filled: true,
                          color: (Colors.grey[800])!,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          hintText: const TextStyle(color: Colors.grey),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Size_box(size: size, heightSize: 0.01),
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
                  Size_box(size: size, heightSize: 0.01),
                  Consumer<Providerwithloginandregister>(
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
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        fontFamily: 'Open Sans',
                        textColor: Colors.black,
                      );
                    },
                  ),
                  Size_box(size: size, heightSize: 0.02),
                  GestureDetector(
                    // onTap: () => print('Sign Up tapped!'),
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.pink[100]),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 122, 81, 103),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.go('/signup');
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
