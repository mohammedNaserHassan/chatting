import 'package:chatting/Taps/calls.dart';
import 'package:chatting/Taps/people.dart';
import 'package:chatting/Taps/profile.dart';
import 'package:chatting/components/chat_app_bar.dart';
import 'package:chatting/View/constants.dart';
import 'package:flutter/material.dart';
class chat_screen extends StatefulWidget {
   chat_screen();

  @override
  _chat_screenState createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  int _selected = 0;
  final List<Widget> _children = [body(),people(),calls(),profile()];
AppBar build_app(){
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text('Chats',style: TextStyle(fontSize: 22),),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,))
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: build_app(),
      body: _children[_selected],
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: (){},
        child: Icon(Icons.person_add_alt_1,color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selected,
        onTap: (select){
          setState(() {
            _selected=select;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: kContentColorDarkTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls'),
          BottomNavigationBarItem(icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),label: 'Profile'),
        ],
      ),
    );
  }
}
