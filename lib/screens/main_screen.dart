import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pricing_front_page/components/my_button.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';
import 'package:pricing_front_page/screens/pricing/pricing_page.dart';

class MainScreeen extends StatelessWidget {
  const MainScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MyButton(
          width: 200,
          color: ZwapColors.primary800,
          borderRadius: BorderRadius.circular(15),
          child: Text(
            "Open Pricing Menu",
            style: getTextStyle(ZwapTextType.buttonText).copyWith(color: ZwapColors.shades0),
          ),
          onPressed: () {
            _openPricingBottomSheet(context);
          },
        ),
      ),
    );
  }

  void _openPricingBottomSheet(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 640)
      showModalBottomSheet(
        context: context,
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.90),
        builder: (_) => PricingPage(),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(12.5), topRight: Radius.circular(10))),
        isScrollControlled: true,
      );
    else {
      print(MediaQuery.of(context).size.height);
      showDialog(
        context: context,
        builder: (_) => Container(
          padding: const EdgeInsets.only(left: 70, right: 70, top: 70, bottom: 30),
          child: Material(
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: PricingPage(),
              ),
            ),
          ),
        ),
      );
    }
  }
}
