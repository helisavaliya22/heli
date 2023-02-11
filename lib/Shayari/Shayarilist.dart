import 'dart:math';
import 'package:flutter/material.dart';
import 'package:heli/Shayari/config.dart';

import 'Shayaridisplay.dart';

class Shayarilist extends StatefulWidget {

  int pos;
  int number=0;
  Shayarilist(this.pos);
  @override
  State<Shayarilist> createState() => _ShayarilistState();
}

class _ShayarilistState extends State<Shayarilist> {
  @override
  List list=[];
  void initState(){
    super.initState();
    if(widget.pos==0)
      {
        list=config.Best;
      }
    if(widget.pos==1)
    {
      list=config.Birthday;
    }
    if(widget.pos==2)
    {
      list=config.Dosti;
    }
    if(widget.pos==3)
    {
      list=config.God;
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayari",style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          actions: [Icon(Icons.share,color: Colors.white),SizedBox(width: 20)]),
      body: ListView.separated(itemBuilder: (context, index) {
        int max=config.Emoji.length;
        int min=0;
        var number=Random().nextInt(max-min)+min;
        String emoji="${config.Emoji[number]}";
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: ListTile(
          tileColor: Colors.pink,
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Shayaridisplay(list,index,emoji);
            },));
         },
          leading: Image.asset("Images/${config.Photo[widget.pos]}"),
          title: Padding(padding: EdgeInsets.all(7.0),
          child: Text("${config.Emoji[number]}\n${list[index]}",
          maxLines: 2,
          style: TextStyle(color: Colors.white),)),
        ));
      }, separatorBuilder: (context, index) {
        return Divider();
      }, itemCount: list.length),
    );
  }
}
