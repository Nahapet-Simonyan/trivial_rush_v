// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Purchases _$PurchasesFromJson(Map<String, dynamic> json) => Purchases(
  title: json['title'] as String?,
  sub_title: json['sub_title'] as String?,
  price: json['price'],
  plays_count: json['plays_count'] as int?,
  show_badge: json['show_badge'] as bool?,
);

Map<String, dynamic> _$PurchasesToJson(Purchases instance) => <String, dynamic>{
  'title': instance.title,
  'sub_title': instance.sub_title,
  'price': instance.price,
  'plays_count': instance.plays_count,
  'show_badge': instance.show_badge,
};
