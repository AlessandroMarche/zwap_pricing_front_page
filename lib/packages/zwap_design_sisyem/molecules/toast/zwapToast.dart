/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// Custom class to show toast message
class ZwapToasts {
  static Widget toastWidget(String normalText, Color toastColor) {
    Size size = getTextSize(normalText, ZwapTextType.h3);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(color: toastColor, boxShadow: [BoxShadow(color: Color.fromRGBO(199, 199, 199, 0.5), blurRadius: 30, spreadRadius: 4, offset: Offset(0, 15))]),
            width: 140.0,
            height: 50 + size.height,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ZwapText(
                    text: normalText,
                    textColor: Colors.white,
                    textAlign: TextAlign.center,
                    zwapTextType: ZwapTextType.h3,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// It shows the modal
  static void showMeetingConfirmed(String meetingConfirmedText, {Duration? duration}) {
    showToastWidget(
      ZwapToasts.toastWidget(
        meetingConfirmedText,
        ZwapColors.success700,
      ),
      duration: duration ?? const Duration(seconds: 1),
      position: ToastPosition.top,
    );
  }

  /// It shows an error toast message
  static void showErrorToast(String errorToastMessage, {Duration? duration}) {
    showToastWidget(
      ZwapToasts.toastWidget(
        errorToastMessage,
        ZwapColors.error400,
      ),
      duration: duration ?? const Duration(seconds: 1),
      position: ToastPosition.top,
    );
  }
}
