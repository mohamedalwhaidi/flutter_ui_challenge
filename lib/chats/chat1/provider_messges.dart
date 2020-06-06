import 'package:flutterui001/chats/chat1/conversation.dart';
import 'package:flutterui001/chats/chat1/message.dart';
import 'package:flutterui001/chats/chat1/user.dart';

//Fourth class
class ProviderMessage {
  static Conversation getConversation() {
    User user1 = User(
        name: 'Mo5',
        avatar: 'assets/shared/mohamed.jpg',
        phone: '+972-59-242-0147');
    User user2 = User(
        name: 'Safadi',
        avatar: 'assets/shared/Safadi.jpg',
        phone: '+972-59-240-5566');
    return Conversation(
      users: [user1, user2],
      messages: [
        Message(
            sender: user2,
            receiver: user1,
            dateTime: '23:25',
            body:
                'Hi there how are you?, I will give you her number of send your CV'),
        Message(
            sender: user1,
            receiver: user2,
            dateTime: '23:25',
            body: 'Thanks,\nOK, send to me'),
        Message(
            sender: user2,
            receiver: user1,
            dateTime: '23:25',
            body: 'Hi there how are you?'),
        Message(
            sender: user1,
            receiver: user2,
            dateTime: '23:25',
            body: 'Hi there how are you?'),
        Message(
            sender: user2,
            receiver: user1,
            dateTime: '23:25',
            body: 'Hi there how are you?')
      ],
    );
  }

  static List<Conversation> getConversations() {
    User user1 = User(
        name: 'Mo5',
        avatar: 'assets/shared/mohamed.jpg',
        phone: '+972-59-242-0147');
    User user2 = User(
        name: 'Safadi',
        avatar: 'assets/shared/Safadi.jpg',
        phone: '+972-59-240-5566');
    return [
      Conversation(
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
      Conversation(
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
      Conversation(
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
      Conversation(
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
      Conversation(
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
      Conversation(
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
