import 'package:basic_services/basic_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/viewmodels/outside/login/login_api_action/login_api_action.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel with ExceptionServiceMixin {
  // services
  final _loginApiAction = LoginApiAction();

  final TextEditingController mobileOrPhone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _loginEventKey = '_loginEventKey';

  ErrorModel? get getErrorModel => errorModel;

  @override
  void onFutureError(error, Object? key) {
    if (key == _loginEventKey) {
      _clearTextController();
      formKey.currentState?.validate();
    }
    onHandlingError(error, errorModel, key);
    super.onFutureError(error, key);
  }

  void _clearTextController() {
    mobileOrPhone.clear();
    password.clear();
  }

  Future login() async {
    if (formKey.currentState!.validate()) {
      await runBusyFuture(_loginApiAction.login(userName: mobileOrPhone.text, password: password.text),
          busyObject: _loginEventKey);
    }
  }
}
