import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget{
  static final pageName = 'alert';

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=> _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert( BuildContext context){

    showDialog(
      context: context,
      barrierDismissible:true,
      builder:(context){

        return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),    

            title: Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('este es el contenido de la caja'),
                FlutterLogo(size: 100.0,)
              ],
            ),
            actions: [
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar'),
                 textColor: Colors.blue,
              ),

               FlatButton(                
                 child: Text('OK'),
                 textColor: Colors.blue,
                 onPressed: (){
                  Navigator.of(context).pop();
                  
                 },
              ),
            ],
        );
      }
      
       
    );
  }
}