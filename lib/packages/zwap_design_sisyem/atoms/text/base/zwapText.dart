/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';
import 'package:taastrap/taastrap.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// The device
class FontSizeDevice {
  /// The font size for the desktop M version
  final double desktopM;

  /// The font size for the desktop S version
  final double desktopS;

  /// The font size for the tablet version
  final double tablet;

  /// The font size for the mobile M version
  final double mobileM;

  /// The font size for the mobile S version
  final double mobileS;

  FontSizeDevice({required this.desktopM, required this.desktopS, required this.tablet, required this.mobileM, required this.mobileS});

  /// It retrieves the correct font size in base of the device type
  double getFontSize() {
    return getMultipleConditions<double>(this.desktopM, this.desktopS, this.tablet, this.mobileM, this.mobileM);
  }
}

/// It returns the text style in base of the different text type
TextStyle getTextStyle(ZwapTextType typeText) {
  switch (typeText) {
    case ZwapTextType.h1:
      return ZwapTypography.h1();
    case ZwapTextType.h2:
      return ZwapTypography.h2();
    case ZwapTextType.h3:
      return ZwapTypography.h3();
    case ZwapTextType.h4:
      return ZwapTypography.h4();
    case ZwapTextType.h5:
      return ZwapTypography.h5();
    case ZwapTextType.captionRegular:
      return ZwapTypography.captionRegular();
    case ZwapTextType.captionSemiBold:
      return ZwapTypography.captionSemiBold();
    case ZwapTextType.buttonText:
      return ZwapTypography.buttonText();
    case ZwapTextType.bodyRegular:
      return ZwapTypography.bodyRegular();
    case ZwapTextType.bodySemiBold:
      return ZwapTypography.bodySemiBold();
  }
}

/// It plots the text size in base of the current style and current chars
Size getTextSize(String text, ZwapTextType textType) {
  final TextPainter textPainter = TextPainter(text: TextSpan(text: text, style: getTextStyle(textType)), maxLines: 1, textDirection: TextDirection.ltr)..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size;
}

/// Component to rendering text in base of style and device type
class ZwapText extends StatelessWidget implements ResponsiveWidget {
  /// The text to display inside this rendering
  final String text;

  /// The zwap text type
  final ZwapTextType zwapTextType;

  /// The text color to apply to the final style
  final Color textColor;

  /// The align for this text
  final TextAlign? textAlign;

  ZwapText({Key? key, required this.text, required this.zwapTextType, required this.textColor, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: this.textAlign,
      style: getTextStyle(this.zwapTextType).apply(color: this.textColor),
    );
  }

  @override
  double getSize() {
    return getTextSize(this.text, this.zwapTextType).width;
  }
}
