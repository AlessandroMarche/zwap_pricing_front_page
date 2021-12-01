import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pricing_front_page/models/pricing_plan.dart';

part 'pricing_state.freezed.dart';

enum PayEach { month, year }

@freezed
class PricingState with _$PricingState {
  PricingState._();

  factory PricingState({
    @Default(true) bool loading,
    @Default([]) List<PricingPlan> plans,
    @Default(PayEach.month) payEachSelection,
  }) = _PricingState;
}
