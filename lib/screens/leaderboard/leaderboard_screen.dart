import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivial_rush/constants/colors_list/colors_list.dart';
import 'package:trivial_rush/core/trivial_rush_client.dart';
import 'package:trivial_rush/screens/leaderboard/leaderboard_item.dart';
import 'package:trivial_rush/widgets/sub_screen_appbar.dart';
import '../../core/models/leaderboard_model/leaderboard.dart';

/// Created by Nahapet
/// Date: 14.10.22

/// Create a Leaderboard page for Trivial Rush

/// [futureLeaderboard] get List of `Leaderboard` items from Api
/// [item] current member from `Leaderboard` list

class LeaderboardScreen extends StatelessWidget {
  LeaderboardScreen({Key? key}) : super(key: key);

  late Future<List<Leaderboard>> futureLeaderboard;

  @override
  Widget build(BuildContext context) {
    futureLeaderboard =
        TrivialRushAPI().leaderboardService.getLeaderboardData();

    return Scaffold(
      /// AppBar from global widget
      appBar: subScreenAppBar(
          context: context,
          backgroundColor: const Color.fromRGBO(255, 102, 0, 1),
          itemsColor: Colors.white,
          text: 'Leaderboard'),
      body: Center(
        child: FutureBuilder<List<Leaderboard>>(
          future: futureLeaderboard,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    /// sorting: highest score to lowest score
                    snapshot.data?.sort(
                      (a, b) => b.score!.compareTo(a.score!),
                    );
                    var item = snapshot.data?[index];

                    /// leaderboardItem: Show current `Leaderboard` member
                    /// `index`, `avatar`, `name` and `score` with styles
                    return leaderboardItem(
                        context: context,
                        snapshot: snapshot,
                        colorList: leaderboardColorList,
                        index: index,
                        item: item);
                  });
            } else if (snapshot.hasError) {
              /// info about error
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
