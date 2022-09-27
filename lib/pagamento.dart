import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

class Pagamento extends StatefulWidget {
  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('MercadoPago Pagamento')),
      body: Center(
        child: Column(
          children: <Widget>[
             RaisedButton(onPressed: () async {
               
                 PaymentResult result = await MercadoPagoMobileCheckout.startCheckout(
                    "TEST-d467679f-3e1e-46dd-99a7-998a23a2b3f2",
                    "304900499-24e3b569-ac51-4c0c-85f2-3b9b2ae4557a",
                  );
                  print(result.toString());
              }, 
              child: Text("Pagamento"),
              color: Color.fromRGBO(223,128,33,1),),
        ]),
      ),
    );
  }
  
  
}