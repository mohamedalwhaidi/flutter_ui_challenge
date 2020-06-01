import 'package:flutter/material.dart';
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
      home: Profile2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
