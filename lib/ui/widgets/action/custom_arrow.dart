import 'package:flutter/material.dart';
import 'package:freelance_app/ui/widgets/action/custom_text_button.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';
import 'package:freelance_app/ui/widgets/basic/divider_widget.dart';

class CustomArrow extends StatelessWidget {
  final double dy;
  final String caption;
  final Function onPressed;

  const CustomArrow({Key? key, required this.onPressed, required this.dy, required this.caption}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.8, dy),
      child: CustomTextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextWidget(
                textToDisplay: caption,
                textStyle: Theme.of(context)
                    .textTheme
                    .button!
                    .apply(color: Theme.of(context).textSelectionTheme.selectionHandleColor)),
            DividerWidget(width: 10),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}