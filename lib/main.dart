import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivial_rush/screens/login_page/provider/login_page_provider.dart';
import 'package:trivial_rush/screens/login_page/login_page_screen.dart';
import 'package:trivial_rush/screens/on_boarding/provider/page_view_controller.dart';
import 'package:trivial_rush/screens/play_game/providers/countdown_provider.dart';
import 'package:trivial_rush/screens/play_game/providers/quiz_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<LoginPageCheckBoxProvider>(
          create: (_) => LoginPageCheckBoxProvider(),
        ),
        ListenableProvider<PageControllerProvider>(
          create: (_) => PageControllerProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => QuizProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CountdownProvider(),
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
