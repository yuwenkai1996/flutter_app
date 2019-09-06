import 'package:flutter/material.dart';
import './home.dart';
import './page2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    new home_page(),
    new page2(),
  ];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
          ),
        ],
      )
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
}

class PlaceholderWidget extends StatelessWidget {
  final String text;

  PlaceholderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(text),
    );
  }
}