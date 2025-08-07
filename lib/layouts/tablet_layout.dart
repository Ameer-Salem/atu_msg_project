import 'package:atu_msg_project/controllers/home_controller.dart';
import 'package:atu_msg_project/widgets/chats_list_widget.dart';
import 'package:atu_msg_project/widgets/navigationrail_widget.dart';
import 'package:atu_msg_project/widgets/options_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);

    return Scaffold(
      body: Row(
        children: [
          NavigationRailWidget(),
          VerticalDivider(),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(title: Text(controller.title)),
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      switch (controller.currentPageIndex) {
                        case 0:
                          return ChatsList();
                        case 1:
                          return const Options();
                        default:
                          return  ChatsList();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
