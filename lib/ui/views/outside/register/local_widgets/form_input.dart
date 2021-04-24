import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/outside/register/register_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/input_widget.dart';
import 'package:stacked/stacked.dart';

class FormInput extends ViewModelWidget<RegisterViewModel> {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context, viewModel) {
    return Center(
      child: Container(
        height: 400,
        width: _sizeConfig.screenWidth,
        child: Form(
          key: viewModel.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return viewModel.getErrorModel?.errors ?? 'Please fill this field';
                },
                inputDecoration: InputDecoration(
                  hintText: 'Name',
                ),
                style: Theme.of(context)
                    .inputDecorationTheme
                    .hintStyle!
                    .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
                inputAreaWidth: _sizeConfig.screenWidth * 0.8,
                textEditingController: viewModel.name,
                inputAreaHeight: 56 * _sizeConfig.getScaleDiagonal(),
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return viewModel.getErrorModel?.errors ?? 'Please fill this field';
                },
                inputDecoration: InputDecoration(
                  hintText: 'Email',
                ),
                textEditingController: viewModel.email,
                textInputType: TextInputType.emailAddress,
                style: Theme.of(context)
                    .inputDecorationTheme
                    .hintStyle!
                    .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
                inputAreaWidth: _sizeConfig.screenWidth * 0.8,
                inputAreaHeight: 56 * _sizeConfig.getScaleDiagonal(),
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return viewModel.getErrorModel?.errors ?? 'Please fill this field';
                },
                inputDecoration: InputDecoration(
                  hintText: 'Mobile phone',
                ),
                style: Theme.of(context)
                    .inputDecorationTheme
                    .hintStyle!
                    .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
                inputAreaWidth: _sizeConfig.screenWidth * 0.8,
                textEditingController: viewModel.mobilePhone,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                inputAreaHeight: 56 * _sizeConfig.getScaleDiagonal(),
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return viewModel.getErrorModel?.errors ?? 'Please fill this field';
                },
                inputDecoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
                textEditingController: viewModel.password,
                style: Theme.of(context)
                    .inputDecorationTheme
                    .hintStyle!
                    .copyWith(color: Theme.of(context).textSelectionTheme.selectionHandleColor),
                inputAreaWidth: _sizeConfig.screenWidth * 0.8,
                inputAreaHeight: 56 * _sizeConfig.getScaleDiagonal(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
