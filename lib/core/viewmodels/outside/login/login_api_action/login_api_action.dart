import 'package:dio/dio.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/api/api.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/outside/login/login_model.dart';
import 'package:freelance_app/core/services/api_service.dart';
import 'package:freelance_app/core/services/reactive_value_service.dart';

class LoginApiAction {
  final Api _api = locator<Api>();
  final ApiService _apiService = locator<ApiService>();
  final _reactiveValueService = locator<ReactiveValueService>();

  Future<LoginModel> login({required String userName, required String password}) async {
    try {
      final _result = await _apiService.dioPost(
        _api.login,
        query: {'emailorphone': userName, 'password': password},
      );

      // map data to model
      LoginModel _data = LoginModel.fromJson(_result.data);

      return _data;
    } on DioError catch (error) {
      _reactiveValueService.errorViewModelData.value = ErrorModel.fromJson(error.response?.data);
      throw error;
    }
  }
}
