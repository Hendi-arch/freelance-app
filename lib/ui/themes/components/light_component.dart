import '../../themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:freelance_app/ui/themes/colors/app_colors.dart';

final ColorScheme lightColorScheme = ColorScheme.light(
  primary: kPrimaryLight,
  background: kBackgroundLight,
  secondary: kBackgroundLight,
  surface: kLight,
  error: kError,
  brightness: Brightness.light,
);

final TextSelectionThemeData lightTextSelectionThemeData =
TextSelectionThemeData(cursorColor: kWhite, selectionHandleColor: kWhite);

final SwitchThemeData lightSwitchThemeData = SwitchThemeData(thumbColor: MaterialStateProperty.all<Color>(kSuccess));

final DialogTheme lightDialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)), backgroundColor: lightColorScheme.surface);

final InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    labelStyle: appTextTheme().overline!.apply(color: kGrayLight),
    hintStyle: appTextTheme().bodyText1!.apply(color: kGrayLight),
    helperStyle: appTextTheme().overline!.apply(color: kGrayLight),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: lightColorScheme.error)));

final CardTheme lightCardTheme = CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)));

final ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        shadowColor: MaterialStateProperty.all<Color>(lightColorScheme.primary),
        backgroundColor: MaterialStateProperty.all<Color>(lightColorScheme.primary),
        side: MaterialStateProperty.all<BorderSide>(BorderSide(color: lightColorScheme.primary)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)))));
