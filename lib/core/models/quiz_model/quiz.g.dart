// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      question_id: json['question_id'] as String?,
      question_text: json['question_text'] as String?,
      question_seconds: json['question_seconds'] as int?,
      question_image_url: json['question_image_url'] as String?,
      answers: json['answers'] as List<dynamic>?,
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'question_id': instance.question_id,
      'question_text': instance.question_text,
      'question_seconds': instance.question_seconds,
      'question_image_url': instance.question_image_url,
      'answers': instance.answers,
    };
