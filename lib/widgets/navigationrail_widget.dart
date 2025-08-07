import 'package:atu_msg_project/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationRailWidget extends StatelessWidget {
  const NavigationRailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);

    return NavigationRail(
      groupAlignment: 0,
      leading: controller.logo,
      trailing: Column(
        children: [
          IconButton(
            onPressed: () {
              controller.toggleTheme(context);
            },
            icon: Icon(controller.getThemeIcon(context)),
          ),
          SizedBox(height: 100),
        ],
      ),
      selectedIndex: controller.currentPageIndex,
      destinations: controller.destinations
          .map(
            (e) =>
                NavigationRailDestination(icon: e.icon, label: Text(e.label)),
          )
          .toList(),
      onDestinationSelected: (index) => controller.changePage(index),
    );
  }
}
