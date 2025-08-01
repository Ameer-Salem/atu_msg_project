import 'package:atu_msg_project/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context); 
    
    return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              leading: controller.logo,
              selectedIndex: 0,
              destinations: controller.destinations
                  .map(
                    (e) => NavigationRailDestination(
                      icon: e.icon,
                      label: Text(e.label),
                    ),
                  )
                  .toList(),
            ),
            VerticalDivider(),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(title: Text(controller.title)),
                  ),
                  Expanded(child: Center(child: Text('${controller.getScreenWidth(context)}'))),
                ],
              ),
            ),
          ],
        ),
      );
  }
}