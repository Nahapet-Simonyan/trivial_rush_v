import 'package:dio/dio.dart';

import '../../models/leaderboard.dart';

class LeaderboardApi {
  final Dio appDioClient;

  LeaderboardApi(
    this.appDioClient,
  );

  Future<List<LeaderBoard>> getProductsData() async {
    List<LeaderBoard> products = [];

    final result = await appDioClient.get(
      'https://my-json-server.typicode.com/narekpog/my-json/products',
    );

    if (result.data is List) {
      products = result.data.first
          .map<LeaderBoard>(
            (e) => LeaderBoard.fromJson(e),
          )
          .toList();
    }

    return products;
  }
}
