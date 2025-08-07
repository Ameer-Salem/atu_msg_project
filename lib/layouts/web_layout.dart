import 'package:atu_msg_project/controllers/main_controller.dart';
import 'package:atu_msg_project/widgets/chats_list_widget.dart';
import 'package:atu_msg_project/widgets/drawer_widget.dart';
import 'package:atu_msg_project/widgets/messaging_widget.dart';
import 'package:atu_msg_project/widgets/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);

    return Scaffold(
      drawer: DrawerWidget(),
      body: Row(
        children: [
          Flexible(fit: FlexFit.tight, flex: 3, child: ChatsList()),
          VerticalDivider(width: 1, thickness: 1),
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: Column(
              children: [
                AppBar(
                  title: Text(controller.title),
                  automaticallyImplyLeading: false,
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      switch (controller.currentPageIndex) {
                        case 0:
                          return MessagingWidget();
                        case 1:
                          return const SettingsWidget();
                        default:
                          return MessagingWidget();
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
