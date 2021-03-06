import 'package:pricing_front_page/models/pricing_plan.dart';
import 'package:pricing_front_page/screens/pricing/state/pricing_state.dart';
import 'package:pricing_front_page/services/api_service.dart';
import 'package:state_notifier/state_notifier.dart';

class PricingStateNotifier extends StateNotifier<PricingState> {
  PricingStateNotifier() : super(PricingState()) {
    _getPlans();
  }

  void _getPlans() async {
    List<PricingPlan> plans = await ApiService().retrivePricingPlans();
    state = state.copyWith(plans: plans, loading: false);
  }

  set payEach(PayEach value) => state.payEachSelection != value ? state = state.copyWith(payEachSelection: value) : null;

  set loading(bool value) => state.loading != value ? state = state.copyWith(loading: value) : null;
}
