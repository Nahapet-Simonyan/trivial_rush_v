import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/login_page/widgets/form.dart';
import 'package:trivial_rush/widgets/general_button.dart';
import '../on_board_page/on_board_screen.dart';
import 'provider/login_page_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked =
        Provider.of<LoginPageCheckBoxProvider>(context, listen: true).isChecked;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo Image
                    Image.asset(
                      'assets/images/main_logo.png',
                      width: 213,
                      height: 157,
                    ),

                    // Input Form
                    loginPageForm(context, isChecked),

                    // Login Button
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnBoardingScreen(),
                            ),
                            (route) => false);
                      },
                      child: generalButton(
                          width: 154.0,
                          height: 40.0,
                          color: const Color.fromRGBO(204, 0, 1, 1),
                          text: 'Login',
                          fontSize: 20.0),
                    ),

                    // Forgot Password Button
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),

                    // Sign Up Button
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}