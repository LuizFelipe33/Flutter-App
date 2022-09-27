import 'package:flutter/material.dart';

import '../services/ChatMensagem.dart';
import 'textMensagem.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key, required this.message,
  }) : super(key: key);

  final Mensagens message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender)
          ...[CircleAvatar(
          radius: 12,
          backgroundImage: AssetImage(""),
          )],
          TextMessage(message: message),
        ],
      ),
    );
  }
}