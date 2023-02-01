import 'package:flutter/material.dart';

class box extends StatefulWidget {
  const box({Key? key}) : super(key: key);

  @override
  State<box> createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Properties",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        height: 300,
        width:  300,
        //color: Colors.pink,
        //alignment: Alignment.center,
       decoration: BoxDecoration(
         color: Colors.blue,
         border: Border.all(color: Colors.black,
         width: 5),
         borderRadius: BorderRadius.circular(20),
         boxShadow: [
           BoxShadow(color: Colors.pink,blurRadius: 30,blurStyle: BlurStyle.outer,spreadRadius: 0),
         ],
         //shape: BoxShape.circle  // no border radius
       ),
       // foregroundDecoration: BoxDecoration(
       //   color: Colors.red
       // ),             //outside box
       // alignment: Alignment.center,
        //padding: EdgeInsets.fromLTRB(40, 20, 50, 30),
        child: Container(
          height: 150,
          width: 150,
          //color: Colors.amber,
          // decoration: BoxDecoration(
          //   color: Colors.green,
          //   border: Border.all(color: Colors.black,
          //   width: 5,style: BorderStyle.solid,strokeAlign: StrokeAlign.center),
          // ),
        ),
      ),
    );
  }
}
