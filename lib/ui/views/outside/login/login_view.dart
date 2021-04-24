import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/login/login_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/views/outside/login/local_widgets/form_input.dart';
import 'package:freelance_app/ui/views/outside/login/local_widgets/login_button.dart';
import 'package:freelance_app/ui/widgets/basic/keyboard_disposal.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      builder: (_, __, ___) => KeyboardDisposal(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: _sizeConfig.screenWidth,
              height: _sizeConfig.screenHeight,
              child: Stack(
                children: [
                  FormInput(),
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
