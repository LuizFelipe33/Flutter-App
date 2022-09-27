import 'package:cinetalk/controlador.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CineTalk"),
        actions: [switch1()],
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("contador $counter"),
            Container(height: 10),
            switch1(),
            Container(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
                Container(
                  height: 20,
                ),
                RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/pagamento');
                }, 
                child: Text("Cadastro"),
                color: Color.fromRGBO(223,128,33,1),),
                RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/Principal');
                }, 
                child: Text("Filmes"),
                color: Color.fromRGBO(223,128,33,1),),
              ],
              
            )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
           });
        },
      ),
    );
  }


}

class switch1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: controller.instance.temaPreto,
          onChanged: (value) {
            controller.instance.changeTheme();          
      },);
  }
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color.fromRGBO(9,32,66,1)),
        ],
      )
    );
  }