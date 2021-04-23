import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final double height;
  final Gradient? gradient;
  final Function? function;
  final ButtonStyle? buttonStyle;

  CustomElevatedButton(
      {required this.child,
      required this.width,
      required this.height,
      required this.function,
      this.buttonStyle,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(86.0), gradient: gradient),
        child: ElevatedButton(child: child, onPressed: function as void Function()?, style: buttonStyle));
  }
}
