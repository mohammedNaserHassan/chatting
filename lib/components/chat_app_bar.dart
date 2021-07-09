import 'package:chatting/Models/chat.dart';
import 'package:chatting/Screens/message_screen.dart';
import 'package:chatting/components/filled_outline_button.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';

import 'chat_cards.dart';

class body extends StatelessWidget {
  body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(text: 'Recent Message', press: () {},),
              SizedBox(width: kDefaultPadding,),
              FillOutlineButton(text: 'Active', press: () {}, isFilled: false,),
            ],
          ),
        ),
        Expanded(child:ListView(
          children: chatsData.map((e){
            return ChatCard(chat: e,
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (x)=>message_screen(
                img:e.image ,time:e.time ,name:e.name ,mg: e.image,
              )));
            },
            );
          }).toList()
        )



        )
      ],
    );
  }
}
