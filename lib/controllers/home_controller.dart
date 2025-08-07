import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:atu_msg_project/models/user_model.dart';
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

  String title = "ATU Messenger";

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

  List<UserModel> users = List.generate(15, (index){
    return UserModel(name: "User ${index + 1}", message: 'This is a message from user ${index + 1}');
  });

  //getters methods
  double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
  AdaptiveThemeMode getAdaptiveThemeMode(BuildContext context) =>
      AdaptiveTheme.of(context).mode;


  IconData getThemeIcon(BuildContext context) {
    final isDark = getAdaptiveThemeMode(context);
    if (isDark == AdaptiveThemeMode.dark) return Icons.dark_mode_rounded;
    if (isDark == AdaptiveThemeMode.light) return Icons.light_mode_rounded;
    return Icons.monitor_outlined;
  }

  Widget setMobileLayout() {
    currentDevice = CurrentDevice.mobile;
    return MobileLayout();
  }
  //setters methods
  Widget setTabletLayout() {
    currentDevice = CurrentDevice.tablet;
    return TabletLayout();
  }

  Widget setWebLayout() {
    currentDevice = CurrentDevice.web;
    return WebLayout();
  }

  //changers methods
  void changePage(int index) {
    currentPageIndex = index;
    notifyListeners();
  }

  void changeTitle(String title) {
    this.title = title;
    notifyListeners();
  }
  //other methods
  void toggleTheme(BuildContext context) {
    AdaptiveTheme.of(context).toggleThemeMode();
  }
}
