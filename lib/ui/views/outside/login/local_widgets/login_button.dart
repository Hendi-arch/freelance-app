import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/login/login_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/custom_elevated_button.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';
import 'package:stacked/stacked.dart';

class LoginButton extends ViewModelWidget<LoginViewModel> {
  LoginButton({Key? key}) : super(reactive: false);

  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context, viewModel) {
    return Align(
      alignment: const Alignment(0.0, 0.45),
      child: CustomElevatedButton(
        function: () => viewModel.login(),
        height: 50 * _sizeConfig.getScaleDiagonal(),
        width: _sizeConfig.screenWidth * 0.8,
        child: CustomTextWidget(
          textToDisplay: 'Login',
          textStyle: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
        ),
      ),
    );
  }
}
