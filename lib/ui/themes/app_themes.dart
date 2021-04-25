import 'package:flutter/material.dart';
import 'components/dark_component.dart';
import 'components/light_component.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    textTheme: darkAppTextTheme(),
    colorScheme: darkColorScheme,
    accentTextTheme: darkAppTextTheme(),
    primaryTextTheme: darkAppTextTheme(),
    textSelectionTheme: darkTextSelectionThemeData,
    inputDecorationTheme: darkInputDecorationTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: lightAppTextTheme(),
    colorScheme: lightColorScheme,
    accentTextTheme: lightAppTextTheme(),
    primaryTextTheme: lightAppTextTheme(),
    textSelectionTheme: lightTextSelectionThemeData,
    inputDecorationTheme: lightInputDecorationTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme darkAppTextTheme() {
  final base = ThemeData.dark().textTheme;
  return base
      .copyWith(
          headline4: base.headline4!.copyWith(fontSize: 34),
          headline5: base.headline5!.copyWith(fontSize: 24),
          headline6: base.headline6!.copyWith(fontSize: 18),
          subtitle1: base.subtitle1!.copyWith(fontSize: 16),
          bodyText1: base.bodyText1!.copyWith(fontSize: 14),
          button: base.button!.copyWith(fontSize: 14),
          caption: base.caption!.copyWith(fontSize: 14, letterSpacing: -0.15),
          overline: base.overline!.copyWith(fontSize: 11))
      .apply(fontFamily: 'Metropolis');
}

TextTheme lightAppTextTheme() {
  final base = ThemeData.light().textTheme;
  return base
      .copyWith(
      headline4: base.headline4!.copyWith(fontSize: 34),
      headline5: base.headline5!.copyWith(fontSize: 24),
      headline6: base.headline6!.copyWith(fontSize: 18),
      subtitle1: base.subtitle1!.copyWith(fontSize: 16),
      bodyText1: base.bodyText1!.copyWith(fontSize: 14),
      button: base.button!.copyWith(fontSize: 14),
      caption: base.caption!.copyWith(fontSize: 14, letterSpacing: -0.15),
      overline: base.overline!.copyWith(fontSize: 11))
      .apply(fontFamily: 'Metropolis');
}
