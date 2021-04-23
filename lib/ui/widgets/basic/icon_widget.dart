import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/shared/size_config.dart';

class IconWidget extends StatelessWidget {
  final Color? color;
  final IconData iconData;
  final double? size;

  IconWidget({Key? key, this.color, required this.iconData, this.size = 26}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Icon(iconData, color: color ?? Theme.of(context).iconTheme.color, size: size! * locator<SizeConfig>().getScaleDiagonal());
}
