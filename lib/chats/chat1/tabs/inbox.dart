import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui001/chats/chat2/chat_screen2.dart';

import '../conversation.dart';
import '../provider_messges.dart';

class ConversionList extends StatefulWidget {
  @override
  _ConversionListState createState() => _ConversionListState();
}

class _ConversionListState extends State<ConversionList> {
  static List<List<Conversation>> conversations = [
    ProviderMessage.getConversations(),
    ProviderMessage.getConversations(),
    ProviderMessage.getConversations(),
  ];

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35, bottom: 24, left: 24, right: 24),
      child: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 15),
                child:
                    Text(conversations[position].first.messages.first.dateTime),
              ),
              ..._groupOfConversion(context, position),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _groupOfConversion(BuildContext context, int position) {
    return List.generate(
      conversations[position].length,
      (index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen2(ProviderMessage.getConversation(), 'Mo5')),
            );
          },
          child: Card(
            margin: EdgeInsets.only(bottom: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _picture(context, position, index),
                  _nameAndConversion(context, position, index),
                  _timeOfConversion(context, position, index),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _picture(BuildContext context, int position, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: CircleAvatar(
        backgroundImage:
            ExactAssetImage(conversations[position][index].users[1].avatar),
        maxRadius: 30,
      ),
    );
  }

  Widget _nameAndConversion(BuildContext context, int position, int index) {
    return Transform.translate(
      offset: Offset(-20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            conversations[position][index].users[0].name,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5),
          Text(conversations[position][index].messages.last.body,
              style: TextStyle(color: Colors.grey.shade400)),
        ],
      ),
    );
  }

  Widget _timeOfConversion(BuildContext context, int position, int index) {
    return Transform.translate(
      offset: Offset(0, -15),
      child: Text(
        conversations[position][index].messages.last.dateTime,
        style: TextStyle(fontSize: 10, color: Colors.pink),
      ),
    );
  }
}
