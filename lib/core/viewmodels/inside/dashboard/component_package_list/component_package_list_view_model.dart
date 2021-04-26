import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/package_list/package_list_model.dart' as packages;
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart' as service;
import 'package:freelance_app/core/services/reactive_value_service.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_package_list/component_package_list_api_action/component_package_list_api_action.dart';
import 'package:stacked/stacked.dart';

class ComponentPackageListViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _dashboardApiAction = ComponentPackageListApiAction();
  final _reactiveValueService = locator<ReactiveValueService>();

  ErrorModel? get getErrorModel => _reactiveValueService.errorViewModelData.value;
  service.Data? get getSelectedUserServiceData => _reactiveValueService.selectedUserServiceData.value;
  packages.PackagesListModel? get getUserPackagesListData => _reactiveValueService.userPackagesListData.value;
  packages.Data? get getSelectedUserPackagesListData => _reactiveValueService.selectedUserPackagesListData.value;

  String getUserPackagesListKey = 'getUserPackagesListKey';

  @override
  void onFutureError(error, Object? key) {
    onHandlingError(error, getErrorModel, key);
    super.onFutureError(error, key);
  }

  Future getUserPackagesList() async {
    await runBusyFuture(
        _dashboardApiAction.getUserPackagesList(serviceId: getSelectedUserServiceData!.id!).then((value) {
          _reactiveValueService.userPackagesListData.value = value;
        }),
        busyObject: getUserPackagesListKey);
  }
}
