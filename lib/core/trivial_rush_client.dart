// ignore_for_file: prefer_conditional_assignment
import 'package:dio/dio.dart';
import 'package:trivial_rush/core/services/leaderboard_service.dart';
import 'package:trivial_rush/core/services/purchases_service.dart';
import 'package:trivial_rush/core/services/quiz_service.dart';
import 'api/api_constants.dart';
import 'services/leaderboard_service.dart';
import 'services/purchases_service.dart';

class TrivialRushAPI {
  static TrivialRushAPI? _singleton;

  late LeaderboardService leaderboardService;
  late PurchasesService purchasesService;
  late QuizService quizService;

  Dio appDioClient = Dio(
    BaseOptions(baseUrl: APIConstants.baseUrl),
  );

  factory TrivialRushAPI() {
    if (_singleton == null) {
      _singleton = TrivialRushAPI._internal();
    }
    return _singleton!;
  }

  TrivialRushAPI._internal() {
    // Init subclasses
    leaderboardService = LeaderboardService(appDioClient);
    purchasesService = PurchasesService(appDioClient);
    quizService = QuizService(appDioClient);
  }
}
