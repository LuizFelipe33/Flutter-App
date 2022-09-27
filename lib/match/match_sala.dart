import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MatchSala extends StatefulWidget {
  @override
  MatchSalaState createState() => MatchSalaState();
}

class MatchSalaState extends State<MatchSala> {

  final imageListMach = [
    'https://s2.glbimg.com/yQF2IgQfqEUwlvyPng6wQ5GzDLw=/696x390/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/T/9/eTHsI7QO6y3fSIBqtYyw/casimiro.jpg',
    'https://i.pinimg.com/564x/f7/f2/a9/f7f2a9726a29b3f2666ef6664bb9e024.jpg',
    'https://criadoresid.com/wp-content/uploads/2016/10/Captura-de-Tela-2020-02-13-a%CC%80s-16.33.42.png',
    'https://quantosanos.com.br/wp-content/uploads/2021/07/bruno-bock-idade-758x448.jpg',
    'https://pbs.twimg.com/profile_images/1250114386540351488/0ep5Y3Mn_400x400.jpg'
  ];

  
CarouselController carouselController = CarouselController();

Widget _body(){
      return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
             Stack(
                children: [
                  Container(
                    width: 600,
                    height: 200,
                    decoration: BoxDecoration(
                    boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(58, 0, 0, 0),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                    ],
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(223, 128, 33, 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                            icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255), size: 30,),
                            iconSize: 48,
                            onPressed: () {
                            Navigator.of(context).pushReplacementNamed ('/telamatch');
                            },
                            )
                        ],
                      ),
                    Container(
                      width: 200,
                      height: 200,
                        child: Stack(
                          fit: StackFit.expand,
                          overflow: Overflow.visible,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/imgs/aranha.png')
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top:270),
                  child: Column(
                    children: [
                      Container(
                      child: Text(
                          'Peter',
                           style: TextStyle( color: Colors.white, fontSize: 30),
                      )
                      ),
                      Divider( height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          child: Text(
                            'Oi, eu sou Peter Paker. Eu sou atletico, inteligente e alguns até me chamam de herói, kk. Amo filmes de super heróis',
                            style: TextStyle( color: Colors.white, fontSize: 16),
                          )
                        ),
                      ),                      
                    ],
                  ),
                  ),
              ],
            ),
          ],
        ),
      )
    )
  );      
}




@override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(223, 128, 33, 1),
        child: Icon(Icons.favorite, color: Color.fromARGB(255, 0, 33, 79)),
        onPressed: () { 
          Navigator.of(context).pushReplacementNamed ('/telamatch');
         },),
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

