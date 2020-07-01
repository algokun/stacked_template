import 'package:flutter/material.dart';
import 'package:stacked_template/ui/common/default_view.dart';

import 'chat_viewmodel.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ChatViewModel>(
      viewModel: ChatViewModel(),
      builder: (context, uiHelpers, model) {
        return ListView();
      },
    );
  }
}
