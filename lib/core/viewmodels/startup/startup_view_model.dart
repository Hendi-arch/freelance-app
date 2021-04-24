import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/route_name.dart';
import 'package:freelance_app/core/constant/constant.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:stacked/stacked.dart';
import 'package:freelance_app/app/app.locator.dart';
import '../../../app/app.locator.dart';

class StartUpViewModel extends BaseViewModel {
  final _sizeConfig = locator<SizeConfig>();
  final _navigationService = locator<NavigationService>();
  final _sharedPrefsService = locator<SharedPreferencesService>();

  Future handleStartUpLogic(context) async {
    _sizeConfig.initSizeDeviceInfo(context);

    Future.delayed(Duration.zero, () {
      final token = _sharedPrefsService.getFromDisk(accessToken);
      if (token != null) {
        _navigationService.clearStackAndShow(login);
      } else {
        _navigationService.clearStackAndShow(register);
      }
    });
  }
}
