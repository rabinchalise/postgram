import 'package:flutter/material.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/dummydata/dummy_data.dart';
import 'package:job_finder/utils/extension.dart';
import 'widgets/chat_list.dart';

class ChatSCreen extends StatelessWidget {
  const ChatSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: Text(
            'Inbox',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Message'),
                    ),
                    16.0.verticalSpacer,
                    const Text('Recent Message',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    16.0.verticalSpacer,

                    // for (var chat in DummyData.chats) ChatList(chat: chat)

                    ...DummyData.chats.map((chat) => ChatList(chat: chat))
                  ])),
        ));
  }
}
