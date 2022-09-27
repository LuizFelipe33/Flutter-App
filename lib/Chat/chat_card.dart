import 'package:cinetalk/services/Chat_class.dart';
import 'package:flutter/material.dart';

class ChatCards extends StatelessWidget {
  const ChatCards({
    Key? key, required this.chat, required this.press,
  }) : super(key: key);
  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(chat.image),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Text(chat.name, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),),
                    SizedBox(
                      height: 8,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage, 
                        maxLines: 1, 
                        overflow: TextOverflow.ellipsis, 
                        style: TextStyle (color: Colors.white),))  
                  ],
                ),
              )
            ),
            Text(chat.time, style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}