import 'package:basic_services/basic_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/app/route_name.dart';
import 'package:freelance_app/core/constant/constant.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/outside/register/register_model.dart';
import 'package:freelance_app/core/services/reactive_value_service.dart';
import 'package:freelance_app/core/viewmodels/outside/register/register_api_action/register_api_action.dart';
import 'package:stacked/stacked.dart';

class RegisterViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _registerApiAction = RegisterApiAction();
  final _navigationService = locator<NavigationService>();
  final _reactiveValueService = locator<ReactiveValueService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _sharedPrefsService = locator<SharedPreferencesService>();

  final TextEditingController mobilePhone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String registerEventKey = '_registerEventKey';

  ErrorModel? get getErrorModel => _reactiveValueService.errorViewModelData.value;

  @override
  void onFutureError(error, Object? key) {
    if (key == registerEventKey) {
      _clearTextController();
      formKey.currentState?.validate();
    }
    onHandlingError(error, getErrorModel, key);
    super.onFutureError(error, key);
  }

  void _clearTextController() {
    mobilePhone.clear();
    password.clear();
    name.clear();
    email.clear();
  }

  Future register() async {
    if (formKey.currentState!.validate()) {
      await runBusyFuture(
          _registerApiAction
              .register(
                  data: UserData(
                      name: name.text, password: password.text, email: email.text, mobilePhone: mobilePhone.text))
              .then((value) async {
            // do logic after success register
            _sharedPrefsService.saveToDisk(accessToken, value.accessToken);
            await _bottomSheetService.showBottomSheet(title: value.message ?? 'Success Register Account');

            _navigationService.clearStackAndShow(login);
          }),
          busyObject: registerEventKey);
    }
  }

  Future navigateToLogin() async => _navigationService.clearStackAndShow(login);
}
