import 'package:flutter/material.dart';

class NavbarHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset('assets/img/logo.png', width: 30.0),
        Text('Programas', style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Listas', style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text('Películas', style: TextStyle(color: Colors.white, fontSize: 16.0))
      ],
    );
  }
}
