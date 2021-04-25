import 'package:flutter/material.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/dashboard_view_model.dart';
import 'package:freelance_app/ui/views/inside/dashboard/local_widgets/dashboard_widgets.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.nonReactive(
        viewModelBuilder: () => DashboardViewModel(),
        onModelReady: (viewModel) => viewModel.getUserService(),
        builder: (_, viewModel, ___) {
          return Scaffold(
            appBar: AppBar(
              title: Text(viewModel.getUserData!.name!, style: Theme.of(context).textTheme.headline6),
            ),
            body: Body(),
          );
        });
  }
}
