import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new p();
  }
}
class p extends State<page2> {
  @override
  Widget build(BuildContext) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Text('page2')
      )
    );
  }
}