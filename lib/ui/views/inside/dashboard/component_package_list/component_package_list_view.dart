import 'package:flutter/material.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_package_list/component_package_list_view_model.dart';
import 'package:freelance_app/ui/views/inside/dashboard/component_package_list/local_widgets/component_package_list_widgets.dart';
import 'package:stacked/stacked.dart';

class ComponentPackageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ComponentPackageListViewModel>.nonReactive(
        viewModelBuilder: () => ComponentPackageListViewModel(),
        onModelReady: (viewModel) => viewModel.getUserPackagesList(),
        builder: (_, viewModel, ___) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Package List', style: Theme.of(context).textTheme.headline6),
            ),
            body: Body(),
          );
        });
  }
}
