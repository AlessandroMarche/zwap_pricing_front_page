/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

import '../colors/zwapColors.dart';

/// The text type to get different typo in base of the current device sizes
enum ZwapTextType {
  h1,
  h2,
  h3,
  h4,
  h5,
  captionRegular,
  captionSemiBold,
  buttonText,
  bodyRegular,
  bodySemiBold,
}

/// Custom typography style for zwap design system kit
class ZwapTypography {
  static TextStyle h1() {
    return TextStyle(
        fontSize: 24, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.6, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle h2() {
    return TextStyle(
        fontSize: 20, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.6, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle h3() {
    return TextStyle(
        fontSize: 16, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.5, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle h4() {
    return TextStyle(
        fontSize: 14, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.43, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle h5() {
    return TextStyle(
        fontSize: 11, letterSpacing: 0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontFamily: "SFUIMedium", height: 1.8, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle captionRegular() {
    return TextStyle(
        fontSize: 11, letterSpacing: 0, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontFamily: "SFUIRegular", height: 1.45, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle captionSemiBold() {
    return TextStyle(
        fontSize: 11, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.45, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle buttonText() {
    return TextStyle(
        fontSize: 14, letterSpacing: 0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontFamily: "SFUIMedium", height: 1.43, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle bodyRegular() {
    return TextStyle(
        fontSize: 14, letterSpacing: 0, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, fontFamily: "SFUIRegular", height: 1.43, package: "zwap_design_system", color: ZwapColors.shades100);
  }

  static TextStyle bodySemiBold() {
    return TextStyle(
        fontSize: 14, letterSpacing: 0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontFamily: "SFUISemiBold", height: 1.43, package: "zwap_design_system", color: ZwapColors.shades100);
  }
}
