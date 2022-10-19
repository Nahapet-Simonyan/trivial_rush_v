import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../on_boarding_page/on_boarding_screen.dart';
import 'login_page_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked =
        Provider.of<LoginPageCheckBoxProvider>(context, listen: false)
            .isChecked;

    return Scaffold(
      body: SingleChildScrollView(
// Logo Image

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
                    Image.asset(
                      'assets/images/main_logo.png',
                      width: 213,
                      height: 157,
                    ),

// Input Form

                    Form(
                      child: Column(
                        children: [
// Email TextField

                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Email*',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                            ),
                          ),

// Password TextField

                          const TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                            ),
                          ),

// Remember Password CheckBox

                          SizedBox(
                            child: CheckboxListTile(
                                title: const Text(
                                  "Remember Password",
                                  style: TextStyle(
                                    fontFamily: 'Sans Serif',
                                    fontSize: 12,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                activeColor: const Color.fromRGBO(204, 0, 1, 1),
                                value: isChecked,
                                onChanged: (value) =>
                                    Provider.of<LoginPageCheckBoxProvider>(
                                            context,
                                            listen: false)
                                        .changeCheck(
                                            isChecked == true ? false : true)),
                          ),
                        ],
                      ),
                    ),

// Login Button

                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnBoardingScreen(),
                            ),
                            (route) => false);
                      },
                      child: Container(
                        width: 154,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(204, 0, 1, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
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

//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }