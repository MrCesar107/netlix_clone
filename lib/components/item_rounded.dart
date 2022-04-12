import 'package:flutter/material.dart';

class ItemRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget> [
            Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2.0,
                  )
              ),
              child: ClipOval(
                child: Image.network(
                    "https://www.unotv.com/portal/unotv/imagenes/177817-Principal.jpg",
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
