import 'package:flutter/material.dart';

import '../../../models/chat_model.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(chat.imgUrl),
          radius: 28,
        ),
        onTap: () {},
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chat.profileName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              chat.chatMessage,
              style: const TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        trailing: Text(
          chat.time,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
    );
  }
}
