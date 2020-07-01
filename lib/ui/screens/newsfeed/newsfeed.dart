import 'package:flutter/material.dart';
import 'package:stacked_template/ui/common/default_view.dart';

import 'newsfeed_viewmodel.dart';

class NewsfeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<NewsfeedViewModel>(
      viewModel: NewsfeedViewModel(),
      builder: (context, uiHelpers, model) {
        return ListView();
      },
    );
  }
}
