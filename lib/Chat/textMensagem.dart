import 'package:flutter/material.dart';

import '../services/ChatMensagem.dart';


class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key, required this.message,
  }) : super(key: key);

  final Mensagens message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(color:Color.fromRGBO(223, 128, 33, 1).withOpacity(message.isSender ? 1 : 0.4), borderRadius:  BorderRadius.circular(30)),
      child: Text(message.text, style: TextStyle(color:Colors.white ),));
  }
}