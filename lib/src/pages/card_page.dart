import 'package:flutter/material.dart';




class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding:  EdgeInsets.all(20),
        children: <Widget>[
        _cardTipo1(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo1(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo1(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo1(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo1(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        ],
      ),
    );
    
  }
  
  Widget _cardTipo1() {

    return Card(

      elevation: 15.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),    
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('soy el titulo'),
            subtitle: Text('aqui va todo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('cancelar'),
                onPressed: (){
                  
                },
              ),

              FlatButton(
                child: Text('ok'),
                onPressed: (){
                  
                },
              )

            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2() {

  final card = Container(
    //clipBehavior: Clip.antiAlias,

    child: Column(
      children: <Widget>[
         FadeInImage(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
       /* Image(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          ), */
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('holaaaaaaaaaa'))
      ],
    ),
  );


  return Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.white,

      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )
      ]    
      
    ),

  child: ClipRRect(
     borderRadius: BorderRadius.circular(20.0),
    child: card,
  ),

  );

}