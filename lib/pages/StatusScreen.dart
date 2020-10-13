import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StatusScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Status Screen"),
    );
  }
}
