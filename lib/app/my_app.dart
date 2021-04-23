import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/services/theme_service.dart';
import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/app.router.dart';
import 'package:freelance_app/core/constant/constant.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeService? _themesServices = locator<ThemeService>();

  @override
  void initState() {
    super.initState();
    _themesServices!.appTheme.listen((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: APP_TITLE,
        debugShowCheckedModeBanner: false,
        theme: _themesServices!.appTheme.value,
        navigatorKey: StackedService.navigatorKey,
        navigatorObservers: [StackedService.routeObserver],
        onGenerateRoute: (RouteSettings settings) => StackedRouter().onGenerateRoute(settings),
        builder: (context, child) =>
            MediaQuery(child: child!, data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0)));
  }
}