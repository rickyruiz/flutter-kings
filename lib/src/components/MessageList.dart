import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

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

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
    final DatabaseReference _messagesRef = FirebaseDatabase.instance.reference().child('messages');


  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      query: _messagesRef,
      itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
        var message = Message.fromSnapshot(snapshot);

        return SizeTransition(
          sizeFactor: animation,
          child: Text("$index: ${message.content}"),
        );
      },
    );
  }
}
