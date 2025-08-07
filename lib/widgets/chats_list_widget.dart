import 'package:atu_msg_project/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 18.0,
            right: 4,
            left: 0,
            bottom: 8,
          ),
          child: Row(
            spacing: 2,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu_rounded),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SearchBar(hintText: 'Search'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                controller.changeTitle(controller.users[index].name);
              },
              leading: CircleAvatar(
                backgroundColor: Color(0xff112ff * (index + 55)),
                child: Text("${index + 1}"),
              ),
              title: Text(
                controller.users[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                controller.users[index].message!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
