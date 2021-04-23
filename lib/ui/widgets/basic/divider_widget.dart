import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/shared/size_config.dart';

class DividerWidget extends StatelessWidget {
  final double width;
  final double height;
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  DividerWidget({Key? key, this.width = 0, this.height = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: _sizeConfig!.getWidth(width),
        height: _sizeConfig!.getHeight(height));
  }
}
