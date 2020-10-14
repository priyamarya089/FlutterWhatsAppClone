import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("P"),
                ),
                title: Row(
                  children: [
                    Text("Priyam Arya",style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("6:20 pm")
                  ],
                ),
                subtitle: Text("Hello"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left : 70.0, right:10.0),
              child: Divider(height: 5.0,color: Colors.grey),
            )
          ],
        );
    });
  }
}
