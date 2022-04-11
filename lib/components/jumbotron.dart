import 'package:flutter/material.dart';
import 'package:neflix_clone/components/navbar_header.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        infoSerie(),
      ]
    );
  }

  Widget header() {
    return Stack(
        children: <Widget>[
          Image.network(
              'https://indiehoy.com/wp-content/uploads/2020/07/elite-netflix.jpg',
              height: 350.0,
              fit: BoxFit.cover),
          Container(
            width: double.infinity,
            height: 350.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.black38,
                      Colors.black
                    ]
                )
            ),
          ),
          SafeArea(child: NavbarHeader()),
        ]
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Telenovelesco', style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('Suspenso insostenible', style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('De suspenso', style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('Adolescentes', style: TextStyle(color: Colors.white, fontSize: 10.0)),
      ]
    );
  }
}
