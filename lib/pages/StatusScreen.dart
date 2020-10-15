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
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: [
        Container(
          height: 80.0,
          child: ListTile(
            leading : CircleAvatar(
              radius: 28.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 23.0,
                child: Text("P"),
              ),
            ),
            title: Text("My status",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Tap to add status update"),
          ),
        ),
        Container(
          height: 40.0,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent updates" , 
              style: TextStyle(color: Colors.grey),
            ),
          )
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index){
            return 
            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Container(
                  height: 80.0,
                  child: ListTile(
                    leading : Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 23.0,
                          child: Text("P"),
                        ),
                      ),
                      padding: const EdgeInsets.all(3.0), // borde width
                      decoration: new BoxDecoration(
                        color: Colors.green[300], // border color
                        shape: BoxShape.circle,
                      )
                    ),
                    title: Text("Priyam Arya",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Today, 4:42 pm"),
                  ),
                ), 
                if(index != 1 )
                Padding(
                  padding: const EdgeInsets.only(left : 70.0, right:10.0),
                  child: Divider(height: 5.0,color: Colors.grey),
                )
              ],
            );
          },
        ),
        Container(
          height: 40.0,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Viewed updates" , 
              style: TextStyle(color: Colors.grey),
            ),
          )
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index){
            return 
            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Container(
                  height: 80.0,
                  child: ListTile(
                    leading : Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 23.0,
                          child: Text("P"),
                        ),
                      ),
                      padding: const EdgeInsets.all(3.0), // borde width
                      decoration: new BoxDecoration(
                        color: Colors.green[300], // border color
                        shape: BoxShape.circle,
                      )
                    ),
                    title: Text("Priyam Arya",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Today, 4:42 pm"),
                  ),
                ), 
                if(index != 9 )
                Padding(
                  padding: const EdgeInsets.only(left : 70.0, right:10.0),
                  child: Divider(height: 5.0,color: Colors.grey),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
