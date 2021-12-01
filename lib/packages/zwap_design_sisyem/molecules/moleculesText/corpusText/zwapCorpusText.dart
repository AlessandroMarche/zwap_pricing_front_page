/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:taastrap/colStrap/colStrap.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// Custom component to rendering the text in a standard style
class ZwapCorpusText extends StatelessWidget implements ResponsiveWidget {
  /// The custom text to rendering inside this component
  final String text;

  ZwapCorpusText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZwapText(
      text: this.text,
      textColor: ZwapColors.neutral500,
      zwapTextType: ZwapTextType.bodyRegular,
    );
  }

  @override
  double getSize() {
    return getTextSize(this.text, ZwapTextType.bodyRegular).width;
  }
}
