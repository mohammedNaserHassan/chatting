import 'package:chatting/components/body_of%20message.dart';
import 'package:flutter/material.dart';
class message_screen extends StatelessWidget {
   message_screen({this.img,this.name,this.time,this.mg});
String name,time,img,mg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body:body_message(mg) ,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          TextButton(child: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
          CircleAvatar(
            backgroundImage: AssetImage(img),
          ),
          Column(
            children: [
              Text(name,style: TextStyle(fontSize: 16),),
              Text('Active ${time} ',style: TextStyle(fontSize: 13)),
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam_sharp,color: Colors.white,size: 25,))
      ],
    );
  }
}
