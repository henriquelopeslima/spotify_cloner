import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF414345),
          Color(0xFF000000),
        ], begin: Alignment.topLeft, end: FractionalOffset(0.2, 0.7)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(60),
                  ),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontFamily: 'SpotifyFont',
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 50.0,
                      width: 380.0,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Text(
                            'Artists, ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'SpotifyFont'),
                          ),
                          Text(
                            'songs or',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'SpotifyFont'),
                          ),
                          Text(
                            ' podcasts',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'SpotifyFont'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your top genres ',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'SpotifyFont'),
                        ),
                        GridView.builder(
                          itemCount: 1,
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          shrinkWrap: true,
                          controller: ScrollController(keepScrollOffset: false),
                          itemBuilder: (BuildContext context, int index) {             
                            return Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Card(
                          
                                margin: EdgeInsets.symmetric(vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                clipBehavior: Clip.antiAlias,
                                // child: Image.asset(
                                //   'assets/genre.png',
                                //   fit: BoxFit.contain,
                                // ),
                                child: Container(
                                  height: 20,
                                  color: Colors.green,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
