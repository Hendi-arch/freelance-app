import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_package_list/component_package_list_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/widgets/action/custom_elevated_button.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';
import 'package:freelance_app/ui/widgets/basic/divider_widget.dart';
import 'package:freelance_app/ui/widgets/basic/loading_widget.dart';
import 'package:stacked/stacked.dart';

import 'package_list_card.dart';

class Body extends ViewModelWidget<ComponentPackageListViewModel> {
  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context, viewModel) {
    if (viewModel.busy(viewModel.getUserPackagesListKey)) return Center(child: LoadingWidget());

    if (viewModel.hasErrorForKey(viewModel.getUserPackagesListKey))
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextWidget(
              maxLines: null,
              textOverflow: TextOverflow.visible,
              textToDisplay: 'Sorry, Our system is currently experiencing technical issues',
              textStyle: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold)),
          DividerWidget(height: 15),
          CustomElevatedButton(
              function: () => viewModel.getUserPackagesList(),
              height: 50 * _sizeConfig.getScaleDiagonal(),
              width: _sizeConfig.screenWidth * 0.8,
              child: CustomTextWidget(textToDisplay: 'Please try again', textStyle: Theme.of(context).textTheme.button))
        ],
      );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3
      ),
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(vertical: 15),
      itemCount: viewModel.getUserPackagesListData?.data?.length ?? 0,
      itemBuilder: (context, index) {
        return PackageListCard(data: viewModel.getUserPackagesListData?.data![index]);
      },
    );
  }
}
