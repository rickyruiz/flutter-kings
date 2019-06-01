import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/pages/home_page.dart';

class LoginPage extends StatelessWidget {

  String _Email='';
  String _Password ='';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Hooty Hoot!',style: TextStyle(fontSize: 40.0),),
                FlutterLogo(size: 200.0,),
                _crearEmail(),
                Divider(),
                _crearPassword(),
                Divider(),
                FlatButton(
                  child: Text('Login'),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                ),
                Text('register', style: TextStyle(color: Colors.blue[700],fontSize: 12.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
      ),
      onChanged: (valor)=> (() {_Password = valor;}),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (valor)=> (() {_Email = valor;}),
    );
  }

}


