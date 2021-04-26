import 'package:flutter/material.dart';
import 'package:freelance_app/core/viewmodels/inside/dashboard/component_service/component_service_view_model.dart';
import 'package:stacked/stacked.dart';

import 'local_widgets/component_service_widgets.dart';

class ComponentServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ComponentServiceViewModel>.nonReactive(
        viewModelBuilder: () => ComponentServiceViewModel(),
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
