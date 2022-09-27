import 'package:flutter/material.dart';

enum ChatMessageType{text, audio, image, video}
enum MessageStatus{ not_sent, not_view, viewed}

class Mensagens{
  final String text;
  final ChatMessageType menssageType;
  final MessageStatus messageStatus;
  final bool isSender;

  Mensagens({
    required this.text,
    required this.menssageType,
    required this.messageStatus,
    required this.isSender,
  });

}

List demoMensagens= [
  Mensagens(text: "Te amoo meu bebe", 
  menssageType: ChatMessageType.text, 
  messageStatus: MessageStatus.viewed,
  isSender: false,
  ),
  Mensagens(text: "tá tiltada?", 
  menssageType: ChatMessageType.text, 
  messageStatus: MessageStatus.viewed,
  isSender: true,
  ),
    Mensagens(text: "num sei", 
  menssageType: ChatMessageType.audio, 
  messageStatus: MessageStatus.viewed,
  isSender: false,
  ),
    Mensagens(text: "bla", 
  menssageType: ChatMessageType.video, 
  messageStatus: MessageStatus.viewed,
  isSender: true,
  ),
];