import 'package:dio/dio.dart';
import 'package:trivial_rush/core/api/end_points.dart';
import '../models/purchases_model/purchases.dart';

class PurchasesService {
  final Dio appDioClient;

  PurchasesService(
    this.appDioClient,
  );

  Future<List<Purchases>> getPurchasesData() async {
    List<Purchases> purchases = [];

    final result = await appDioClient.get(
      EndPoint.purchases,
    );

    if (result.data is List) {
      purchases = result.data.first
          .map<Purchases>(
            (e) => Purchases.fromJson(e),
          )
          .toList();
    }

    return purchases;
  }
}
