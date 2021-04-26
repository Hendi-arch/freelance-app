import 'package:basic_services/basic_services.dart';
import 'package:dio/dio.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/api/api.dart';
import 'package:freelance_app/core/constant/constant.dart';
import 'package:freelance_app/core/model/error/error_model.dart';
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart';
import 'package:freelance_app/core/services/api_service.dart';
import 'package:freelance_app/core/services/reactive_value_service.dart';

class ComponentServiceApiAction {
  final _api = locator<Api>();
  final _apiService = locator<ApiService>();
  final _reactiveValueService = locator<ReactiveValueService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<UserServiceModel> getUserService() async {
    try {
      final _result = await _apiService.dioGet(
        _api.service,
        headers: {'Authorization': 'Bearer ${_sharedPreferencesService.getFromDisk(accessToken)}'},
      );

      // map data to model
      UserServiceModel _data = UserServiceModel.fromJson(_result.data);

      return _data;
    } on DioError catch (error) {
      _reactiveValueService.errorViewModelData.value = ErrorModel.fromJson(error.response?.data);
      throw error;
    }
  }
}
