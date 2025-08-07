import 'package:atu_msg_project/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagingWidget extends StatelessWidget {
  const MessagingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => MessageModel(),
            ),
          ),
        ),
        Container(
          height: 60,
          color: Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: "Type a message",
                      ),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 2,left: 3),
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: Icon(Icons.send_rounded,size: 30,),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
