import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  final Message message;

  MessageListItem(DataSnapshot snapshot): message = Message.fromSnapshot(snapshot);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(message.content),
        subtitle: Text('${message.creationDate} by ${message.createdBy}'),
      )
    );
  }
}

class Message {
  String content;
  String createdBy;
  String creationDate;

  Message(this.content, this.createdBy, this.creationDate);

  Message.fromSnapshot(DataSnapshot snapshot) 
    : content = snapshot.value['content'],
      createdBy = snapshot.value['createdBy'],
      creationDate = snapshot.value['creationDate'];
}
