import 'dart:math';

import 'package:flutter/material.dart';

class Message {
  late String text;
  late bool sender;
  Message({required this.text, required this.sender});
}

class MessageModel extends StatelessWidget {
  const MessageModel({super.key});


  @override
  Widget build(BuildContext context) {
    final random = Random();
    final List<String> sampleMessages = [
      "Hey, how's it going?",
      "Did you get my last message?",
      "Let's meet tomorrow.",
      "What's up?",
      "I’ll be there in 10 minutes.",
      "Check your email.",
      "Can you help me with this?",
      "It’s working now!",
      "I'll call you later.",
      "Don’t forget our meeting.",
    ];

    Message message = Message(
      text: sampleMessages[random.nextInt(sampleMessages.length)],
      sender: random.nextBool(),
    );
    
    return Align(
      alignment: message.sender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(16.0),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: message.sender ? Colors.blue : Colors.grey.shade200,
        ),
        child: Text(
          message.text,
          style: TextStyle(
            color: message.sender ? Colors.white : Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
