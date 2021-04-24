import 'package:flutter/material.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, -0.8),
      child: CustomTextWidget(
          textToDisplay: 'Register',
          textStyle: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textSelectionTheme.selectionHandleColor)),
    );
  }
}
