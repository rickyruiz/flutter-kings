import 'package:flutter/material.dart';

class HootyPage extends StatefulWidget {
  @override
  _HootyPageState createState() => _HootyPageState();
}

class _HootyPageState extends State<HootyPage> {
  String _Nombre='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Hooty'),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        child: Column(
          children: <Widget>[
            _crearInput(),
            Divider(color: Colors.white,),
            _crearInput2(),
            FlatButton(
              onPressed: (){},
              color: Colors.blue,
                child: Text('Add'),
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
          hintText: 'Hooty',
          labelText: 'Hooty',

      ),
      onChanged: (valor){
        setState(() {
          _Nombre = valor;
        });

      },
    );
  }

  Widget _crearInput2() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Tags',
          labelText: 'Tag',

      ),
      onChanged: (valor){
        setState(() {
          _Nombre = valor;
        });

      },
    );
  }

}
