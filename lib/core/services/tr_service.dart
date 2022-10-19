// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'package:trivial_rush/services/purchases_service.dart';
// import '../../services/leaderboard_service.dart';
// import '../api/api_constants.dart';
// import '../api/end_points.dart';
//
// class Data with EndPoint {
//
//   Future<dynamic> fetchDataFromSWApi() async {
//     String endPoint = EndPoint.films;
//     const baseUrl = APIConstants.baseUrl;
//
//     final _uri = Uri.https(
//       baseUrl,
//       endPoint,
//     );
//     final response = await http.get(
//       _uri,
//     );
//
//     if (response.statusCode == 200) {
//       if (endPoint == 'leaderboard') {
//         fetchLeaderboard();
//       } else if (endPoint == 'purchases') {
//         fetchPurchases();
//       }
//     }
//     return Exception();
//   }
// }
