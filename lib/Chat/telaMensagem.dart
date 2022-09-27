import 'package:cinetalk/Chat/bodyMensagem.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Menssagens extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 33, 79),
      appBar: buildAppBar(),
      body: Body(),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(223, 128, 33, 1),
      automaticallyImplyLeading: false,
      title: Row(children: [
        BackButton(),
        CircleAvatar(backgroundImage: AssetImage("assets/imgs/gyo.jpg"),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("GyovanaTop<3", style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 32, 44),),),
            Text("Ativo 1m atrás",style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 32, 44),)),
          ],
        ),
      ]
      ),
    );
  }
}