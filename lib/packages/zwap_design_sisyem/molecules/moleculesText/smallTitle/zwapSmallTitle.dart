/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// IMPORTING LOCAL COMPONENTS

/// Component to rendering a small title
class ZwapSmallTitle extends StatelessWidget {
  /// The custom title
  final String title;

  ZwapSmallTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZwapText(
      zwapTextType: ZwapTextType.bodySemiBold,
      textColor: ZwapColors.neutral500,
      text: title,
    );
  }
}
