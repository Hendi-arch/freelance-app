// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:basic_services/basic_services.dart';
import 'package:stacked/stacked.dart';

import '../core/api/api.dart';
import '../core/services/api_service.dart';
import '../core/services/reactive_value_service.dart';
import '../core/services/theme_service.dart';
import '../core/services/utility_service.dart';
import '../shared/size_config.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => UtilityService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SizeConfig());
  locator.registerLazySingleton(() => ThemeService());
  locator.registerLazySingleton(() => ReactiveValueService());
  locator.registerFactory(() => ApiService());
}
