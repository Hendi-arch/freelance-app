import 'package:stacked/stacked_annotations.dart';

// route name
import 'package:freelance_app/app/route_name.dart';

// services
import 'package:freelance_app/core/api/api.dart';
import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/core/services/api_service.dart';
import 'package:freelance_app/core/services/theme_service.dart';
import 'package:freelance_app/core/services/utility_service.dart';

// shared
import 'package:freelance_app/shared/size_config.dart';

// views
import 'package:freelance_app/ui/views/startup/start_up_view.dart';

@StackedApp(routes: [
  AdaptiveRoute(page: StartUpView, initial: true, path: root),
], dependencies: [
  // Singleton Injections
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: UtilityService),
  LazySingleton(classType: Api),
  LazySingleton(classType: SizeConfig),
  LazySingleton(classType: ThemeService),

  // Factory Injections
  Factory(classType: ApiService)
])
class AppSetup {}
