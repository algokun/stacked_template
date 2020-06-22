import 'package:flutter/material.dart';
import 'package:stacked_template/ui/common/default_view.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<HomeViewModel>(
      viewModel: HomeViewModel(),
      builder: (context, uiHelpers, model) {
        return Scaffold();
      },
    );
  }
}
