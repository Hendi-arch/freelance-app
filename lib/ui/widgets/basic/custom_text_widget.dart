import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final int? maxLines;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final String textToDisplay;
  final TextOverflow textOverflow;

  const CustomTextWidget(
      {Key? key,
        this.maxLines,
        required this.textToDisplay,
        this.textAlign = TextAlign.center,
        this.textOverflow = TextOverflow.ellipsis, this.textStyle})
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textToDisplay,
        style: textStyle,
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: textOverflow);
  }
}
