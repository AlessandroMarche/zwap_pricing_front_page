import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final Border? border;
  final BorderRadius? borderRadius;
  final Color? color;

  final Color? highlightColor;
  final Color? splashColor;

  final Function()? onPressed;

  const MyButton({
    required this.child,
    this.width,
    this.height,
    this.border,
    this.borderRadius,
    this.color,
    this.onPressed,
    this.highlightColor,
    this.splashColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        highlightColor: highlightColor,
        splashColor: splashColor,
        onTap: onPressed,
        borderRadius: borderRadius,
        child: Container(
          height: height ?? 44,
          width: width ?? 120,
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
          decoration: BoxDecoration(borderRadius: borderRadius, border: border),
          child: Center(child: child),
        ),
      ),
    );
  }
}
