import 'package:basic_services/basic_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/constant/constant.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/services/reactive_value_service.dart';
import 'package:freelance_app/core/viewmodels/outside/login/login_api_action/login_api_action.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _loginApiAction = LoginApiAction();
  final _reactiveValueService = locator<ReactiveValueService>();
  final _sharedPrefsService = locator<SharedPreferencesService>();
  final _bottomSheetService = locator<BottomSheetService>();

  final TextEditingController mobileOrPhone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String loginEventKey = '_loginEventKey';

  ErrorModel? get getErrorModel => _reactiveValueService.errorViewModelData.value;

  @override
  void onFutureError(error, Object? key) {
    if (key == loginEventKey) {
      _clearTextController();
      formKey.currentState?.validate();
    }
    onHandlingError(error, getErrorModel, key);
    super.onFutureError(error, key);
  }

  void _clearTextController() {
    mobileOrPhone.clear();
    password.clear();
  }

  Future login() async {
    if (formKey.currentState!.validate()) {
      await runBusyFuture(
          _loginApiAction.login(userName: mobileOrPhone.text, password: password.text).then((value) {
            // do logic after success login
            _sharedPrefsService.saveToDisk(accessToken, value.accessToken);
            _reactiveValueService.userData.value = value.userData;

            _bottomSheetService.showBottomSheet(title: value.message ?? 'Success login');
          }),
          busyObject: loginEventKey);
    }
  }
}
