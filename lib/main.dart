import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_cloner/pages/library.dart';
import 'package:spotify_cloner/pages/home.dart';
import 'package:spotify_cloner/pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body:show(index),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          onTap: ((int x) {
            setState(() {
              index = x;
            });
          }),
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            new BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
            new BottomNavigationBarItem(
                icon: Icon(Icons.library_music), title: Text("Library")),
          ],
        ),
      ),
    );
  }
}

Widget show(int index) {
  switch (index) {
    case 0:
      return Home();
      break;
    case 1:
      return Search();
      break;
    case 2:
      return Library();
      break;
  }
  return null;
}
