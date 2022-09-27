import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cadeiras.dart';


class TelaPagamento extends StatefulWidget {
  @override
  _TelaPagamentoState createState() => _TelaPagamentoState();
}
class _TelaPagamentoState extends State<TelaPagamento> {

     Widget _body(){
    return Column(
      
      children: [
        Container(
          height: 20,
        ),
          Row(
          children: [
          IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
          iconSize: 48,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed ('/Cadeiras');
           },
          ),
         ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Pagamento',style: TextStyle(color: Colors.white, fontSize: 30)),
            )
          ],
        ),
        Divider(
          height: 80,
        ),
        Container(
             child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(children: [
                    Container(
                    height: 30,
                    child: Text('Nome do titular', style: TextStyle(color: Colors.white, fontSize:15),),
                  ),   
                  ],),                   
                  TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "ex. Maria Silva",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                  Divider(
                    height: 20,
                  ),

                  Row(children: [
                    Container(
                    height: 30,
                    child: Text('Número do cartão', style: TextStyle(color: Colors.white, fontSize:15),),
                  ),   
                  ],),                   
                  TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "0000 0000 0000 0000",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                  Divider(
                    height: 40,
                  ),

                  Container(
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [                        
                        SizedBox(width: 50,),
                        Expanded(
                          child:TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "Data",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )
                        ),
                        Container(
                          width: 30,
                        ),
                        Expanded(
                          child:TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "CVV",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  )
                ),
                Divider(
                  height: 50,
                  ),
                Row(
                  children: [
                    Container(
                        child: Text('Valor total',style: TextStyle(color: Colors.white, fontSize: 20)),
                    )
                  ],
                ),
                RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('/telaPagamento');
                },
                child: Text("Pagar"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),        
              ] 
            )
          )
        )
      ]
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
