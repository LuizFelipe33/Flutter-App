import 'package:cinetalk/home_page.dart';
import 'package:cinetalk/teste.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Cadastro/cadastro.dart';
import 'filmesin.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}
var getearly = Receiveinf();

List nova(indexes) {
  List gett = [];
  var new2;
  Stream<QuerySnapshot<Map<String, dynamic>>> cont =
      FirebaseFirestore.instance.collection('filmes_teste').snapshots();
  cont.listen((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) => gett.add(doc.data()));
  });
  new2 = cont;
  return gett;
}

var test = nova('0');
var lista = test[0];
var sinp45 = lista['sinopse'];
var title45 = lista['titulo'];
class _loginState extends State<login> {
  static const _baseUrl =
      'https://console.firebase.google.com/u/3/project/cinetalk1-1a731/database/cinetalk1-1a731-default-rtdb/data/~2F';
  String email = "";
  String senha = "";
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Principal()));
  }

  Widget _body() {
    var row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () {
            getearly.titulos1 = title45;
            getearly.sinps1 = sinp45;
            print(sinp45);
          },
          child: Text('Google'),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("Facebook"),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ],
    );
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 300,
                  child: Image.asset('assets/imgs/pipoca.png')),
              Container(
                child: 
                Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column( 
                  children: [
                    TextField(
                      controller: _emailController,
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "Email",
                          enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                   ),                 
                 ),
                ),
                Divider(
                  height: 20,
                ),
                  TextField(
                    controller: _passwordController,
                    onChanged: (text1) {
                      senha = text1;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        labelText: "Senha",
                        enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                   ),                 
                 ),
                ),
              ],
            ),
          ),
        ),
              Divider(
                height: 10,
              ),     
              RaisedButton(
                onPressed: () {
                  signIn();
                },
                child: Text("Entrar"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              Container(
                height: 20,
              ),
              Container(child: row),
               Container(
                height: 20,
              ),
              
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('/cadastro');
                },
                child: Text("Cadastro"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
             
            ],
          ),
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
          height: 1000,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 0, 33, 79),
              Color.fromARGB(255, 1, 53, 72),
            ],
          )),
        ),
        _body(),
      ],
    ));
  }
}
