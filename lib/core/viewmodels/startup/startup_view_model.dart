import 'package:basic_services/basic_services.dart';
import 'package:freelance_app/app/route_name.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:stacked/stacked.dart';
import 'package:freelance_app/app/app.locator.dart';
import '../../../app/app.locator.dart';

class StartUpViewModel extends BaseViewModel {
  final SizeConfig _sizeConfig = locator<SizeConfig>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic(context) async {
    _sizeConfig.initSizeDeviceInfo(context);

    Future.delayed(Duration.zero, () => _navigationService.clearStackAndShow(login));
  }
}
