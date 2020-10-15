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
  IconData floatingActionButtonIcon = Icons.chat;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this,initialIndex: 1, length: 4);
    // setState(() {
    //   _tabController.addListener((){
    //     print('my index is'+ _tabController.index.toString());
    //     switch (_tabController.index){
    //       case 1 : {
    //         floatingActionButtonIcon = Icons.chat;
    //         break;
    //       }
    //       case 2 :{
    //         this.floatingActionButtonIcon = Icons.camera_alt;
    //         break;
    //       }
    //     }
    //   });
    // });
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
          // isScrollable: true,
          // labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
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
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
        } ,
        backgroundColor: Colors.greenAccent[700],
        child: Icon(
          floatingActionButtonIcon,
          color: Colors.white,),
      ),
    );
  }
}
