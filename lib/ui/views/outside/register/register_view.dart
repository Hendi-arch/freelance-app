import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/register/register_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/custom_arrow.dart';
import 'package:freelance_app/ui/widgets/basic/keyboard_disposal.dart';
import 'package:stacked/stacked.dart';
import 'package:freelance_app/ui/views/outside/register/local_widgets/register_widgets.dart';

class RegisterView extends StatelessWidget {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.nonReactive(
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
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomArrow(caption: 'Login', onPressed: () => viewModel.navigateToLogin(), dy: 0.45),
                RegisterButton(),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RegisterViewModel(),
    );
  }
}
