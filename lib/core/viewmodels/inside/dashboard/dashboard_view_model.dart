import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/package_list/package_list_model.dart' as packages;
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart' as service;
import 'package:freelance_app/core/services/reactive_value_service.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/dashboard_api_action/dashboard_api_action.dart';
import 'package:stacked/stacked.dart';
import 'package:freelance_app/core/model/outside/login/login_model.dart';

class DashboardViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _dashboardApiAction = DashboardApiAction();
  final _reactiveValueService = locator<ReactiveValueService>();

  UserData? get getUserData => _reactiveValueService.userData.value;
  ErrorModel? get getErrorModel => _reactiveValueService.errorViewModelData.value;
  service.UserServiceModel? get getUserServiceData => _reactiveValueService.userServiceData.value;
  packages.PackagesListModel? get getUserPackagesListData => _reactiveValueService.userPackagesListData.value;

  String getUserServiceKey = 'getUserServiceKey';
  String getUserPackagesListKey = 'getUserPackagesListKey';

  @override
  void onFutureError(error, Object? key) {
    onHandlingError(error, getErrorModel, key);
    super.onFutureError(error, key);
  }

  Future getUserService() async {
    await runBusyFuture(_dashboardApiAction.getUserService().then((value) {
      // do logic
      _reactiveValueService.userServiceData.value = value;
    }), busyObject: getUserServiceKey);
  }

  Future getUserPackagesList(service.Data data) async {
    await runBusyFuture(_dashboardApiAction.getUserPackagesList(serviceId: data.id).then((value) {}),
        busyObject: getUserPackagesListKey);
  }
}
