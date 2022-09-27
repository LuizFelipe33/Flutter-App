import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TelaMatch extends StatefulWidget {
  @override
  _TelaMatchState createState() => _TelaMatchState();
}

class _TelaMatchState extends State<TelaMatch> {

  final imageListMach = [
    'https://s2.glbimg.com/yQF2IgQfqEUwlvyPng6wQ5GzDLw=/696x390/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/T/9/eTHsI7QO6y3fSIBqtYyw/casimiro.jpg',
    'https://i.pinimg.com/564x/f7/f2/a9/f7f2a9726a29b3f2666ef6664bb9e024.jpg',
    'https://criadoresid.com/wp-content/uploads/2016/10/Captura-de-Tela-2020-02-13-a%CC%80s-16.33.42.png',
    'https://quantosanos.com.br/wp-content/uploads/2021/07/bruno-bock-idade-758x448.jpg',
    'https://pbs.twimg.com/profile_images/1250114386540351488/0ep5Y3Mn_400x400.jpg'
  ];

  final Names = [
    'Case',
    'Alanzoka',
    'GordoKof',
    'Bruno',
    'Rolandinho'
  ];

  
CarouselController carouselController = CarouselController();

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
            Navigator.of(context).pushReplacementNamed ('/Principal');
          },
          ),
          ],),
          Container(
            height: 20,
          ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed ('/matchSala');
                      },
                      child: Image.asset('assets/imgs/aranha.png', width: 150, height: 200),
                      ),
                    ),
                  ),
                   Text("Peter",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed ('/matchSala');
                      },
                      child: Image.asset('assets/imgs/aranha.png', width: 150, height: 200),
                      ),
                    ),
                  ),
                   Text("Nome",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed ('/matchSala');
                      },
                      child: Image.asset('assets/imgs/shang.png', width: 150, height: 200),
                      ),
                    ),
                  ),  
                   Text("Nome",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))          
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed ('/matchSala');
                      },
                      child: Image.asset('assets/imgs/shang.png', width: 150, height: 200),
                      ),
                    ),
                  ),  
                   Text("Nome",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))          
                ],
              ),
            ],
          ),
        )
  );
}


  Widget buildImage(String imageListMach, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    child: Image.network(
      imageListMach,
      fit: BoxFit.cover,
      
    ),
  );

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

