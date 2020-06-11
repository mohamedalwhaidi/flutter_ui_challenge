import 'package:flutter/material.dart';
import 'package:flutterui001/chats/chat1/chat_list.dart';
import 'package:flutterui001/registration/registration1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Registration1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
