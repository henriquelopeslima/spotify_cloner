import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background(),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.white.withOpacity(1.0),
                      fontSize: 50.0,
                      fontFamily: 'SpotifyFont',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget background() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromRGBO(240, 236, 200, 5.0),
        Color(0xFF191414),
      ], begin: Alignment.topLeft, end: FractionalOffset(0.09, 0.3)),
    ),
  );
}
