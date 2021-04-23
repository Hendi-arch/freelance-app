import 'package:flutter/material.dart';
import 'package:freelance_app/ui/themes/colors/app_colors.dart';
import '../../../app/app.locator.dart';
import '../../../shared/size_config.dart';

class CustomCircle extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  CustomCircle({Key? key, this.width = 320.21, this.height = 320.21, this.color = kSuccess}) : super(key: key);

  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * _sizeConfig!.getScaleDiagonal(),
        height: height * _sizeConfig!.getScaleDiagonal(),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle));
  }
}
