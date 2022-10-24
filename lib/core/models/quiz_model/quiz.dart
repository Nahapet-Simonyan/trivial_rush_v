import 'package:json_annotation/json_annotation.dart';

part 'quiz.g.dart';

@JsonSerializable()
class Quiz {
  final String? question_id;
  final String? question_text;
  final int? question_seconds;
  final String? question_image_url;
  final List? answers;

  Quiz({
    required this.question_id,
    required this.question_text,
    required this.question_seconds,
    required this.question_image_url,
    required this.answers,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) =>
      _$QuizFromJson(json);

  Map<String, dynamic> toJson() => _$QuizToJson(this);
}