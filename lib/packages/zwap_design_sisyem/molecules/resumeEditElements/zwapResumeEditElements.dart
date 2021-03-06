/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';
import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';
import 'package:zwap_utils/zwap_utils.dart';

/// IMPORTING DESIGN SYSTEM KIT COMPONENTS

/// Custom popup to edit the social links related to this user
class ResumeEditElements<T> extends StatelessWidget {
  /// The elements list to display inside this view
  final List<T> elements;

  /// The function to retrieve the widget element in this custom list view
  final Widget Function(T element) getElementWidget;

  /// The callBack function to handle the add button click
  final Function() addElementCallBackClick;

  ResumeEditElements({Key? key, required this.elements, required this.getElementWidget, required this.addElementCallBackClick}) : super(key: key);

  /// It gets the elements list view
  Widget _getElementsListView() {
    return Column(
      children: List<Widget>.generate(this.elements.length, ((int index) => this.getElementWidget(this.elements[index]))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ZwapButton(
            verticalPadding: 15,
            zwapButtonType: ZwapButtonType.editButton,
            zwapButtonContentType: ZwapButtonContentType.noIcon,
            zwapButtonStatus: ZwapButtonStatus.defaultStatus,
            onPressedCallBack: () => this.addElementCallBackClick(),
            text: Utils.translatedText("add_button"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ZwapVerticalScroll(
            child: this._getElementsListView(),
          ),
        )
      ],
    );
  }
}
