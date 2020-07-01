import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeViewItem {
  final IconData icon;
  final String title;

  HomeViewItem({this.icon, this.title});
}

final homeViewItems = <HomeViewItem>[
  HomeViewItem(
    icon: FeatherIcons.feather,
    title: 'Newsfeed',
  ),
  HomeViewItem(
    icon: FeatherIcons.messageCircle,
    title: 'Chat',
  ),
  HomeViewItem(
    icon: FeatherIcons.user,
    title: 'Profile',
  ),
];
