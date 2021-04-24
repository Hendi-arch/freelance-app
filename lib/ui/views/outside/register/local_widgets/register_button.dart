import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/register/register_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/custom_elevated_button.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';
import 'package:freelance_app/ui/widgets/basic/loading_widget.dart';
import 'package:stacked/stacked.dart';

class RegisterButton extends ViewModelWidget<RegisterViewModel> {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context, viewModel) {
    return Align(
      alignment: const Alignment(0.0, 0.6),
      child: CustomElevatedButton(
        function: () => viewModel.register(),
        height: 50 * _sizeConfig.getScaleDiagonal(),
        width: _sizeConfig.screenWidth * 0.8,
        child: viewModel.busy(viewModel.registerEventKey)
            ? LoadingWidget()
            : CustomTextWidget(
                textToDisplay: 'Register',
                textStyle: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
              ),
      ),
    );
  }
}
