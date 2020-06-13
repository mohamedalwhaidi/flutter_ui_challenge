import 'package:flutter/material.dart';
import 'package:flutterui001/registrations/registration3/registration3.dart';

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
      home: Registration3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
