import 'package:flutter/material.dart';

import 'profiles/profile1/profile1_ui.dart';
import 'profiles/profile5/profile5_ui.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Profile5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
