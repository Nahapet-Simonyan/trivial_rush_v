import 'package:json_annotation/json_annotation.dart';

part 'leaderboard.g.dart';

@JsonSerializable()
class LeaderBoard {
  final String? id;
  final String? user_image_url;
  final String? first_name;
  final String? last_name;
  final double? score;

  LeaderBoard({
    required this.id,
    required this.user_image_url,
    required this.first_name,
    required this.last_name,
    required this.score,
  });

  factory LeaderBoard.fromJson(Map<String, dynamic> json) =>
      _$LeaderBoardFromJson(json);

  Map<String, dynamic> toJson() => _$LeaderBoardToJson(this);
}
