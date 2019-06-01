import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/pages/chat_page.dart';
import 'package:hackaton_flutter/src/pages/home_page.dart';
import 'package:hackaton_flutter/src/pages/hooty_page.dart';
import 'package:hackaton_flutter/src/pages/login_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'chat': (BuildContext context) => ChatPage(),
    'hooty': (BuildContext context) => HootyPage(),
  };
}
