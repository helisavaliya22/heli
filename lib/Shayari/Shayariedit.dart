import 'package:flutter/material.dart';

class Shayariedit extends StatefulWidget {
  String str;
  Shayariedit(this.str);
  @override
  State<Shayariedit> createState() => _ShayarieditState();
}

class _ShayarieditState extends State<Shayariedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Shayari")),
      body: Column(
        children: [
          Container(
      margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
      color: Colors.pink,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Text(widget.str,style: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),
            textAlign: TextAlign.center),
      ),
    ),
          Spacer(),
          Container(
            height: 120,
            color: Colors.black54,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 140,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("Images/reload.png",height: 30),
                          Image.asset("Images/expand.png",height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Background",style: TextStyle(color: Colors.white),))),
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Text Color",style: TextStyle(color: Colors.white),))),
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Share",style: TextStyle(color: Colors.white),))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Font",style: TextStyle(color: Colors.white),))),
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Emoji",style: TextStyle(color: Colors.white),))),
                    Container(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                            child: Text("Text Size",style: TextStyle(color: Colors.white),))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
