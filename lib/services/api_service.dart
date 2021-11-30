import 'package:pricing_front_page/mock/fake_json.dart';
import 'package:pricing_front_page/models/pricing_plan.dart';
import 'package:zwap_utils/zwap_utils.dart' as zwapApiService show ApiService;

class ApiService {
  //metodi https ecc

  Future<List<PricingPlan>> retrivePricingPlans() async {
    await zwapApiService.ApiService(headerAuthKey: '<auth-key-here>', baseUrl: '<base-url-here>').simulateApiCall(duration: const Duration(milliseconds: 1000));
    return mockParsedJson['plans'].map((json) => PricingPlan.fromJson(json)).toList();
  }
}
