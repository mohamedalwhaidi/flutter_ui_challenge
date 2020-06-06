import 'package:flutterui001/chats/chat1/message.dart';
import 'package:flutterui001/chats/chat1/user.dart';

//Third class
class Conversation {
  List<User> users;
  List<Message> messages;

  Conversation({this.users, this.messages});
}
