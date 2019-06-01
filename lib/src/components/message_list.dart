import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_flutter/src/components/message_list_item.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  DatabaseReference _messagesRef;
  StreamSubscription<Event> _messagesSubscription;

 @override
  void initState() {
    super.initState();

    _messagesRef = FirebaseDatabase.instance.reference().child('messages');

    _messagesSubscription = _messagesRef.limitToLast(10).onChildAdded.listen((Event event) {
      print('Message added: ${event.snapshot.value}');
    }, onError: (Object o) {
      final DatabaseError error = o;
      print('Error: ${error.code} ${error.message}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _messagesSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      query: _messagesRef,
      itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
        return SizeTransition(
          sizeFactor: animation,
          child: MessageListItem(snapshot),
        );
      },
    );
  }
}
