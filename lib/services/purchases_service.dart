import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/purchases.dart';

Future<List<Purchases>> fetchPurchases() async {
  final response = await http.get(
    Uri.parse(
        'https://my-json-server.typicode.com/narekpog/my-json/purchases'),
  );

  List<Purchases> result = List.empty(growable: true);
  if (response.statusCode == 200) {
    List<dynamic> body = json.decode(response.body[0]);
    if (response.body.isNotEmpty) {
      for (var element in body[0]) {
        result.add(Purchases.fromJson(element));
      }
    }
    return result;
  } else {
    throw Exception('Failed to load Leaderboard Data');
  }
}