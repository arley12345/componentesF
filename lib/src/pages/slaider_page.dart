


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider =100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),

    body: Container(
      child: Column(
        children: [
          _createSlaider(),
          _checkBox(),
          _crearShitch(),
          Expanded(
            child: _createImagen()
            )
        ],
        ),
      ),
    );
    
  }
  
  Widget  _createSlaider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'tamaño imagen',
      //divisions: 20, coloca 20 punto
      value: _valorSlider,
      min: 10,
      max: 400.0,
       onChanged: (_bloquearCheck) ? null : (valor){

        setState(() {
          _valorSlider = valor;
        });

       },
    );
  }
  
  Widget _createImagen() {

    return Image(
      image: NetworkImage('https://www.megaidea.net/wp-content/uploads/2018/06/goku-super-saiyan-blue-724x1024.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    
    );
  }
  
  Widget _checkBox() {
    /* return Checkbox(
      value: _bloquearCheck,
       onChanged: (valor){

        setState(() {
          _bloquearCheck = valor as bool;
        });
          
       }
       ); */

  return CheckboxListTile(
    title: Text('bloquear slider'),
    value: _bloquearCheck,
       onChanged: (valor){

        setState(() {
          _bloquearCheck = valor as bool;
        });
          
       }
  );

  }
  
  Widget _crearShitch() {
     return SwitchListTile(
    title: Text('bloquear slider'),
    value: _bloquearCheck,
       onChanged: (valor){

        setState(() {
          _bloquearCheck = valor as bool;
        });
          
       }
  );
  }
}