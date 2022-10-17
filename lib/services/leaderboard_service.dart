import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivial_rush/models/leaderboard.dart';

Future<List<LeaderBoard>> fetchLeaderboard() async {
  final response = await http.get(
    Uri.parse(
        'https://my-json-server.typicode.com/narekpog/my-json/leaderboard'),
  );

  List<LeaderBoard> result = List.empty(growable: true);
  if (response.statusCode == 200) {
    List<dynamic> body = json.decode(response.body);
    if (response.body.isNotEmpty) {
      for (var element in body) {
        result.add(LeaderBoard.fromJson(element));
      }
    }
    return result;
  } else {
    throw Exception('Failed to load Leaderboard Data');
  }
}
