import 'package:dio/dio.dart';
import 'package:trivial_rush/core/api/end_points.dart';
import '../models/quiz_model/quiz.dart';

class QuizService {
  final Dio appDioClient;

  QuizService(
    this.appDioClient,
  );

  Future<List<Quiz>> getQuizData() async {
    List<Quiz> result = List.empty(growable: true);
    final response = await appDioClient.get(
      EndPoint.quiz,
    );

    if (response.statusCode == 200) {
      var body = response.data['questions'];
      if (response.data.isNotEmpty) {
        for (var element in body) {
          result.add(Quiz.fromJson(element));
        }
      }
      return result;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
