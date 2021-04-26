import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/package_list/package_list_model.dart' as package;
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart' as service;
import 'package:freelance_app/core/model/outside/login/login_model.dart';
import 'package:stacked/stacked.dart';

class ReactiveValueService {
  // list of reactive values
  ReactiveValue<UserData?> userData = ReactiveValue<UserData?>(null);
  ReactiveValue<ErrorModel?> errorViewModelData = ReactiveValue<ErrorModel?>(null);

  ReactiveValue<service.UserServiceModel?> userServiceData = ReactiveValue<service.UserServiceModel?>(null);
  ReactiveValue<service.Data?> selectedUserServiceData = ReactiveValue<service.Data?>(null);

  ReactiveValue<package.PackagesListModel?> userPackagesListData = ReactiveValue<package.PackagesListModel?>(null);
  ReactiveValue<package.Data?> selectedUserPackagesListData = ReactiveValue<package.Data?>(null);
}
