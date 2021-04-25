import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/login/login_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/views/outside/login/local_widgets/login_widgets.dart';
import 'package:freelance_app/ui/widgets/action/custom_arrow.dart';
import 'package:freelance_app/ui/widgets/basic/keyboard_disposal.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      builder: (_, viewModel, ___) => KeyboardDisposal(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: _sizeConfig.screenWidth,
              height: _sizeConfig.screenHeight,
              child: Stack(
                children: [
                  TitleView(),
                  FormInput(),
                  CustomArrow(caption: 'Sign up', onPressed: () => viewModel.navigateToRegister(), dy: 0.28),
                  LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
