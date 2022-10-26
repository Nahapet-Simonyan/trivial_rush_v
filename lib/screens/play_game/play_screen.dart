import 'package:flutter/material.dart';
import 'package:trivial_rush/core/models/quiz_model/quiz.dart';
import 'package:trivial_rush/screens/play_game/screens/countdown_screen.dart';
import '../../core/trivial_rush_client.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);

  late Future<List<Quiz>> futureQuiz;

  @override
  Widget build(BuildContext context) {
    futureQuiz = TrivialRushAPI().quizService.getQuizData();
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Quiz>>(
          future: futureQuiz,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,

                // Start Game

                child: gameStartCountDown(context, snapshot),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromRGBO(255, 102, 0, 1),
              child: const Center(
                child: Text(
                  'Get Ready',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 48,
                    fontFamily: 'AmericanTypeWriter',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
