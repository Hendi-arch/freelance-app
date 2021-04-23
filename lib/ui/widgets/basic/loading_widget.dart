import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color valueColor;
  final double strokeWidth;
  final Color backgroundColor;

  const LoadingWidget(
      {Key? key,
      this.strokeWidth = 4.0,
      this.valueColor = const Color(0xffA0CB53),
      this.backgroundColor = const Color(0xff6A9849)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
        child: CircularProgressIndicator(
            strokeWidth: strokeWidth,
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(valueColor)));
  }
}
