import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/app/route_name.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart' as service;
import 'package:freelance_app/core/services/reactive_value_service.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_service/component_service_api_action/component_service_api_action.dart';
import 'package:stacked/stacked.dart';
import 'package:freelance_app/core/model/outside/login/login_model.dart';

class ComponentServiceViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _dashboardApiAction = ComponentServiceApiAction();
  final _reactiveValueService = locator<ReactiveValueService>();
  final _navigationService = locator<NavigationService>();

  UserData? get getUserData => _reactiveValueService.userData.value;
  ErrorModel? get getErrorModel => _reactiveValueService.errorViewModelData.value;
  service.UserServiceModel? get getUserServiceData => _reactiveValueService.userServiceData.value;
  service.Data? get getSelectedUserServiceData => _reactiveValueService.selectedUserServiceData.value;

  String getUserServiceKey = 'getUserServiceKey';

  @override
  void onFutureError(error, Object? key) {
    onHandlingError(error, getErrorModel, key);
    super.onFutureError(error, key);
  }

  Future getUserService() async {
    await runBusyFuture(
        _dashboardApiAction.getUserService().then((value) {
          // do logic
          _reactiveValueService.userServiceData.value = value;
        }),
        busyObject: getUserServiceKey);
  }

  void navigateToListPackages(service.Data data) {
    _reactiveValueService.selectedUserServiceData.value = data;
    _navigationService.navigateTo(componentPackageList);
  }
}
