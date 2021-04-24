import '../../themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:freelance_app/ui/themes/colors/app_colors.dart';

final ColorScheme darkColorScheme = ColorScheme.dark(
  primary: kPrimaryDark,
  background: kBackgroundDark,
  secondary: kBackgroundDark,
  surface: kDark,
  error: kError,
  brightness: Brightness.dark,
);

final TextSelectionThemeData darkTextSelectionThemeData =
    TextSelectionThemeData(cursorColor: kWhite, selectionHandleColor: kWhite);

final SwitchThemeData darkSwitchThemeData = SwitchThemeData(thumbColor: MaterialStateProperty.all<Color>(kSuccess));

final DialogTheme darkDialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)), backgroundColor: darkColorScheme.surface);

final InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    labelStyle: appTextTheme().overline!.apply(color: kGrayDark),
    hintStyle: appTextTheme().bodyText1!.apply(color: kGrayDark),
    helperStyle: appTextTheme().overline!.apply(color: kGrayDark),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: darkColorScheme.error)));

final CardTheme darkCardTheme = CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)));

final ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        shadowColor: MaterialStateProperty.all<Color>(darkColorScheme.primary),
        backgroundColor: MaterialStateProperty.all<Color>(darkColorScheme.primary),
        side: MaterialStateProperty.all<BorderSide>(BorderSide(color: darkColorScheme.primary)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)))));
