
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class EditPerfil extends StatefulWidget {
  @override
  _EditPerfilState createState() => _EditPerfilState();
}

class _EditPerfilState extends State<EditPerfil> {

  final dropValue = ValueNotifier('');
  final dropOpcoes = ['Masculino', 'Feminino', 'Outros'];

  ImagePicker imagePicker = ImagePicker();

  File? imageSelec; 
  
String _dropdownValue= '';
  void dropdownCallback(String? selectedValue){
    if (selectedValue is String){
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

Widget _body(){
      return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
                Row(
                  children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255), size: 30,),
                        iconSize: 48,
                        onPressed: () {
                        Navigator.of(context).pushReplacementNamed ('/telaperfil');
                        },
                      )
                    ],
                  ),
                  Divider(
                      height: 10,
                    ),
                    Text("Editar Perfil",
                        style: TextStyle(color: Colors.white, fontSize: 30)),                   
                    Container(
                      width: 300,
                      height: 200,
                        child: Stack(
                          fit: StackFit.expand,
                          overflow: Overflow.visible,
                          children: [
                            imageSelec == null ? Container(): Image.file(imageSelec!),
                            Positioned(
                              right: -10,
                              bottom: 0,
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: IconButton(
                                  color: Color(0xFFF5F6F9),
                                  onPressed: (){
                                    pegarImageGaleria();
                                  },
                                  icon: Icon(Icons.camera_alt, color: Colors.white, size: 30),
                                ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(children: [
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "Nome",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Divider(height: 20),
                          Container(
                            child: ValueListenableBuilder(
                              valueListenable: dropValue, builder: (BuildContext context, String value, _){
                                return SizedBox(
                                  width: 200,
                                  child: DropdownButtonFormField(
                                    isExpanded: true,
                                    hint: const Text('Escolha o gênero'),
                                    decoration: InputDecoration(
                                      label: const Text('Gênero'),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                      fillColor: Colors.white
                                    ),
                                    value: (value.isEmpty) ? null : value,
                                    onChanged: (escolha) => dropValue.value = escolha.toString(),
                                    items: dropOpcoes.map((opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao)
                                      )).toList(),
                                  ),
                                );
                              }
                               
                            ),
                          ),                   
                          Divider(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              labelText: "Idade",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Divider(height: 20),
                          Container(
                              child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                labelText: "Sobre",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                           ),
                        ),
                        maxLines: 5, 
                        minLines: 1, 
                     ),
                 )
            ]
        ),
      )
    )
]))));
}

  pegarImageGaleria() async{
    final PickedFile? imageTemporaria = await imagePicker.getImage(source: ImageSource.gallery);
    if (imageTemporaria != null){
      setState((){
        imageSelec = File(imageTemporaria.path);
      });
    }
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
