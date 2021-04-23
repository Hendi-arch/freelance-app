import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/shared/size_config.dart';

import 'loading_widget.dart';

class OverlayLoadingWidget extends StatelessWidget {
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.7,
        child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            width: _sizeConfig!.screenWidth,
            height: _sizeConfig!.screenHeight,
            child: UnconstrainedBox(child: LoadingWidget(strokeWidth: 2.0))));
  }
}
