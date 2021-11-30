import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_feature.freezed.dart';
part 'pricing_feature.g.dart';

@freezed
class PricingFeature with _$PricingFeature {
  PricingFeature._();

  factory PricingFeature({
    required String title,
    @Default(true) bool included,
  }) = _PricingFeature;

  factory PricingFeature.fromJson(Map<String, dynamic> json) => _$PricingFeatureFromJson(json);
}
