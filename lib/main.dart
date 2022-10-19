import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/login_page/login_page_provider.dart';
import 'package:trivial_rush/screens/login_page/login_page_screen.dart';
import 'package:trivial_rush/screens/on_boarding_page/page_view_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginPageCheckBoxProvider>(
          create: (context) => LoginPageCheckBoxProvider(),
        ),
        ListenableProvider<PageControllerProvider>(
          create: (context) => PageControllerProvider(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            fontFamily: 'AmericanTypeWriter',
          ),
          title: 'Trivial Rush',
          home:  const LoginPage(),
      ),
    );
  }
}
