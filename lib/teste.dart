import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinetalk/cadeiras.dart';
import 'package:cinetalk/filmesin.dart';
import 'package:cinetalk/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  int index = 0;

  final List<String> imageList = [
    'https://pbs.twimg.com/media/E_qHbEYXIAQzRUu.jpg:large',
    'https://uauposters.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/1/911720211216-uau-posters-jujutsu-kaisen-animes-3.jpg',
    'https://sm.ign.com/ign_br/screenshot/default/hasvc-cartazposted-1080x1350px-data_ydrv.jpg',
    'https://pipocanamadrugada.com.br/site/wp-content/uploads/2021/11/Red-Crescer-e-uma-Fera.jpg',

    ];
  Widget _body(){
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListView(
            children: [
              Container(
                height: 50,
              ),
              Container(
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                      ),
                      Container(
                        child:Text('Olá, <Pessoa!>', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20)),
                      )
                    ],
                  )
                ],)  
              ),     
        Container(
          height: 5,
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton.icon(onPressed: () async {
                    Navigator.of(context).pushReplacementNamed ('/Cinemas');
                  }, 
                    icon: Icon(
                      Icons.theaters
                  ),
                    label: Text('Compre seu ingresso'),
                    color: Color.fromRGBO(223,128,33,1),
                    ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 300,
        ),
        Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                  padding: const EdgeInsets.all(10.0),   
                    child: CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                      items: imageList.map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(e,
                            fit: BoxFit.cover)
                          ],
                        ),
                      )).toList(),
                    )
                  ),
                ),
              Divider( height: 10,),
              Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(38)),
                  Container(
                    color: Color.fromRGBO(223,128,33,1),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                Expanded(child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed ('/Principal');
                  },
                  icon: Icon(Icons.home, size: 30, color: Color.fromARGB(255, 0, 32, 44),),
                ),),
                
                Expanded(child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed ('/telamatch');
                  },
                  icon: Icon(Icons.favorite, size: 30,color: Color.fromARGB(255, 0, 32, 44)),
                ),),
                Expanded(child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed ('/Chats');
                  },
                  icon: Icon(Icons.message, size: 30,color: Color.fromARGB(255, 0, 32, 44)),
                ),),
                Expanded(child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings, size: 30,color: Color.fromARGB(255, 0, 32, 44)),
                ),),
                Expanded(child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed ('/telaperfil');
                  },
                  icon: CircleAvatar(backgroundImage: AssetImage("assets/imgs/gyo.jpg"),),
                ),),
              ]
              ),
            ),
            ],
          ),
        ),            
       ]
      )
    )
  )
],
)
),
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

