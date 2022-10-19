// // ignore_for_file: prefer_conditional_assignment
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:trivial_rush/api/products/leaderboard_api.dart';
//
// import '../core/api/api_constants.dart';
// import '../core/api/end_points.dart';
//
// class IndigoAPI {
//   static IndigoAPI? _singleton;
//   String endPoint;
//
//   late LeaderboardApi products;
//   Dio appDioClient = Dio();
//
//   factory IndigoAPI() {
//     if (_singleton == null) {
//       _singleton = IndigoAPI._internal();
//     }
//     return _singleton!;
//   }
//   IndigoAPI.getEndPoint({required this.endPoint});
//
//   static const baseUrl = APIConstants.baseUrl;
//   String endaPoint = endPoint;
//
//   final _uri = Uri.parse(
//     baseUrl,
//     endaPoint,
//   );
//
//   IndigoAPI._internal() {
//     // Init subclasses
//     products = LeaderboardApi(appDioClient);
//   }
// }
