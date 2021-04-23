import 'package:flutter/material.dart';
import '../basic/icon_widget.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  final double? iconSize;
  final Color? color;

  IconButtonWidget({Key? key, required this.iconData, required this.onPressed, this.iconSize = 24, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed as void Function()?,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        icon: IconWidget(iconData: iconData, color: color, size: iconSize!));
  }
}
