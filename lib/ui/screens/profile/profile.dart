import 'package:flutter/material.dart';
import 'package:stacked_template/ui/common/default_view.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      builder: (context, uiHelpers, model) {
        return ListView();
      },
    );
  }
}
