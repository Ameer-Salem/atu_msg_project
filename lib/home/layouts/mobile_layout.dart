import 'package:atu_msg_project/home/home_controller.dart';
import 'package:atu_msg_project/home/widgets/chats_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
            child: controller.logo,
          ),
          title: Text(controller.title),
        ),
        body: ChatsList(),
        bottomNavigationBar: BottomNavigationBar(items: controller.destinations.map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label)).toList()),
      );
  }
}