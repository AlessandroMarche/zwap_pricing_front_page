/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// IMPORTING DESIGN SYSTEM KIT COMPONENTS

/// Custom component to display a button with a dynamic loading content
class ZwapLoadingButton extends StatelessWidget {
  /// The zwap button to display inside this component
  final ZwapButton zwapButton;

  /// Is it loading this component
  final bool isLoading;

  ZwapLoadingButton({Key? key, required this.zwapButton, required this.isLoading}) : super(key: key);

  Widget build(BuildContext context) {
    return !this.isLoading
        ? this.zwapButton
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
