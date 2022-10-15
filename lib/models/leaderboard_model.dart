class Leaderboard {
  // dynamic id;
  // dynamic user_image_url;
  // dynamic first_name;
  // dynamic last_name;
  // dynamic score;
  var leaderboardList;

  Leaderboard({
    // required this.id,
    // required this.user_image_url,
    // required this.first_name,
    // required this.last_name,
    // required this.score,
    required this.leaderboardList,
  });

  // factory Leaderboard.fromJson(Map<String, dynamic> json) {
  //   return Leaderboard(
  //     id: json['id'],
  //     user_image_url: json['user_image_url'],
  //     first_name: json['first_name'],
  //     last_name: json['last_name'],
  //     score: json['score'],
  //     leaderboardList: [json],
  //   );
  // }

  factory Leaderboard.fromJson(Map<String, dynamic> json) {
      return Leaderboard(
        leaderboardList: [json],
      );
  }
}
