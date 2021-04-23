import 'package:flutter/material.dart';

class KeyboardDisposal extends StatelessWidget {
  final Widget child;

  const KeyboardDisposal({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (!FocusScope.of(context).hasPrimaryFocus) FocusScope.of(context).unfocus();
        },
        child: child);
  }
}
