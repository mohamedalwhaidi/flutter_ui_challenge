import 'package:flutter/material.dart';
import 'package:flutterui001/registrations/registration4/registration4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  Conversation conversation = ProviderMessage.getConversation();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
//      home: ChatScreen2(conversation,'Mo5'),
      home: Registration4(),
      debugShowCheckedModeBanner: false,
    );
  }
}
