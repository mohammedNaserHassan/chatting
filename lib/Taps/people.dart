import 'package:chatting/Models/chat.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';
class people extends StatelessWidget {
   people();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: chatsData.map((e) => ListTile(
            title: Text(e.name),
            trailing: Text(e.time),
            leading: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle
              ),
            ),
          )).toList()
      ),
    );
  }
}
