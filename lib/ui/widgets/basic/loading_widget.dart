import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color? valueColor;
  final Color? backgroundColor;

  const LoadingWidget({Key? key, this.valueColor, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
        child: CircularProgressIndicator(
            strokeWidth: 2.0,
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color?>(valueColor)));
  }
}
