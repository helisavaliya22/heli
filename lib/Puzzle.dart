import 'package:flutter/material.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);
  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {

  String h1="7";
  String h2="2";
  String h3="4";
  String h4="6";
  String h5="1";
  String h6="3";
  String h7="5";
  String h8="8";
  String h9="";
  String temp="",w="";

  win(){
    if(h1=='1' && h2=='2' && h3=='3' && h4=='4' && h5=='5' && h6=='6' && h7=='7' && h8=='8')
    {
      w="Win";
    }
    else
    {
      w="Continue";
    }
  }

  reset(){
    h1="5";
    h2="1";
    h3="3";
    h4="6";
    h5="8";
    h6="2";
    h7="4";
    h8="7";
    h9="";
    temp="";
    w="";
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(title: Text("Puzzle World",style:
                  TextStyle(fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.5,
                  fontSize: 30)),
      backgroundColor: Colors.green,
      elevation: 50.0,
        shadowColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h2 == ""){
                        h2 = h1;
                        h1 = temp;
                      }

                      if(h4 == ""){
                        h4 = h1;
                        h1 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h1,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 4, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h1 == ""){
                        h1 = h2;
                        h2 = temp;
                      }

                      if(h5 == ""){
                        h5 = h2;
                        h2 = temp;
                      }

                      if(h3 == ""){
                        h3 = h2;
                        h2 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h2,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 4, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h2 == ""){
                        h2 = h3;
                        h3 = temp;
                      }

                      if(h6 == ""){
                        h6 = h3;
                        h3 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h3,style: TextStyle(fontSize: 35)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h1 == ""){
                        h1 = h4;
                        h4 = temp;
                      }

                      if(h5 == ""){
                        h5 = h4;
                        h4 = temp;
                      }

                      if(h7 == ""){
                        h7 = h4;
                        h4 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h4,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h2 == ""){
                        h2 = h5;
                        h5 = temp;
                      }

                      if(h4 == ""){
                        h4 = h5;
                        h5 = temp;
                      }

                      if(h6 == ""){
                        h6 = h5;
                        h5 = temp;
                      }

                      if(h8 == ""){
                        h8 = h5;
                        h5 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h5,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h3 == ""){
                        h3 = h6;
                        h6 = temp;
                      }

                      if(h5 == ""){
                        h5 = h6;
                        h6 = temp;
                      }

                      if(h9 == ""){
                        h9 = h6;
                        h6 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h6,style: TextStyle(fontSize: 35)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h4 == ""){
                        h4 = h7;
                        h7 = temp;
                      }

                      if(h8 == ""){
                        h8 = h7;
                        h7 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h7,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h7 == ""){
                        h7 = h8;
                        h8 = temp;
                      }

                      if(h5 == ""){
                        h5 = h8;
                        h8 = temp;
                      }

                      if(h9 == ""){
                        h9 = h8;
                        h8 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h8,style: TextStyle(fontSize: 35)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 4, 4),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      if(h8 == ""){
                        h8 = h9;
                        h9 = temp;
                      }

                      if(h6 == ""){
                        h6 = h9;
                        h9 = temp;
                      }
                      setState(() {
                        win();
                      });
                    },
                    child: Text(h9,style: TextStyle(fontSize: 35)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text("Status:$w",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            )),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ), onPressed: (){
              reset();
            },child: Text("Reset",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),)),
          ],
        ),
      );
  }
}
