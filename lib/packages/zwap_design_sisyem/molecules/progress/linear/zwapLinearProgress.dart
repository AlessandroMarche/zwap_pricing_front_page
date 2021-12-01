/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// Component to rendering the linear progress
class ZwapLinearProgress extends StatelessWidget {
  /// The value for this progress bar
  final double valueProgress;

  ZwapLinearProgress({Key? key, required this.valueProgress}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(ZwapRadius.buttonRadius)),
        child: LinearProgressIndicator(
          value: this.valueProgress,
          valueColor: AlwaysStoppedAnimation<Color>(ZwapColors.primary800),
          backgroundColor: ZwapColors.neutral400,
        ),
      ),
    );
  }
}
