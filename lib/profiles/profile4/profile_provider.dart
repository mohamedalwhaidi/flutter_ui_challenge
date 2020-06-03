import 'package:flutterui001/profiles/profile4/profile.dart';

class ProfileProvide {
  static Profile getProfile() {
    return Profile(
      user: User(
          name: 'Erik Walters',
          profession: 'Photography',
          about:
              'Published wedding, try to update more and more upcoming VHDL projects for students.'),
      following: 364,
      followers: 2318,
      friends: 175,
    );
  }
}
