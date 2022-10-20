import 'package:dio/dio.dart';
import 'package:trivial_rush/core/api/end_points.dart';
import '../models/leaderboard_model/leaderboard.dart';

class LeaderboardService {
  final Dio appDioClient;

  LeaderboardService(
    this.appDioClient,
  );

  Future<List<Leaderboard>> getLeaderboardData() async {
    List<Leaderboard> leaderboard = [];

    final result = await appDioClient.get(
      EndPoint.leaderboard,
    );

    if (result.data is List) {
      leaderboard = result.data
          .map<Leaderboard>(
            (e) => Leaderboard.fromJson(e),
          )
          .toList();
    }

    return leaderboard;
  }
}
