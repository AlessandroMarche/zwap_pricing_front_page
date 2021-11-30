// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PricingPlan _$$_PricingPlanFromJson(Map<String, dynamic> json) =>
    _$_PricingPlan(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      monthPrice: (json['monthprice'] as num).toDouble(),
      annualPrice: (json['annualprice'] as num?)?.toDouble(),
      features: (json['features'] as List<dynamic>)
          .map((e) => PricingFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      favorite: json['favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PricingPlanToJson(_$_PricingPlan instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'monthprice': instance.monthPrice,
      'annualprice': instance.annualPrice,
      'features': instance.features,
      'favorite': instance.favorite,
    };
