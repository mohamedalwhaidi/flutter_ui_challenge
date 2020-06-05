/*
* This class return a profile and It differs from provider in state management [MVP]
*/
import 'package:flutterui001/profiles/profile2/profile.dart';

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
        user: User(
            name: 'Mohamed AlWhaidi',
            address: '677 Tal HAWA',
            about:
                "This is about me, so it dose not care, mm CurvePainter class extends"
                " CustomPainter and overrides paint method and shouldRepaint method,CurvePainter"
                " CustomPainter and overrides paint method and shouldRepaint method,CurvePainter"
                " CustomPainter and overrides paint method and shouldRepaint method,CurvePainter"
                " class extends CustomPainter and overrides paint method and shouldRepaint method."),
        followers: 2318,
        following: 364,
        friends: 175);
  }
}
