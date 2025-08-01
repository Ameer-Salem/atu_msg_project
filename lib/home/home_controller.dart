import 'package:atu_msg_project/core/utilities/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeController {
  final String title = "My App";

  final String logoPath = AssetsManager.atuLogo;

  SvgPicture logo = SvgPicture.asset(AssetsManager.atuLogo, width: 48, height: 48);

  final List<NavigationDestination> destinations = [
    NavigationDestination(
      label: ('Home'),
      icon: Icon(Icons.home),
      selectedIcon: Icon(Icons.home_filled),
    ),
    NavigationDestination(
      label: ('Settings'),
      icon: Icon(Icons.settings),
      selectedIcon: Icon(Icons.settings_rounded),
    ),
    NavigationDestination(
      label: ('About'),
      icon: Icon(Icons.info),
      selectedIcon: Icon(Icons.info_rounded),
    ),
  ];

  double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
}
