import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/amburguesa/configuracion_menu.dart';
import 'package:flutter_components/pages/amburguesa/home_menu.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/input_page.dart';
import 'package:flutter_components/pages/listview_page.dart';
import 'package:flutter_components/pages/slider_page.dart';
import 'package:flutter_components/pages/snackbar_page.dart';
import 'package:flutter_components/pages/stack_page.dart';
import 'package:flutter_components/pages/tabs_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputPage(),
    'tabs': (BuildContext context) => TabsPage(),
    'amburguesa': (BuildContext context) => HomeMenu(),
    'configuration_menu': (BuildContext context) => ConfiguracionMenu(),
    'stack': (BuildContext context) => StackPage(),
    'snack': (BuildContext context) => SnackbarPage(),
    'slider': (BuildContext context) => SliderPage(),
    'listview': (BuildContext context) => ListViewPage(),
  };
}


