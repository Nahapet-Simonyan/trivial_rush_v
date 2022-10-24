import 'package:flutter/material.dart';
import 'package:trivial_rush/core/models/quiz_model/quiz.dart';
import 'package:trivial_rush/screens/play_game/widgets/app_bar.dart';
import '../../core/trivial_rush_client.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountDownTimer(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}

class CountDownTimer extends StatelessWidget {
  CountDownTimer({Key? key}) : super(key: key);

  late Future <List<Quiz>> futureQuiz;

  @override
  Widget build(BuildContext context) {
    futureQuiz = TrivialRushAPI().quizService.getQuizData();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            quizAppBar(context),
            FutureBuilder<List<Quiz>>(
              future: futureQuiz,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: Center(
                          child: Text(
                            '${snapshot.data?[0].question_text}',
                          ),
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
