import 'package:FlutterWhatsAppClone/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'WhatsApp'),
    );
  }
}
