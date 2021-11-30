import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pricing_front_page/models/pricing_feature.dart';

part 'pricing_plan.freezed.dart';
part 'pricing_plan.g.dart';

@freezed
class PricingPlan with _$PricingPlan {
  PricingPlan._();

  factory PricingPlan({
    required String title,
    required String subtitle,
    @JsonKey(name: 'monthprice') required double monthPrice,
    @JsonKey(name: 'annualprice') required double? annualPrice,
    required List<PricingFeature> features,
    @JsonKey(defaultValue: false) @Default(false) bool favorite,
  }) = _PricingPlan;

  factory PricingPlan.fromJson(Map<String, dynamic> json) => _$PricingPlanFromJson(json);
}
