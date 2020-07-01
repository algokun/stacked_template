import 'package:flutter/material.dart';
import 'package:stacked_template/ui/common/default_view.dart';

import 'chat_viewmodel.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ChatViewModel>(
      viewModel: ChatViewModel(),
      onModelReady: (model) => model.onModelReady(),
      builder: (context, uiHelpers, model) {
        return ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            if (model.chats == null)
              CircularProgressIndicator()
            else
              ...model.chats
                  .map((chatItem) => Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: uiHelpers.canvas,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ListTile(
                          title: Text(chatItem.name),
                          leading: CircleAvatar(
                            child: Text(chatItem.name[0]),
                          ),
                          subtitle: Text(
                            chatItem.username,
                            style: TextStyle(color: uiHelpers.textSecondary),
                          ),
                        ),
                      ))
                  .toList()
          ],
        );
      },
    );
  }
}
