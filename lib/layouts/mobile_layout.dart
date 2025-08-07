import 'package:atu_msg_project/widgets/chats_list_widget.dart';
import 'package:atu_msg_project/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: ChatsList()
    );
  }
}
