import 'package:json_annotation/json_annotation.dart';

part 'leaderboard.g.dart';

@JsonSerializable()
class Leaderboard {
  final String? id;
  final String? user_image_url;
  final String? first_name;
  final String? last_name;
  final double? score;

  Leaderboard({
    required this.id,
    required this.user_image_url,
    required this.first_name,
    required this.last_name,
    required this.score,
  });

  factory Leaderboard.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardFromJson(json);

  Map<String, dynamic> toJson() => _$LeaderboardToJson(this);
}
