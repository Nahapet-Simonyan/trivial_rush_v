import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivial_rush/models/leaderboard_model.dart';
import '../services/leaderboard_server.dart';

// void main() => runApp(const LeaderboardScreen());

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  late Future<Leaderboard> futureLeaderboard;

  @override
  void initState() {
    super.initState();
    futureLeaderboard = fetchLeaderboard();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.chevron_left, size: 30,),
              ),
              const Text(
                'Leaderboard',
                style: TextStyle(
                  fontFamily: 'AmericanTypeWriter',
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          backgroundColor: const Color.fromRGBO(255, 102, 0, 1),
        ),
        body: Center(
          child: FutureBuilder<Leaderboard>(
            future: futureLeaderboard,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                    '${snapshot.data!.leaderboardList}');
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
