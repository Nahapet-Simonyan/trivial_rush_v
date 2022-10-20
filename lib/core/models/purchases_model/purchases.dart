import 'package:json_annotation/json_annotation.dart';

part 'purchases.g.dart';

@JsonSerializable()
class Purchases {
  final String? title;
  final String? sub_title;
  dynamic? price;
  final int? plays_count;
  final bool? show_badge;

  Purchases({
    required this.title,
    required this.sub_title,
    required this.price,
    required this.plays_count,
    required this.show_badge,
  });

  factory Purchases.fromJson(Map<String, dynamic> json) =>
      _$PurchasesFromJson(json);

  Map<String, dynamic> toJson() => _$PurchasesToJson(this);
}
