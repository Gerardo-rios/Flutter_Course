import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/08191f3a-35e9-4d24-84d6-b9796714f798/d6e3g88-6c6667f2-9b55-4c72-9136-5bfebb53d9fe.png/v1/fill/w_256,h_256/chloe_grace_moretz_tg_by_dartmuth_d6e3g88-fullview.png"),
            )),
        title: const Text('My Love'),
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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const MyMessageBubble(message: 'hola');
                },
              ),
            ),
            const Divider(height: 1),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
