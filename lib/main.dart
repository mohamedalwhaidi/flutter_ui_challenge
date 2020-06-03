import 'package:flutter/material.dart';

import 'profiles/profile4/profile4_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Profile4(),
      debugShowCheckedModeBanner: false,
    );
  }
}
