import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/icon_button_widget.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Function? onSearch;
  final Function(String)? onChangeOrSubmit;
  final String? hintText;

  CustomSearchBar({Key? key, required this.controller, required this.onSearch, this.onChangeOrSubmit, this.hintText = "Search"})
      : assert(controller != null, "controller must be initialize"),
        assert(onSearch != null, "onSearch must be initialize"),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: locator<SizeConfig>().screenWidth * 0.15, right: locator<SizeConfig>().screenWidth * 0.10),
          height: 38 * locator<SizeConfig>().getScaleDiagonal(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Theme.of(context).textSelectionTheme.cursorColor!, width: 2, style: BorderStyle.solid),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: locator<SizeConfig>().screenWidth * 0.15, right: locator<SizeConfig>().screenWidth * 0.20),
          child: TextField(
            maxLines: 1,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Theme.of(context).textSelectionTheme.cursorColor,
              fontWeight: FontWeight.w500,
            ),
            controller: controller,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Theme.of(context).textSelectionTheme.cursorColor, fontWeight: FontWeight.w500),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onSubmitted: onChangeOrSubmit,
            onChanged: onChangeOrSubmit,
          ),
        ),
        Align(
          alignment: Alignment(0.8, 0.0),
          child: Padding(
            padding: EdgeInsets.all(4 * locator<SizeConfig>().getScaleDiagonal()),
            child: Container(
              child: IconButtonWidget(
                iconData: Icons.search,
                onPressed: onSearch!,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).textSelectionTheme.cursorColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
