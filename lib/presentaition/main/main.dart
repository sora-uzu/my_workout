import 'package:flutter/material.dart';
import 'package:my_workout/presentaition/top/top_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopPage(),
    );
  }
}
