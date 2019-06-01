import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/pages/hooty_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HootyPage()));
          },
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Card(
              color: Colors.white10,
              child: ListTile(
                title: Text('Item1'),
                subtitle: Text('sup'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
