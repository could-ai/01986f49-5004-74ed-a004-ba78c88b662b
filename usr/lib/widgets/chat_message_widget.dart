import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/chat_message_model.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessage message;

  const ChatMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text(message.sender[0].toUpperCase())),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(message.sender, style: Theme.of(context).textTheme.titleMedium),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(message.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
