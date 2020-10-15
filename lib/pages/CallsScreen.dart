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
                title: Text("Priyam Arya",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.call_made,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("12 May 2021"),
                  ],
                ),
                trailing: Icon(
                  Icons.call
                ),
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
