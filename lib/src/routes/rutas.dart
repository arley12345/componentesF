import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listView_page.dart';
import 'package:componentes/src/pages/slaider_page.dart';
import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/animated_container.dart';
import '../pages/avatar_page.dart';
import '../pages/home_page.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){
 
 return <String, WidgetBuilder>{
        '/'       : (BuildContext context) => HomePage(),
        AlertPage.pageName  : (BuildContext context) => AlertPage(),
        'avatar'  : (BuildContext context) => AvatarPage(),
        'card'    : (BuildContext context) => CardPage(),
        'animatedContainer'    : (BuildContext context) => AnimateContainerPage(),
        'inputs'  : (BuildContext context) => InputPage(),
        'slider'  : (BuildContext context) => SliderPage(),
        'list'  : (BuildContext context) => ListaPage(),
      };

}