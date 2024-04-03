import 'package:flamingo/home/event_show_page/chat/chat_panel/chat_panel.dart';
import 'package:flamingo/home/event_show_page/chat/send_message/send_message.dart';
import 'package:flutter/material.dart';

class EventChat extends StatefulWidget {
  const EventChat({super.key});

  @override
  State<EventChat> createState() => _EventChatState();
}

class _EventChatState extends State<EventChat> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Column(
          children: [
            ChatPanel(
              size: size,
            ),
            SendMessage(
              controller: controller,
              size: size,
            ),
          ],
        );
      },
    );
  }
}
