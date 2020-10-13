import 'package:flutter/material.dart';

import 'CallsScreen.dart';
import 'CameraScreen.dart';
import 'ChatScreen.dart';
import 'StatusScreen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    var tabController = TabController(vsync: this, length: 4);
    _tabController = tabController;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10.0,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
          Tab(
            icon: Icon(
              Icons.camera_alt
            ),
          ),
          Tab(
            child: Text("CHAT"),
          ),
          Tab(
            child: Text("STATUS"),
          ),
          Tab(
            child: Text("Calls"),
          ),
        ],),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
      ],)
      // floatingActionButton: FloatingActionButton(
      //   onPressed: ,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.chat),
      // ),
    );
  }
}
