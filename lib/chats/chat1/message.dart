import 'package:flutterui001/chats/chat1/user.dart';

//Second Class
class Message {
  User sender, receiver;
  String dateTime; // If we user API, we replace data_type with DateTime
  String body;

  Message({this.sender, this.receiver, this.dateTime, this.body});
}
