import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Filmes1 extends StatefulWidget {
  @override
  _Filmes1State createState() => _Filmes1State();
}

class _Filmes1State extends State<Filmes1> {

  Widget _body(){
   return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
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
            Navigator.of(context).pushReplacementNamed ('/Cinemas');
          },
          ),
          ],),
          Container(
            height: 20,
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/aranha.png', width: 150, height: 200),
                    ),
                  ),
                 Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/matrix.png', width: 150, height: 200),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/eternos.png', width: 150, height: 200),
                    ),
                  ),
                  Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/red.png', width: 150, height: 200),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/shang.png', width: 150, height: 200),
                    ),
                  ),
                  Container(
                    child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed ('/Filmesin');
                    },
                    child: Image.asset('assets/imgs/encan.png', width: 150, height: 200),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
