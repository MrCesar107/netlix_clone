import 'package:flutter/material.dart';
import 'package:neflix_clone/pages/init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitPage()
    );
  }
}
