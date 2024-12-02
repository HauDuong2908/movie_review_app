// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../Models/Models.dart';
import '../Provider/Providers.dart';
import '../widgets/widgets.dart';

// ignore: must_be_immutable
class LoginUi extends StatelessWidget {
  LoginUi({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                  const textTilte(
                    text: 'Login',
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  const textTilte(
                    text: 'Please sign in to continue.',
                    fontSize: 13,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        textField(
                          controller: _emailController,
                          icon: const Icon(Icons.email),
                          hintText: 'Email',
                          obText: false,
                        ),
                        SizedBox(height: size.height * 0.02),
                        textField(
                          controller: _emailController,
                          icon: const Icon(Icons.lock),
                          hintText: 'Password',
                          obText: true,
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
                  SizedBox(height: size.height * 0.01),
                  Consumer<Logprovider>(
                    builder: (context, provider, child) {
                      return CustomButton(
                        onTap: () {
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          provider.signIn(email, password, context);
                        },
                        text: 'Login',
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                      child: richText(
                    text: 'Don’t have an account? Please ',
                    tapText: 'Sign Up ',
                    onTap: () => context.go('/signup'),
                    text1: 'first.',
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
