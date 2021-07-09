import 'package:chatting/Models/chat.dart';
import 'package:flutter/material.dart';
class MyProvider with ChangeNotifier{
  String x = chatsData.map((e) => e.image).toString();
  notifyListeners();
}