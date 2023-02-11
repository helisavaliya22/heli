import 'package:flutter/material.dart';
import 'package:heli/Shayari/Shayariedit.dart';


class Shayaridisplay extends StatefulWidget {
  int pos;
  var Shayarilist;
  var emg;
  Shayaridisplay(this.Shayarilist,this.pos,this.emg);

  @override
  State<Shayaridisplay> createState() => _ShayaridisplayState();
}
  @override

class _ShayaridisplayState extends State<Shayaridisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayari",style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          actions: [Icon(Icons.share,color: Colors.white),SizedBox(width: 20)]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  IconButton(onPressed: (){}, icon: Image.asset("Images/expand.png")),
                  Text("${widget.pos+1}/${widget.Shayarilist.length}",style: TextStyle(fontSize: 20,color: Colors.green[900])),
                  IconButton(onPressed: (){}, icon: Image.asset("Images/reload.png")),
              ],
            ),
          ),
          Expanded(child: ListView(
            children: [
                Container(
                  color: Colors.pink,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Text("${widget.emg}\n${widget.Shayarilist[widget.pos]}\n${widget.emg}",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center),
                  ),
                ),
            ],
          )),
          Container(
            height: 70,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.file_copy_rounded,color: Colors.white)),
                IconButton(onPressed: (){
                  if(widget.pos>=1)
                    {
                      widget.pos--;
                    }
                  setState(() {

                  });
                }, icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Shayariedit("${widget.emg}\n${widget.Shayarilist[widget.pos]}\n${widget.emg}");
                  },));
                }, icon: Image.asset("Images/pencil.png")),
                IconButton(onPressed: (){
                  if(widget.pos<widget.Shayarilist.length-1)
                    {
                      widget.pos++;
                    }
                  setState(() {

                  });
                }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white)),
                IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
