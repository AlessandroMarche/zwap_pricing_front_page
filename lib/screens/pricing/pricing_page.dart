import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pricing_front_page/models/pricing_plan.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';
import 'package:pricing_front_page/screens/pricing/components/pricing_card.dart';
import 'package:pricing_front_page/screens/pricing/notifiers/pricing_state_notifier.dart';
import 'package:pricing_front_page/screens/pricing/state/pricing_state.dart';
import 'package:provider/provider.dart';

class PricingPage extends StatelessWidget {
  final bool isSmall;

  const PricingPage({this.isSmall = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<PricingStateNotifier, PricingState>(create: (_) => PricingStateNotifier()),
      ],
      child: Builder(builder: (context) {
        final bool _loading = context.select<PricingState, bool>((state) => state.loading);
        final isAnnualSelected = context.select<PricingState, bool>((state) => state.payEachSelection == PayEach.year);
        final List<PricingPlan> _plans = context.select<PricingState, List<PricingPlan>>((state) => state.plans);

        bool _alert = MediaQuery.of(context).size.width >= 640;

        return SizedBox(
          width: double.infinity,
          child: _loading
              ? Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(ZwapColors.primary800)))
              : Column(
                  mainAxisAlignment: _alert ? MainAxisAlignment.spaceAround : MainAxisAlignment.start,
                  children: [
                    if (!_alert)
                      Container(
                        height: 5,
                        width: 50,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: ZwapColors.neutral200, borderRadius: BorderRadius.circular(20)),
                      ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: _alert ? const NeverScrollableScrollPhysics() : null,
                        padding: !_alert ? const EdgeInsets.symmetric(horizontal: 25) : null,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text("Invest in your career with Zwap Pro", style: getTextStyle(ZwapTextType.h1).copyWith(fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                            ),
                            Text("With Pro and Legendary you get the tools you need to grow as a professional", style: getTextStyle(ZwapTextType.bodyRegular), textAlign: TextAlign.center),
                            const SizedBox(height: 15),
                            AnimatedSize(
                              duration: const Duration(milliseconds: 200),
                              reverseDuration: const Duration(milliseconds: 200),
                              child: CupertinoSlidingSegmentedControl<PayEach>(
                                children: {
                                  PayEach.year: Text("Annual${isAnnualSelected ? '(4 months free)' : ''}",
                                      style: getTextStyle(ZwapTextType.bodySemiBold)
                                          .copyWith(color: isAnnualSelected ? ZwapColors.neutral900 : ZwapColors.neutral600, fontWeight: isAnnualSelected ? FontWeight.w700 : FontWeight.w400)),
                                  PayEach.month: Text(
                                    "Monthly",
                                    style: getTextStyle(ZwapTextType.bodySemiBold)
                                        .copyWith(color: !isAnnualSelected ? ZwapColors.neutral900 : ZwapColors.neutral600, fontWeight: !isAnnualSelected ? FontWeight.w700 : FontWeight.w400),
                                  ),
                                },
                                onValueChanged: (value) => value != null ? context.read<PricingStateNotifier>().payEach = value : null,
                                groupValue: context.select<PricingState, PayEach>((state) => state.payEachSelection),
                              ),
                            ),
                            const SizedBox(height: 15),
                            if (_alert)
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: _plans.map<Widget>((plan) {
                                    PricingPlan currentPlan = context.select<PricingState, PricingPlan>((state) => state.plans.firstWhere((plan) => plan.id == '2'));
                                    PricingCardAction action =
                                        plan.id == '2' ? PricingCardAction.currentPlan : (currentPlan.monthPrice < plan.monthPrice ? PricingCardAction.upgrade : PricingCardAction.downgrade);

                                    return Container(
                                      height: MediaQuery.of(context).size.height * 0.6 + (plan.favorite ? 0 : -50),
                                      width: MediaQuery.of(context).size.height * 0.3,
                                      margin: const EdgeInsets.symmetric(horizontal: 30),
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: PricingCard(
                                        plan: plan,
                                        isAnnual: context.select<PricingState, bool>((state) => state.payEachSelection == PayEach.year),
                                        action: action,
                                        onAction: () {},
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            else
                              ..._plans.map<Widget>((plan) {
                                PricingPlan currentPlan = context.select<PricingState, PricingPlan>((state) => state.plans.firstWhere((plan) => plan.id == '2'));
                                PricingCardAction action =
                                    plan.id == '2' ? PricingCardAction.currentPlan : (currentPlan.monthPrice < plan.monthPrice ? PricingCardAction.upgrade : PricingCardAction.downgrade);

                                return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.5),
                                    child: PricingCard(
                                      plan: plan,
                                      isAnnual: context.select<PricingState, bool>((state) => state.payEachSelection == PayEach.year),
                                      action: action,
                                      onAction: () {},
                                    ));
                              }),
                            if (_alert)
                              Center(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
                                      child: Text(
                                        "See how our plans compared",
                                        style: getTextStyle(ZwapTextType.bodySemiBold).copyWith(color: ZwapColors.primary700),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            else
                              const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        );
      }),
    );
  }
}
