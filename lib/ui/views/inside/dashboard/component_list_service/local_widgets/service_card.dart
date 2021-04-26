import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/core/model/inside/user_service/user_service_model.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_service/component_service_view_model.dart';
import 'package:freelance_app/shared/size_config.dart';
import 'package:freelance_app/ui/themes/colors/app_colors.dart';
import 'package:freelance_app/ui/widgets/basic/custom_base_cache_image.dart';
import 'package:freelance_app/ui/widgets/basic/custom_text_widget.dart';
import 'package:stacked/stacked.dart';

class ServiceCard extends ViewModelWidget<ComponentServiceViewModel> {
  final Data? data;

  ServiceCard({Key? key, this.data}) : super(key: key, reactive: false);

  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context, viewModel) {
    return GestureDetector(
      onTap: () => viewModel.navigateToListPackages(data!),
      child: Container(
        width: _sizeConfig.getWidth(164),
        height: _sizeConfig.getHeight(281),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: kDark,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomBaseCacheImage(
              imageUrl: data?.imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                width: _sizeConfig.getWidth(164),
                height: _sizeConfig.getHeight(210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
                alignment: const Alignment(-0.75, 0.0),
                child: CustomTextWidget(
                    textToDisplay: data?.id?.toString() ?? '', textStyle: Theme.of(context).textTheme.caption)),
            Align(
              alignment: const Alignment(-0.75, 0.0),
              child: CustomTextWidget(
                  textToDisplay: data?.serviceName ?? '',
                  textStyle: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
