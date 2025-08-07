import 'package:atu_msg_project/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<MainController>(context);
    
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: (30)),
            child: Column(
              children: [
                CircleAvatar(radius: 60),
                SizedBox(height: 20),
                Text(
                  "User Name",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Divider(thickness: 0,height: 0,),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                ListTile(
                  title: Text("Chats"),
                  leading: Icon(Icons.message_rounded),
                  onTap: () {
                    controller.changePage(0);
                  }),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings_rounded),
                  onTap: () {
                    controller.changePage(1);
                  }),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Align(alignment: Alignment.bottomRight, child: IconButton(
                    onPressed: () {
                      controller.toggleTheme(context);
                    },
                    icon: Icon(controller.getThemeIcon(context),size: 30,),
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeController {
}
