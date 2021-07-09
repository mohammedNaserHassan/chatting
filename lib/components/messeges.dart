import 'package:chatting/Models/messages_.dart';
import 'package:chatting/View/myprovider.dart';
import 'package:chatting/View/status.dart';
import 'package:chatting/components/audiocontainer.dart';
import 'package:chatting/components/videocontainer.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class messeges extends StatelessWidget {
  final String img;
   messeges(this.img);
   @override
  Widget build(BuildContext context) {
     var v=  Provider.of<MyProvider>(context,listen: false);
    Widget messageContainer(ChatMessage chatMessage){
      switch(chatMessage.messageType){
        case ChatMessageType.text:return buildContainer(chatMessage, context);
        break;
        case ChatMessageType.audio:return audio_container(chatMessage);
        break;
        case ChatMessageType.video:return video_container(chatMessage);
        break;
        default: return SizedBox();
      }
    }
     return Expanded(child:
    ListView(
        children: demeChatMessages.map((e){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: e.isSender?MainAxisAlignment.end:MainAxisAlignment.start,
children: [
  if(!e.isSender)
    CircleAvatar(radius: 12,
      backgroundImage: AssetImage(img),),
      //backgroundImage: AssetImage('${v.x}'),),
  SizedBox(height: kDefaultPadding/2,),
  messageContainer(e),
  if(e.isSender) statew(e.messageStatus)
],
            ),
          );
        }).toList()
    )



    );
  }

  Container buildContainer(e, BuildContext context) {
    return Container(
  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*0.8,
  vertical: kDefaultPadding/2,),
  decoration: BoxDecoration(
      color: kPrimaryColor.withOpacity(e.isSender?1:0.08),
    borderRadius: BorderRadius.circular(30)
  ),
  child: Text(e.text,style: TextStyle(
    color: e.isSender?Colors.white:Theme.of(context).textTheme.bodyText1.color
  ),),);
  }
}
