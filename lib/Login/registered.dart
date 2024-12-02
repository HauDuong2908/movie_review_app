// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../Models/Models.dart';
import '../Provider/Providers.dart';
import '../widgets/widgets.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController _usernameController = TextEditingController();
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
                  SizedBox(
                    height: size.height * 0.39,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/Logo.png',
                      width: size.width * 0.3,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  const textTilte(
                    text: 'Sign Up',
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                  const textTilte(
                    text: 'Create an account to continue.',
                    fontSize: 13,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        textField(
                          controller: _usernameController,
                          icon: const Icon(Icons.person_2),
                          hintText: 'User Name',
                          obText: false,
                        ),
                        SizedBox(height: size.height * 0.02),
                        textField(
                          controller: _emailController,
                          icon: const Icon(Icons.email),
                          hintText: 'Email',
                          obText: false,
                        ),
                        SizedBox(height: size.height * 0.02),
                        textField(
                            controller: _passwordController,
                            icon: const Icon(Icons.password),
                            hintText: 'Password',
                            obText: true)
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  PopScope(
                    canPop: false,
                    // ignore: deprecated_member_use
                    onPopInvoked: ((didpop) {
                      if (didpop) {
                        return;
                      }
                      context.go('/login');
                    }),
                    child: Consumer<Logprovider>(
                        builder: (context, provider, child) {
                      return CustomButton(
                        onTap: () {
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          String username = _usernameController.text;
                          provider.signUp(username, email, password, context);
                        },
                        text: 'Login',
                      );
                    }),
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                    child: richText(
                      text: 'Already have an account? Go to the ',
                      tapText: 'Login Page.',
                      onTap: () => context.go('/login'),
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
