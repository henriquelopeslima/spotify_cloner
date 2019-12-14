import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background(),
        Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 2,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    print('Clicou no btn settings');
                  },
                  tooltip: 'Settigs',
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(45.0),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Recently Played',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(1.0),
                                        fontSize: 24.0,
                                        fontFamily: 'SpotifyFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                              ),
                              Container(
                                height: 165.0,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 110.0,
                                          width: 120.0,
                                          child: Image.asset(
                                            'assets/eminem.jpeg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5)),
                                        Text(
                                          'This Is Eminem',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(1.0),
                                            fontFamily: 'SpotifyFont',
                                            fontSize: 14.0,
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Made for you',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(1.0),
                                        fontSize: 24.0,
                                        fontFamily: 'SpotifyFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                              ),
                              Container(
                                height: 165.0,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 130.0,
                                          width: 140.0,
                                          child: Image.asset(
                                            'assets/eminem.jpeg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5.0)),
                                        Text(
                                          'This Is Eminem',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(1.0),
                                            fontFamily: 'SpotifyFont',
                                            fontSize: 14.0,
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Recomendation',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(1.0),
                                        fontSize: 24.0,
                                        fontFamily: 'SpotifyFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                              ),
                              Container(
                                height: 165.0,
                                child: ListView.builder(
                                  itemCount: imageurl.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 130.0,
                                          width: 140.0,
                                          child: Image.asset(
                                            imageurl[index],
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5.0)),
                                        Text(
                                          txt[index],
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(1.0),
                                            fontFamily: 'SpotifyFont',
                                            fontSize: 10.0,
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
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
          ],
        )
      ],
    );
  }
}

List<String> imageurl = [
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
];

List<String> txt = [
  'This Is Billie',
  "Today's top hits",
  'This Is Billie',
  "Today's top hits",
  'This Is Billie',
  "Today's top hits",
  'This Is Billie',
  "Today's top hits",
];

Widget background() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromRGBO(225, 226, 112, 0.0),
        Color(0xFF191414),
      ], begin: Alignment.topLeft, end: FractionalOffset(0.2, 0.3)),
    ),
  );
}
