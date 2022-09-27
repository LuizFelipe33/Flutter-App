import 'package:flutter/material.dart';

class botaoEnviarMensagem extends StatelessWidget {
  const botaoEnviarMensagem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(color: Color.fromARGB(255, 0, 33, 79),
      boxShadow: [BoxShadow(offset:  Offset(0,4),
      blurRadius: 32,
      color: (Color(0xFF087949).withOpacity(0.09))),
      
      ],),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: Color.fromRGBO(223, 128, 33, 1)),
            SizedBox(width: 20,),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(horizontal:  10),
              height: 50,
              decoration: BoxDecoration(color: Color.fromARGB(62, 223, 128, 33),
              borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Icon(Icons.sentiment_satisfied_outlined, color: Color.fromRGBO(223, 128, 33, 1),
                  ),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "Escreva uma mensagem",
                      border: InputBorder.none),
                  )
                  ),
            Icon(Icons.attach_file, color: Color.fromRGBO(223, 128, 33, 1),
            ),
            SizedBox(width: 5,),
            Icon(Icons.camera_alt_outlined, color: Color.fromRGBO(223, 128, 33, 1),
            ),
                ],
                
              ), 
            )
          ),    
      ]),),
    );
  }
}