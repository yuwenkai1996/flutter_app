import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new a();
  }
}
class a extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Text('homeee')
      )
    );
  }
}