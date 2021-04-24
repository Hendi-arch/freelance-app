// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';

import '../ui/views/outside/login/login_view.dart';
import '../ui/views/outside/register/register_view.dart';
import '../ui/views/startup/start_up_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String loginView = 'login';
  static const String registerView = 'register';
  static const all = <String>{
    startUpView,
    loginView,
    registerView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.registerView, page: RegisterView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RegisterView(),
        settings: data,
      );
    },
  };
}
