import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget { 

  final opciones = ['uno', 'dos', 'tre', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _createItemsCorta()
      ),
    );
  }



  List<Widget> _createItems(){

    List<Widget> lista = [];

    for (String opt in opciones) {

      final temWidget = ListTile(
        title: Text(opt),

      );
      lista.add(temWidget);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _createItemsCorta(){
  
    return opciones.map((item){

      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing:Icon(Icons.keyboard_arrow_right) ,
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();
  
  
  }
}