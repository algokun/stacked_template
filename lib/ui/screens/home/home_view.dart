import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:stacked_template/ui/common/default_view.dart';
import 'package:stacked_template/ui/common/multi_screen_view.dart';
import 'package:stacked_template/ui/screens/chat/chat.dart';
import 'package:stacked_template/ui/screens/newsfeed/newsfeed.dart';
import 'package:stacked_template/ui/screens/profile/profile.dart';

import 'data/home_view_items.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  final _screenToDisplay = [
    NewsfeedView(),
    ChatView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<HomeViewModel>(
      viewModel: HomeViewModel(),
      builder: (context, uiHelpers, model) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              homeViewItems[model.index].title,
              style: uiHelpers.headline,
            ),
            actions: <Widget>[
              IconButton(icon: Icon(FeatherIcons.bell), onPressed: () {}),
              IconButton(
                  icon: Icon(
                      model.isDarkMode ? FeatherIcons.sun : FeatherIcons.moon),
                  onPressed: () => model.changeTheme())
            ],
          ),
          body: MultiScreenView(
            reuse: true,
            index: model.index,
            screens: _screenToDisplay.length,
            screenBuilder: (_, index) => _screenToDisplay[index],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.index,
            unselectedItemColor: Theme.of(context).disabledColor,
            fixedColor: Theme.of(context).primaryColor,
            onTap: model.changeTab,
            items: homeViewItems
                .map(
                  (homeViewItem) => BottomNavigationBarItem(
                    icon: Icon(homeViewItem.icon),
                    title: Text(
                      homeViewItem.title.toUpperCase(),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
