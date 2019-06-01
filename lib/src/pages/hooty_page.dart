import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/pages/chat_page.dart';

class HootyPage extends StatefulWidget {
  @override
  _HootyPageState createState() => _HootyPageState();
}

class _HootyPageState extends State<HootyPage> {
  String _content='';
    final DatabaseReference _messagesRef = FirebaseDatabase.instance.reference().child('messages');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Hooty Hoot'),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        child: Column(
          children: <Widget>[
            _crearInput(),
            FlatButton(
              onPressed: (){
                _messagesRef.child('messages4').set({
                  'content':_content,
                  'createdBy':'Ruiz',
                  'creationDate':'today',
                });
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
              },
              color: Colors.blue,
                child: Text('SEND!'),
            ),

          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Hooty hoot!',
          labelText: 'Type your hooty hoot to get help!',

      ),
      onChanged: (valor){
        setState(() {
          _content = valor;
        });

      },
    );
  }

}
