import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterui001/chats/chat1/chat_list.dart';
import 'package:flutterui001/chats/chat1/conversation.dart';
import 'package:flutterui001/chats/chat1/message.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen2 extends StatefulWidget {
  final Conversation conversation;
  final String name;

  ChatScreen2(this.conversation, this.name);

  @override
  _ChatScreen2State createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  final _key = GlobalKey<FormState>();
  TextEditingController _textEditingController;

  Gradient _gradient = LinearGradient(
    colors: [
      Color(0xFFef1385),
      Color(0xFFf12280),
      Color(0xFFf63d76),
      Color(0xFFf84f70),
    ],
  );

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: _gradient,
            ),
          ),
          _scaffold(context),
        ],
      ),
    );
  }

  Widget _scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _appBar(context),
      body: _listMessages(context),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 48),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ChatList()),
            );
          }),
      title: Text(
        'Elise Remmi',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        )
      ],
    );
  }

  Widget _listMessages(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            itemCount: widget.conversation.messages.length,
            itemBuilder: (BuildContext context, int position) {
              if (widget.conversation.messages[position].sender.name ==
                  widget.name) {
                return _receiverMessages(widget.conversation.messages[position],
                    position, CrossAxisAlignment.start, -20);
              }
              return _receiverMessages(widget.conversation.messages[position],
                  position, CrossAxisAlignment.end, 20);
            },
          ),
        ),
        _sendMessageForm(context),
      ],
    );
  }

  Widget _receiverMessages(Message message, int position,
      CrossAxisAlignment crossAxisAlignment, double offsetXAxis) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          (widget.conversation.messages[position].sender.name == widget.name)
              ? _rightInfo(message, crossAxisAlignment, offsetXAxis)
              : _leftInfo(message, crossAxisAlignment, offsetXAxis),
          SizedBox(height: 10),
          _message(message),
        ],
      ),
    );
  }

  Widget _leftInfo(Message message, CrossAxisAlignment crossAxisAlignment,
      double offsetXAxis) {
    return Row(
      children: <Widget>[
        _timeOfMessage(message, offsetXAxis),
        Spacer(flex: 1),
        _nameAndPhone(message, crossAxisAlignment),
        SizedBox(width: 16),
        _imageProfile(message),
      ],
    );
  }

  Widget _rightInfo(Message message, CrossAxisAlignment crossAxisAlignment,
      double offsetXAxis) {
    return Row(
      children: <Widget>[
        _imageProfile(message),
        SizedBox(width: 16),
        _nameAndPhone(message, crossAxisAlignment),
        Spacer(flex: 1),
        _timeOfMessage(message, offsetXAxis),
      ],
    );
  }

  Widget _message(Message message) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        child: Text(
          message.body,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        decoration: BoxDecoration(
          color: Colors.white60.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget _imageProfile(Message message) {
    return CircleAvatar(
      backgroundImage: ExactAssetImage(message.receiver.avatar),
      maxRadius: 30,
    );
  }

  Widget _nameAndPhone(Message message, CrossAxisAlignment crossAxisAlignment) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          message.receiver.name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
        ),
        SizedBox(height: 2),
        Text(
          message.receiver.phone,
          style: TextStyle(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }

  Widget _timeOfMessage(Message message, double offsetXAxis) {
    return Transform.translate(
        offset: Offset(offsetXAxis, 25),
        child: Text(message.dateTime,
            style:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 10)));
  }

  Widget _sendMessageForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Form(
        key: _key,
        child: Stack(
          children: <Widget>[
            TextFormField(
              controller: _textEditingController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 24, right: 24),
                hintText: 'Write message ....',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusColor: Colors.white,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            Transform.translate(
              offset: Offset(-8, 6),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    gradient: _gradient,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      icon: Icon(FontAwesomeIcons.paperPlane,
                          size: 16, color: Colors.white),
                      onPressed: () {}),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
