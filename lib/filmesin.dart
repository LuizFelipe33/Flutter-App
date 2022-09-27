import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinetalk/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';


class Filmesin1 extends StatefulWidget {
  @override
  _Filmesin1State createState() => _Filmesin1State();
}
class Receiveinf {
  late String titulo;
  late String sinopse;
  late String duracao;
  late String sala;

  String get sinps {
    return sinopse;
  }
  set sinps1(String snps) {
      sinopse = snps;
    }

  set titulos1(String title) {
    titulo = title;
  }

  String get titles {
    return titulo;
  }

}

class _Filmesin1State extends State<Filmesin1> {

  String content = getearly.sinps;
   
   Widget _body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(height: 10),
          Row(
          children: [
          IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
          iconSize: 48,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed ('/Filmes');
           },
          ),
         ],
        ),
        Container(
        height: MediaQuery.of(context).size.height * 0.65,
        width: MediaQuery.of(context).size.width * 8,
        child: Image.network('https://firebasestorage.googleapis.com/v0/b/cinetalk1-1a731.appspot.com/o/aranha.png?alt=media&token=2a230b4a-7683-4193-b2a3-fb724d21b7b6')
        ),
        Divider(
          height: 1,
        ),
        RaisedButton.icon(onPressed: () async {
        Navigator.of(context).pushReplacementNamed ('/Horarios');
        }, 
        icon: Icon(
        Icons.theaters
        ),
        label: Text('Compre seu ingresso'),
        color: Color.fromRGBO(223,128,33,1),),

        Divider(height: 10),

        Container(
          child: Column(
          children: [ 

          Container(
          width: 300,  
          child:Text(getearly.titles, style:TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  25) ),
          ),
          Divider(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child: Center(
                    child: Text('Ação', style: TextStyle(color:Colors.white ),textAlign: TextAlign.center,),
                  ),
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child: Center(
                    child: Text('Aventura', style: TextStyle(color:Colors.white ),textAlign: TextAlign.center,),
                  ),
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child: Center(
                    child: Text('Ficção', style: TextStyle(color:Colors.white ),textAlign: TextAlign.center,),
                  ),
                ),
              ] 
          ),
          Container(height: 20),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(Icons.access_time ,size: 15, color: Colors.white,),
                ),
                TextSpan(
                  text: "2h 30m",
                ),
              ],
            ),
          ),
          Container(height: 10),
          Container(
          padding: EdgeInsets.all(15),
          child: ReadMoreText(content, trimLines: 3,
          textAlign: TextAlign.justify, 
          trimMode: TrimMode.Line,
          trimCollapsedText: "Ler Mais.",
          trimExpandedText: 'Ler Menos.',
          lessStyle: TextStyle(
          fontSize: 15,
          color: Colors.white,
          ),
          moreStyle: TextStyle(
          fontSize: 15,
          color: Colors.white
          ),
            ),
           ),
          ]
         ),
        )
       ], 
      ),     
    );
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(  
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 33, 79),
                Color.fromARGB(255, 0, 32, 44),
              ],
            )
          ), 
        ),
          _body(),
        ],
      )
    );
  }
}

