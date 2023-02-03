import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View",style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),)),
      body: ListTile(
        title: Text("Hello"),
        subtitle: Text("This is test"),
        trailing: Icon(Icons.account_circle),
        leading: Icon(Icons.access_alarm),
      ),
    );
  }
}
