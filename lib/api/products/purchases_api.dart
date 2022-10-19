import 'package:dio/dio.dart';

import '../../models/leaderboard.dart';
import '../../models/purchases.dart';

class PurchasesApi {
  final Dio appDioClient;

  PurchasesApi(
      this.appDioClient,
      );

  Future<List<Purchases>> getProductsData() async {
    List<Purchases> purchases = [];

    final result = await appDioClient.get(
      'https://my-json-server.typicode.com/narekpog/my-json/products',
    );

    if (result.data is List) {
      purchases = result.data.first
          .map<LeaderBoard>(
            (e) => Purchases.fromJson(e),
      )
          .toList();
    }

    return purchases;
  }
}
