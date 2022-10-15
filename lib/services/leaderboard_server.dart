import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivial_rush/models/leaderboard_model.dart';

Future<Leaderboard> fetchLeaderboard() async {
  final response = await http.get(
    Uri.parse(
        'https://my-json-server.typicode.com/narekpog/my-json/leaderboard'),
  );

  if (response.statusCode == 200) {
    var body = json.decode(response.body);
    if (response.body.isNotEmpty) {
      json.encode(response.body);
    }
    return Leaderboard.fromJson(body);
  } else {
    throw Exception('Failed to load album');
  }
}
