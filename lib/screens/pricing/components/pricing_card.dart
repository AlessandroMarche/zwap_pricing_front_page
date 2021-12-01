import 'package:flutter/material.dart';
import 'package:pricing_front_page/components/my_button.dart';
import 'package:pricing_front_page/models/pricing_feature.dart';
import 'package:pricing_front_page/models/pricing_plan.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

enum PricingCardAction { currentPlan, upgrade, downgrade }

class PricingCard extends StatelessWidget {
  final PricingPlan plan;
  final bool isAnnual;
  final PricingCardAction action;

  final Function()? onAction;

  const PricingCard({required this.plan, required this.isAnnual, required this.action, this.onAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity, //TODO: adatta
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: plan.favorite ? const EdgeInsets.only(bottom: 10) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: plan.favorite ? ZwapColors.primary800 : ZwapColors.shades0,
        boxShadow: [
          plan.favorite
              ? BoxShadow(
                  color: ZwapColors.shades100.withOpacity(0.2),
                  spreadRadius: 8,
                  blurRadius: 10,
                  offset: const Offset(0, 15),
                )
              : BoxShadow(
                  color: ZwapColors.shades100.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2.5),
                ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            plan.title,
            style: getTextStyle(ZwapTextType.h1).copyWith(fontSize: 26, color: plan.favorite ? ZwapColors.shades0 : null),
          ),
          const SizedBox(height: 20),
          Text(
            plan.subtitle,
            style: getTextStyle(ZwapTextType.bodyRegular).copyWith(color: plan.favorite ? ZwapColors.shades0 : null),
          ),
          const SizedBox(height: 20),
          Text(
            '€${isAnnual ? (plan.annualPrice ?? (plan.monthPrice * 8)) ~/ 12 : plan.monthPrice.toStringAsFixed(0)} ${plan.isFree ? 'forever' : 'per month'}',
            style: getTextStyle(ZwapTextType.h2).copyWith(fontWeight: FontWeight.w800, color: plan.favorite ? ZwapColors.shades0 : null),
          ),
          if (!plan.isFree)
            Text(
              '€${isAnnual ? (plan.annualPrice ?? (plan.monthPrice * 8)).toStringAsFixed(0) : (plan.annualPrice ?? plan.monthPrice * 12).toStringAsFixed(0)} per year',
              style: getTextStyle(ZwapTextType.captionSemiBold).copyWith(color: plan.favorite ? ZwapColors.neutral300 : ZwapColors.neutral700),
            ),
          const SizedBox(height: 20),
          getButton(),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: plan.features.map((feature) => _getFeatureWidget(feature, plan.favorite)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFeatureWidget(PricingFeature feature, bool favorite) => Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: feature.included ? (favorite ? ZwapColors.shades0 : ZwapColors.primary800) : ZwapColors.primary200),
              child: Center(child: Icon(Icons.check, color: plan.favorite ? ZwapColors.neutral500 : ZwapColors.shades0, size: 15)),
            ),
            const SizedBox(width: 7),
            Flexible(
                child: Text(
              feature.title,
              style: getTextStyle(ZwapTextType.bodyRegular).copyWith(color: plan.favorite ? ZwapColors.shades0 : null, fontSize: 13),
            )),
          ],
        ),
      );

  Widget getButton() {
    late final String text;
    late final Color color;
    late final Color? borderColor;
    late final Color textColor;

    switch (action) {
      case PricingCardAction.currentPlan:
        text = "Your current plan";
        color = ZwapColors.primary200;
        borderColor = Colors.transparent;
        textColor = ZwapColors.neutral100;
        break;
      case PricingCardAction.upgrade:
        text = "Upgrade";
        color = ZwapColors.shades0;
        borderColor = ZwapColors.primary800;
        textColor = ZwapColors.primary800;
        break;
      case PricingCardAction.downgrade:
        text = "Downgrade";
        color = ZwapColors.shades0;
        borderColor = ZwapColors.primary800;
        textColor = ZwapColors.primary800;
        break;
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: MyButton(
        height: 40,
        width: action == PricingCardAction.currentPlan ? 160 : null,
        color: color,
        highlightColor: ZwapColors.primary100,
        splashColor: ZwapColors.primary200,
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(7.5),
        child: Text(text, style: getTextStyle(ZwapTextType.bodyRegular).copyWith(color: textColor)),
        onPressed: action != PricingCardAction.currentPlan ? onAction : null,
      ),
    );
  }
}
