import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show TextInputFormatter;

class CustomTextFormField extends StatelessWidget {
  final double inputAreaWidth;
  final double inputAreaHeight;
  final TextStyle? style;
  final TextAlign textAlign;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController textEditingController;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode? autoValidateMode;
  final Function? onSaved;
  final VoidCallback? onTap;
  final InputDecoration? inputDecoration;
  final TextInputAction textInputAction;
  final Color containerColor;
  final String obscuringCharacter;
  final FocusNode? focusNode;

  CustomTextFormField(
      {Key? key,
        required this.inputAreaWidth,
        required this.inputAreaHeight,
        required this.textEditingController,
        this.style,
        this.inputDecoration,
        this.autoValidateMode,
        this.onChanged,
        this.onSaved,
        this.onTap,
        this.obscureText = false,
        this.readOnly = false,
        this.textAlign = TextAlign.left,
        this.textInputType = TextInputType.text,
        this.inputFormatter,
        this.textInputAction = TextInputAction.next,
        this.validator,
        this.containerColor = Colors.transparent,
        this.obscuringCharacter = '•',
        this.focusNode})
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: containerColor,
        width: inputAreaWidth,
        height: inputAreaHeight,
        child: TextFormField(
            autovalidateMode: autoValidateMode,
            style: style,
            onTap: onTap,
            onSaved: onSaved as void Function(String?)?,
            readOnly: readOnly,
            focusNode: focusNode,
            textAlign: textAlign,
            validator: validator,
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: inputDecoration,
            keyboardType: textInputType,
            inputFormatters: inputFormatter,
            textInputAction: textInputAction,
            controller: textEditingController,
            obscuringCharacter: obscuringCharacter));
  }
}