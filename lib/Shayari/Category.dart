import 'package:flutter/material.dart';
import 'package:heli/Shayari/Shayarilist.dart';
import 'package:heli/Shayari/config.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List list=List.filled(config.Cat.length, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(title: Text("Love Shayari",style: TextStyle(
          color: Colors.white,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          actions: [Icon(Icons.share,color: Colors.white),SizedBox(width: 20)]),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.separated(itemBuilder: (context, index) {
          return GestureDetector(
            onTapUp: (details) {
              setState(() {
                list[index]=true;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Shayarilist(index);
              },));
            },
            onTapDown: (details) {
              list[index]=false;
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Container(
                height: 50,
                width: 50,
                child: Image.asset("Images/${config.Photo[index]}"),
              ),
              title: Text("${config.Cat[index]}",style: TextStyle(
              fontSize: 20,
              color: Colors.green,
                  fontStyle: FontStyle.italic)),
            ),
          );
        }, separatorBuilder: (context, index) {
          return Divider(height: 10,
          thickness: 6,
          color: Colors.grey.shade400);
        }, itemCount: config.Cat.length),
      ),
    );
  }
}
