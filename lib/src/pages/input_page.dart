


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  String _nombre = '';
  String _email = '';
  String _fecha = '';

  String _opcionSeleccionada = 'volar';
  List<String> _poderes =['volar','rayos x','super aliento', 'super fuerza'];

  TextEditingController _inputFieldDataControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs de texto'),
      ),   
      
      body:  ListView(
        
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _createInput(),
          Divider(),
          _createEmail(),          
          Divider(),
          _crearPassword(),
           Divider(),
          _crearFecha(context),
           Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()

        ],
      ),
    );
    
  }
  
  Widget _createInput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('letras ${_nombre.length}'),
        hintText: 'Nombre de la Persona',
        labelText: 'Nombre',
        helperText: 'solo el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)

      ),

      onChanged: (valor){
        _nombre = valor;
        setState(() {
          print(_nombre);
        });     
      },
    );
  }
  
  Widget _crearPersona() {
    return ListTile(
      title: Text('nombre es: $_nombre'),
      trailing: Text(_opcionSeleccionada),
    );

  }
  
  Widget _createEmail() {

     return TextField(

      keyboardType:  TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('letras ${_email.length}'),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)

      ),

      onChanged: (valor){
        _email = valor;
        setState(() {
          print(_email);
        });     
      },
    );
  }
  
  Widget _crearPassword() {
     return TextField(

      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('letras ${_email.length}'),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)

      ),

      onChanged: (valor){
        _email = valor;
        setState(() {
          print(_email);
        });     
      },
    );

  }
  
  Widget _crearFecha(BuildContext context) {

     return TextField(
      controller: _inputFieldDataControler,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('letras ${_email.length}'),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)

      ),

      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );

  }
  
  void _selectDate(BuildContext context) async{

    DateTime? picked = await showDatePicker(
      context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new  DateTime(2025),
        locale: Locale('es', 'ES')
        );

        if (picked != null) {
          setState(() {
            _fecha = picked.toString();
            _inputFieldDataControler.text = _fecha;
          });
        }
  }
  

List<DropdownMenuItem<String>> getOpcionesDropdown(){
  List<DropdownMenuItem<String>> lista =  [];

    _poderes.forEach((poder) {
      
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,

        ));
    });

    return lista;
}

  Widget _crearDropdown() {

    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
      Expanded(
        child: DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt as String;
              });
          },
          ),
      )

      ],
    );
    
    
    
    
    
   
  }

  
}