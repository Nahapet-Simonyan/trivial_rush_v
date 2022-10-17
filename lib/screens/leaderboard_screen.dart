import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivial_rush/models/leaderboard.dart';
import 'package:trivial_rush/widgets/leaderboard_item.dart';
import '../services/leaderboard_service.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  late Future<List<LeaderBoard>> futureLeaderboard;
  static const List<Color> colorList = <Color>[
    Color.fromRGBO(255, 102, 0, 1),
    Color.fromRGBO(204, 0, 1, 1),
    Color.fromRGBO(0, 51, 204, 1),
    Color.fromRGBO(255, 204, 0, 1),
    Color.fromRGBO(103, 0, 152, 1),
    Color.fromRGBO(0, 153, 0, 1),
  ];

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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Leaderboard',
            style: TextStyle(
              fontFamily: 'AmericanTypeWriter',
              fontSize: 24,
            ),
          ),
          backgroundColor: const Color.fromRGBO(255, 102, 0, 1),
        ),
        body: Center(
          child: FutureBuilder<List<LeaderBoard>>(
            future: futureLeaderboard,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        // sorting: highest score to lowest score
                        snapshot.data?.sort(
                          (a, b) => b.score!.compareTo(a.score!),
                        );
                        var item = snapshot.data?[index];
                        return leaderboardItem(
                            context, snapshot, colorList, index, item);
                      }),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
