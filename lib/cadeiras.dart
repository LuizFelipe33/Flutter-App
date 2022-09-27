import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';


class Cadeiras1 extends StatefulWidget {
  @override
  _Cadeiras1State createState() => _Cadeiras1State();
}


int valor = 0;

class _Cadeiras1State extends State<Cadeiras1> {

  List aaa = ['a1','a2','a3','a4','a5','a6','b1','b2','b3','b4','b5','b6','c1','c2','c3','c4','c5','c6','d1','d2','d3','d4','d5','d6'];
  
  

  Color _iconColor = Color.fromRGBO(223, 128, 33, 1);
  Color _iconColor1 = Color.fromRGBO(223, 128, 33, 1);
  Color _iconColor2 = Color.fromRGBO(223, 128, 33, 1);
  Color _iconColor3 = Color.fromRGBO(223, 128, 33, 1);
  Color _iconColor4 = Color.fromRGBO(223, 128, 33, 1);
  Color _iconColor5 = Color.fromRGBO(223, 128, 33, 1);

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
            Navigator.of(context).pushReplacementNamed ('/Horarios');
           },
          ),
         ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Sala 1',style: TextStyle(color: Colors.white, fontSize: 20)),
            )
          ],
        ),
        Divider(
          height: 30,
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    valor = valor + 23;
                    setState(() {
                      _iconColor = Colors.white;
                    });                
                  },
                  ),
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor1, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    valor = valor + 23;
                    setState(() {
                      _iconColor1 = Colors.white;
                    });                
                  },
                  ),
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor2, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    valor = valor + 23;
                    setState(() {
                      _iconColor2 = Colors.white;
                    });                
                  },
                  ),
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor3, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    valor = valor + 23;
                    setState(() {
                      _iconColor3 = Colors.white;
                    });                
                  },
                  ),
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor4, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                    valor = valor + 23;
                    setState(() {
                      _iconColor4 = Colors.white;
                    });                
                  },
                  ),
                  IconButton(
                  icon: Icon(Icons.chair, color: _iconColor5, size: 30,),
                  iconSize: 48,
                  onPressed: () {
                      valor = valor + 23;
                      setState(() {
                      _iconColor5 = Colors.white;
                    });                    
                   },
                  ),
                                      
                ],
              ),
              RaisedButton(
                onPressed: () {
                  print(valor);
                  setState(() {
                  _iconColor = Color.fromRGBO(223, 128, 33, 1);
                  _iconColor1 = Color.fromRGBO(223, 128, 33, 1);
                  _iconColor2 = Color.fromRGBO(223, 128, 33, 1);
                  _iconColor3 = Color.fromRGBO(223, 128, 33, 1);
                  _iconColor4 = Color.fromRGBO(223, 128, 33, 1);
                  _iconColor5 = Color.fromRGBO(223, 128, 33, 1);
                  });  
                },
                child: Text("Apagar"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              RaisedButton(onPressed: () async {
               
                 PaymentResult result = await MercadoPagoMobileCheckout.startCheckout(
                    "TEST-d467679f-3e1e-46dd-99a7-998a23a2b3f2",
                    "304900499-24e3b569-ac51-4c0c-85f2-3b9b2ae4557a",
                  );
                  print(result.toString());
              }, 
              child: Text("Pagamento"),
              color: Color.fromRGBO(223,128,33,1),),
            ],
          ),
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

