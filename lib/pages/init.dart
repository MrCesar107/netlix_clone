import 'package:flutter/material.dart';
import 'package:neflix_clone/components/item.dart';
import 'package:neflix_clone/components/item_rounded.dart';
import 'package:neflix_clone/components/jumbotron.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Jumbotron(),
          horizontalList("Avances", ItemRounded(), 10),
          SizedBox(height: 20.0),
          horizontalList("Tendencias", Item(), 10),
          SizedBox(height: 20.0),
          horizontalList("Mi lista", Item(), 10),
        ]
      ),
      bottomNavigationBar: navbarBottom(),
    );
  }

  Widget horizontalList(String title, Widget item, int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              )
          ),
        ),
        Container(
            height: 110.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: count,
                itemBuilder: (context, index) {
                  return item;
                },
            )
        ),
      ],
    );
  }

  BottomNavigationBar navbarBottom() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: "Proximamente",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: "Descargas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: "Más",
        ),
      ]
    );
  }
}
