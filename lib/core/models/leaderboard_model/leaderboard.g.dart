// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leaderboard _$LeaderboardFromJson(Map<String, dynamic> json) => Leaderboard(
      id: json['id'] as String?,
      user_image_url: json['user_image_url'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LeaderboardToJson(Leaderboard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_image_url': instance.user_image_url,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'score': instance.score,
    };
