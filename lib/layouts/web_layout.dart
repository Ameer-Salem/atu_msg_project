import 'package:atu_msg_project/controllers/home_controller.dart';
import 'package:atu_msg_project/widgets/chats_list_widget.dart';
import 'package:atu_msg_project/widgets/messaging_widget.dart';
import 'package:atu_msg_project/widgets/options_widget.dart';
import 'package:atu_msg_project/widgets/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            leading: controller.logo,
            selectedIndex: controller.currentPageIndex,
            destinations: controller.destinations
                .map(
                  (e) => NavigationRailDestination(
                    icon: e.icon,
                    label: Text(e.label),
                  ),
                )
                .toList(),
            onDestinationSelected: (index) => controller.changePage(index),
          ),
          VerticalDivider(),
          Flexible(fit: FlexFit.tight, flex: 3, child: Builder(builder: (context){
            switch (controller.currentPageIndex) {
              case 0:
                return ChatsList();
              case 1:
                return const Options();
              default:
                return const ChatsList();
            }
          })),
          VerticalDivider(),
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(title: Text(controller.title)),
                ),
                Expanded(
                  child: Builder(builder: (context){
            switch (controller.currentPageIndex) {
              case 0:
                return MessagingWidget();
              case 1:
                return const SettingsWidget();
              default:
                return const MessagingWidget();
            }
          })
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
