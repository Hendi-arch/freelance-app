import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Widget child;
  final ButtonStyle? style;
  final Function? onPressed;

  const CustomTextButton({Key? key, required this.onPressed, required this.child, this.style}) : super(key: key);

  @override
  Widget build(_) => TextButton(onPressed: onPressed as void Function()?, child: child, style: style);
}
