import 'package:flutter/material.dart';
import 'package:flutterui001/profiles/profile3/profile_3.dart';
import 'profiles/profile1/profile_1.dart';
import 'profiles/profile2/profile_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Profile1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
