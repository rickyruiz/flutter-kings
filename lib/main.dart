import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/pages/login_page.dart';
import 'package:hackaton_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components APP',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: 'login',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings){
        print('ruta llamada: $settings.name');
        return  MaterialPageRoute(
          builder: ( BuildContext context) => LoginPage(),
        );
      },
    );
  }
}