import 'package:flutter/material.dart';
import 'package:flutterui001/chats/chat1/chat_list.dart';
import 'package:flutterui001/profiles/profile1/profile1_ui.dart';
import 'package:flutterui001/registrations/registration1/registration1.dart';
import 'package:flutterui001/registrations/registration3/registration3.dart';
import 'package:flutterui001/registrations/registration4/registration4.dart';
import 'package:flutterui001/registrations/registration6/registration6.dart';

import 'registrations/registration2/registration2.dart';
import 'registrations/registration5/registration5.dart';

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
      home: Registration6(),
      debugShowCheckedModeBanner: false,
    );
  }
}
