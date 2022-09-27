import 'package:cinetalk/Chat/textMensagem.dart';
import 'package:cinetalk/services/ChatMensagem.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'chat_input_fild.dart';
import 'mensagem.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
            itemCount: demoMensagens.length,
            itemBuilder: (context, index) => Message(message: demoMensagens[index],))),
          
        ),
        botaoEnviarMensagem(),
      ],
    );
  }
}





