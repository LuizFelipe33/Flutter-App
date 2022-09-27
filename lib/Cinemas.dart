import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Cinemas1 extends StatefulWidget {
  @override
  _Cinemas1State createState() => _Cinemas1State();
}

class _Cinemas1State extends State<Cinemas1> {
  
  Widget _body(){
    return SingleChildScrollView(
      child: Column(
      children: [
        Container(
          height: 30,
        ),
        Row(
          children: [
          IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
          iconSize: 48,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed ('/Principal');
          },
        ),
        ],),
        Container(
            width: 340.0,
            child: TextField(     
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 97, 97, 97),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
              ),                            
              style: TextStyle(
                height: 1,
                fontSize: 20.0,
                color: Colors.black,
              )
            )
        ),
        Container(
          height: 40,
        ),        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed ('/Filmes');
          },
          child: Image.asset('assets/imgs/RioMar.jpg', width: 200, height: 100,fit: BoxFit.cover,),
          ),
         ),
            Text("Rio Mar",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
        ],
      ),
      Divider(height: 50,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
          child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed ('/Filmes');
          },
          child: Image.asset('assets/imgs/Tacaruna.jpg', width: 200, height: 100, fit: BoxFit.cover,),
          ),
          ),
            Text("Tacaruna",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
          ],
         ),
        Divider(height: 50,),
          Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed ('/Filmes');
          },
          child: Image.asset('assets/imgs/Nw.jpg', width: 200, height: 100, fit: BoxFit.cover,),
          ),
          ),

            Text("North Way",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
          ],
        )
      ],
    )
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