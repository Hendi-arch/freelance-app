import 'package:flutter/material.dart';
import 'package:freelance_app/ui/widgets/basic/custom_circle.dart';
import '../../../../app/app.locator.dart';
import '../../../../shared/size_config.dart';
import '../../../widgets/basic/custom_text_widget.dart';

class Body extends StatelessWidget {
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    final _themes = Theme.of(context);
    return Container(
        width: double.infinity,
        height: _sizeConfig!.screenHeight,
        child: Stack(children: [
          // Circle top right
          Positioned(top: -100, left: 200, width: 320.21, height: 320.21, child: CustomCircle()),
          // Circle bottom left
          Positioned(
              top: 492,
              left: -246,
              width: 492,
              height: 492,
              child: CustomCircle(width: 492, height: 492, color: _themes.colorScheme.secondary)),
          // logo
          Center(child: CustomTextWidget(textToDisplay: 'This is the logo', textStyle: _themes.textTheme.headline4))
        ]));
  }
}
