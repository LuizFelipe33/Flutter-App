import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Horarios extends StatefulWidget {
  @override
  _HorariosState createState() => _HorariosState();
}

class _HorariosState extends State<Horarios> {

  void _showDataPicker(){
     showDatePicker(
       context: context, 
       initialDate: DateTime.now(), 
       firstDate: DateTime(2022),
       lastDate: DateTime(2023),
     );
   }
   Widget _body(){
    return Column(
      
      children: [
        Divider(height: 30),

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
            
            Divider(height: 110),
            Container(
              child: Text('Sala 1', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('/Cadeiras');
                },
                child: Text("13:30"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("15:45"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("17:20"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              ],
            ),
            Divider(height: 40),
            Container(
              child: Text('Sala 2', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("14:10"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("16:00"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("17:50"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              ],
            ),
            Divider(height: 40),
            Container(
              child: Text('Sala 3', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("15:00"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("18:30"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('');
                },
                child: Text("22:00"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
          ],
        )
      ],
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

