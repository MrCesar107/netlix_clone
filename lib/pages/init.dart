import 'package:flutter/material.dart';
import 'package:neflix_clone/components/jumbotron.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Jumbotron(),
        ]
      )
    );
  }
}
