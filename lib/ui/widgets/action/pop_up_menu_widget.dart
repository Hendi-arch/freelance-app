import 'package:flutter/material.dart';

import '../basic/icon_widget.dart';

class PopUpMenuWidget<T> extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Function(T) onSelected;
  final List<Map<dynamic, Map<dynamic, dynamic>>> items;

  PopUpMenuWidget(
      {Key? key,
      required this.items,
      required this.onSelected,
      this.icon = Icons.more_vert,
      this.iconColor = Colors.white})
      : assert(items.isNotEmpty),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
        itemBuilder: (context) => items
            .map((element) => PopupMenuItem<T>(
                child: Center(
                    child: Column(children: [
                  IconWidget(iconData: element.keys.single),
                  // CustomTextWidget(caption: element.values.single.keys.single, color: const Color(0xffA0CB53), size: 14)
                ])),
                value: element.values.single.values.single))
            .toList(),
        color: Colors.white,
        onSelected: onSelected,
        icon: IconWidget(iconData: icon, color: iconColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)));
  }
}
