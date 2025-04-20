import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://imgs.search.brave.com/M1ClzsWx8c0UCv2MHf1cjAEZqe87_uppKbLL-Oyw3vA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly92ei5j/bndpbWcuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE5LzA5/L0plbm5pZmVyLUFu/aXN0b24tMS5qcGc',
            ),
          ),
        ),
        title: Text('Usuario_1'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? HerMessageBubble()
                      : MyMessageBubble();
                },
              ),
            ),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
