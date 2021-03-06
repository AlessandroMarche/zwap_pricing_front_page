/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';

import 'package:pricing_front_page/packages/zwap_design_sisyem/zwap_design_system.dart';

/// Custom scroll arrow
class ZwapScrollArrow extends StatefulWidget {
  /// Is a right arrow or left?
  final bool isRight;

  /// Is this arrow disabled or not?
  final bool isDisabled;

  /// Custom callBack function to handle the click on this icon
  final Function() onClickCallBack;

  ZwapScrollArrow({Key? key, required this.onClickCallBack, this.isRight = true, this.isDisabled = false}) : super(key: key);

  _ZwapScrollArrowState createState() => _ZwapScrollArrowState();
}

class _ZwapScrollArrowState extends State<ZwapScrollArrow> {
  bool _isHovered = false;

  void _handleHover(bool isHovered) {
    setState(() {
      this._isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget tmp = Container(
      decoration: BoxDecoration(
          color: this._isHovered && !widget.isDisabled ? ZwapColors.neutral200 : ZwapColors.shades0,
          shape: BoxShape.circle,
          border: Border.all(color: widget.isDisabled ? ZwapColors.neutral50 : ZwapColors.neutral200, width: 0.5)),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Icon(
            widget.isRight ? Icons.arrow_forward_ios_rounded : Icons.arrow_back_ios_new_rounded,
            color: widget.isDisabled ? ZwapColors.neutral200 : ZwapColors.neutral500,
            size: 16,
          )),
    );
    return InkWell(
      onTap: widget.isDisabled ? () => {} : () => widget.onClickCallBack(),
      hoverColor: ZwapColors.shades0,
      onHover: (bool isHovered) => this._handleHover(isHovered),
      borderRadius: BorderRadius.circular(50),
      child: tmp,
    );
  }
}
