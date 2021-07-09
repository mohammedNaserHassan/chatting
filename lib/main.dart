import 'package:chatting/View/myprovider.dart';
import 'package:chatting/View/them.dart';
import 'package:flutter/material.dart';
import 'Screens/welcome_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
    create:(x)=>MyProvider(),
    child:MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData(context),
darkTheme: darkThemeData(context),
debugShowCheckedModeBanner: false,
      home: welcomPage(),
    );
  }
}

