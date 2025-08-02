import 'package:atu_msg_project/utilities/assets_manager.dart';
import 'package:atu_msg_project/layouts/mobile_layout.dart';
import 'package:atu_msg_project/layouts/tablet_layout.dart';
import 'package:atu_msg_project/layouts/web_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum CurrentDevice { mobile, tablet, web }

class MainController extends ChangeNotifier {
  CurrentDevice? currentDevice;
  int currentPageIndex = 0;

  final String logoPath = AssetsManager.atuLogo;
  final SvgPicture _logo = SvgPicture.asset(
    AssetsManager.atuLogo,
    width: 48,
    height: 48,
  );
  SvgPicture get logo => _logo;

  String title = "Home";

  List<NavigationDestination> get destinations => [
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
  ];

  double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  Widget setMobileLayout() {
    currentDevice = CurrentDevice.mobile;
    return MobileLayout();
  }

  Widget setTabletLayout() {
    currentDevice = CurrentDevice.tablet;
    return TabletLayout();
  }

  Widget setWebLayout() {
    currentDevice = CurrentDevice.web;
    return WebLayout();
  }

  void changePage(int index) {
    switch (index) {
      case 0:
        title = "Home";
        break;
      case 1:
        title = "Settings";
        break;
    }
    currentPageIndex = index;
    notifyListeners();
  }
}
