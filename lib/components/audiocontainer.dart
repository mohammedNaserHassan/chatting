import 'package:chatting/Models/messages_.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';

class audio_container extends StatelessWidget {
  audio_container(this.chatMessage);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 5),
      width: MediaQuery
          .of(context)
          .size
          .width * 0.55,
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimaryColor.withOpacity(chatMessage.isSender ? 1 : 0.1)
      ),
      child: Row(
        children: [
          Icon(Icons.play_arrow,
            color: !chatMessage.isSender ? kPrimaryColor : Colors.white,)
         , Expanded(child:
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(width: double.infinity,
                height: 2,
                color:chatMessage.isSender?Colors.white: kPrimaryColor.withOpacity(0.4),),
           Positioned(
             left: 0,
             top: -2,
             child: Container(
               height: 8,
               width: 8,
               decoration: BoxDecoration(
                 color: kPrimaryColor,
                 shape: BoxShape.circle
               ),
             ),
           )
            ],
          )),
          SizedBox(width: kDefaultPadding/5,),
          Text('0.37',style: TextStyle(
            color: chatMessage.isSender?Colors.white:null,
            fontSize: 12
          ),)
        ],
      ),
    );
  }
}
