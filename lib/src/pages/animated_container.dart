




import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {
 

  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();

  
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  
  double _witth = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('animacion conteiner'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _witth,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          )

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: _cambiarForma,
      ),

    );
    
  }
  
  void _cambiarForma() {

    final random = Random();
    

    setState(() {
      _witth = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
         random.nextInt(255),
          random.nextInt(255),
           1);

           _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });

  }
}





