import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CameraScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Camera Screen"),
    );
  }
}