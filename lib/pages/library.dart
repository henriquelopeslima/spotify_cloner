import 'dart:developer';

import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  // @override
  int a = 1, b = 0;

  Widget build(BuildContext context) {
    log("Criou a tela novamente");
    PageController controller = PageController();
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 35, 10, 10),
                child: Text(
                  "Music",
                  style: txtStyle(a),
                ),
              ),
              onTap: () {
                setState(() {
                  a = 1;
                  b = 0;
                });

                controller.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 35, 10, 10),
                child: Text(
                  "Podcasts",
                  style: txtStyle(b),
                ),
              ),
              onTap: () {
                setState(() {
                  a = 0;
                  b = 1;
                });

                controller.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
        Expanded(
          child: PageView(
            controller: controller,
            children: <Widget>[
              DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: TabBar(
                    tabs: [
                      Tab(
                        child: _text("Playlists", 15),
                      ),
                      Tab(
                        child: _text("Artists", 15),
                      ),
                      Tab(
                        child: _text("Albums", 15),
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      ScreenToMusic(),
                      ScreenToMusic(),
                      ScreenToMusic(),
                    ],
                  ),
                ),
              ),
              DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: TabBar(
                    tabs: [
                      Tab(
                        child: _text("Episodes", 15),
                      ),
                      Tab(
                        child: _text("Downloads", 15),
                      ),
                      Tab(
                        child: _text("Shows", 15),
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      ScreenToPodcasts(),
                      ScreenToPodcasts(),
                      ScreenToPodcasts(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget _text(String txt, double size) {
  return Text(
    txt,
    style: TextStyle(
        fontSize: size,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none),
  );
}

txtStyle(number) {
  if (number == 1) {
    return TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  }
  return TextStyle(
      color: Colors.white38, fontSize: 30, fontWeight: FontWeight.bold);
}

class ScreenToMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 90.0,
                      width: 100.0,
                      child: Image.asset(
                        'assets/eminem.jpeg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Column(children: <Widget>[
                      Text(
                        'This Is Eminem',
                        style: TextStyle(
                          color: Colors.white.withOpacity(1.0),
                          fontFamily: 'SpotifyFont',
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'by Henrique Lopes',
                        style: TextStyle(
                          color: Colors.white54,
                          fontFamily: 'SpotifyFont',
                          fontSize: 12.0,
                        ),
                      ),
                    ])
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class ScreenToPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
          child: Column(
            children: <Widget>[
              Text(
                "Looking for something to listen to?",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SpotifyFont',
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(30),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(40.0)),
                ),
                child: Center(
                  child: new Text(
                    "BROWSE POD...",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SpotifyFont',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
