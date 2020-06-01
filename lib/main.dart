import 'package:flutter/material.dart';

import 'profiles/profile1/profile_1.dart';

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
