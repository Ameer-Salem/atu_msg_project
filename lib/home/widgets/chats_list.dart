import 'package:atu_msg_project/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Column(
      children: [
        if (controller.currentDevice == CurrentDevice.web) Padding(padding: const EdgeInsets.all(8.0), child: TextField()),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text("person ${index+1}"),
              subtitle: Text("This is a subtitle from person ${index+1}"),
            ),
          ),
        ),
      ],
    );
  }
}
