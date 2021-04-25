import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/package_list/package_list_model.dart';
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart';
import 'package:freelance_app/core/model/outside/login/login_model.dart';
import 'package:stacked/stacked.dart';

class ReactiveValueService {
  // list of reactive values
  ReactiveValue<UserData?> userData = ReactiveValue<UserData?>(null);
  ReactiveValue<ErrorModel?> errorViewModelData = ReactiveValue<ErrorModel?>(null);
  ReactiveValue<UserServiceModel?> userServiceData = ReactiveValue<UserServiceModel?>(null);
  ReactiveValue<PackagesListModel?> userPackagesListData = ReactiveValue<PackagesListModel?>(null);
}
