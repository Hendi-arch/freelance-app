import 'package:freelance_app/ui/views/inside/dashboard/component_package_list/component_package_list_view.dart';
import 'package:stacked/stacked_annotations.dart';

// route name
import 'package:freelance_app/app/route_name.dart';

// services
import 'package:freelance_app/core/api/api.dart';
import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/core/services/api_service.dart';
import 'package:freelance_app/core/services/theme_service.dart';
import 'package:freelance_app/core/services/utility_service.dart';
import 'package:freelance_app/core/services/reactive_value_service.dart';

// shared
import 'package:freelance_app/shared/size_config.dart';

// views
import 'package:freelance_app/ui/views/startup/start_up_view.dart';
import 'package:freelance_app/ui/views/outside/login/login_view.dart';
import 'package:freelance_app/ui/views/outside/register/register_view.dart';
import 'package:freelance_app/ui/views/inside/dashboard/component_list_service/component_service_view.dart';

@StackedApp(routes: [
  AdaptiveRoute(page: StartUpView, initial: true, path: root),
  AdaptiveRoute(page: LoginView, path: login),
  AdaptiveRoute(page: RegisterView, path: register),
  AdaptiveRoute(page: ComponentServiceView, path: componentService),
  AdaptiveRoute(page: ComponentPackageListView, path: componentPackageList)
], dependencies: [
  // Singleton Injections
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: UtilityService),
  LazySingleton(classType: Api),
  LazySingleton(classType: SizeConfig),
  LazySingleton(classType: ThemeService),
  LazySingleton(classType: ReactiveValueService),

  // Factory Injections
  Factory(classType: ApiService)
])
class AppSetup {}
