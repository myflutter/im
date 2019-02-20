import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';
class  MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => new _MessagePageState();
  
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (BuildContext context, int index) {
        return new MessageItem(messageData[index]);
      },
    ) ;
  }
}