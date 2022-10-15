import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/login_page_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'AmericanTypeWriter',
        ),
        title: 'Trivial Rush',
        home: const LoginPage(),
    );
  }
}
