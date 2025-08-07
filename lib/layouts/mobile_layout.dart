import 'package:atu_msg_project/controllers/home_controller.dart';
import 'package:atu_msg_project/widgets/chats_list_widget.dart';
import 'package:atu_msg_project/widgets/options_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);

    return Scaffold(
      
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(8),
        actions: [
          IconButton(
            onPressed: () {
              controller.toggleTheme(context);
            },
            icon: Icon(controller.getThemeIcon(context)),
        )],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: controller.logo,
        ),
        title: Text(controller.title),
      ),
      body: Builder(builder: (context){
            switch (controller.currentPageIndex) {
              case 0:
                return ChatsList();
              case 1:
                return const Options();
              default:
                return  ChatsList();
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => controller.changePage(index),
        currentIndex: controller.currentPageIndex,
        items: controller.destinations
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
            .toList(),
      ),
    );
  }
}
