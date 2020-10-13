import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  CallsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CallsScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Calls Screen"),
    );
  }
}
