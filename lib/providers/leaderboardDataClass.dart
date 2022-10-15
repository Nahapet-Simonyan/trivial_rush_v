// import 'package:flutter/material.dart';
// import 'package:trivial_rush/models/leaderboard_data.dart';
// import 'package:trivial_rush/services/leaderboard_api.dart';
//
// class LeaderboardDataClass extends ChangeNotifier {
//   LeaderboardDataModel? post;
//   bool loading = false;
//
//   getPostData() async {
//     loading = true;
//     post = (await getLeaderboardApiDAta())!;
//     loading = false;
//
//     notifyListeners();
//   }
// }