import 'package:flutterui001/chats/chat1/conversion.dart';
import 'package:flutterui001/chats/chat1/message.dart';
import 'package:flutterui001/chats/chat1/user.dart';

//Fourth class
class ProviderMessage {
  static List<Conversion> getConversion() {
    User user1 = User(
        name: 'Mohamed',
        avatar: 'assets/shared/mohamed.jpg',
        phone: '+972-59-242-0147');
    User user2 = User(
        name: 'Mohamed',
        avatar: 'assets/shared/Safadi.jpg',
        phone: '+972-59-240-5566');
    return [
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
      Conversion(
        users: [user1, user2],
        messages: [
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?'),
          Message(
              sender: user1,
              receiver: user2,
              dateTime: '23:25',
              body: 'Hi there how are you?')
        ],
      ),
    ];
  }
}
