import 'package:flutter/material.dart';

class TicTac2 extends StatefulWidget {
  const TicTac2({Key? key}) : super(key: key);

  @override
  State<TicTac2> createState() => _TicTac2State();
}

class _TicTac2State extends State<TicTac2> {
  int X = 0, O = 0, t = 0;
  String x1="X";
  String o1="O";
  String h1 = "",
      h2 = "",
      h3 = "",
      h4 = "",
      h5 = "",
      h6 = "",
      h7 = "",
      h8 = "",
      h9 = "",
      turn = "X",
      w = "";

  temp(){
    X = O = t = 0;
    h1 = h2 = h3 = h4 = h5 = h6 = h7 = h8 = h9 = "";
    w = "";
    setState(() {});
  }
  
  win() {
    if (h1 == "X" && h2 == "X" && h3 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h4 == "X" && h5 == "X" && h6 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h7 == "X" && h8 == "X" && h9 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h1 == "X" && h4 == "X" && h7 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h2 == "X" && h5 == "X" && h8 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h3 == "X" && h6 == "X" && h9 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h1 == "X" && h5 == "X" && h9 == "X") {
      w = "X";
      x1="X";
      o1="O";
    } else if (h3 == "X" && h5 == "X" && h7 == "X") {
      w = "X";
      x1="X";
      o1="O";
    }

    if (h1 == "O" && h2 == "O" && h3 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h4 == "O" && h5 == "O" && h6 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h7 == "O" && h8 == "O" && h9 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h1 == "O" && h4 == "O" && h7 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h2 == "O" && h5 == "O" && h8 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h3 == "O" && h6 == "O" && h9 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h1 == "O" && h5 == "O" && h9 == "O") {
      w = "O";
      x1="O";
      o1="X";
    } else if (h3 == "O" && h5 == "O" && h7 == "O") {
      w = "O";
      x1="O";
      o1="X";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tic-Tac Game2",
          style: TextStyle(
              fontSize: 30, letterSpacing: 0.5, fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "X=$X",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "O=$O",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          Expanded(
              flex: 6,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h1", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h1 == "" && w == "") {
                              if (t % 2 == 0) {
                                h1 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h1 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h2", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h2 == "" && w == "") {
                              if (t % 2 == 0) {
                                h2 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h2 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h3", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h3 == "" && w == "") {
                              if (t % 2 == 0) {
                                h3 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h3 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h4", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h4 == "" && w == "") {
                              if (t % 2 == 0) {
                                h4 = 'Z';
                                X++;
                                turn = o1;
                              } else {
                                h4 = 'P';
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h5", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h5 == "" && w == "") {
                              if (t % 2 == 0) {
                                h5 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h5 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h6", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h6 == "" && w == "") {
                              if (t % 2 == 0) {
                                h6 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h6 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h7", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h7 == "" && w == "") {
                              if (t % 2 == 0) {
                                h7 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h7 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h8", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h8 == "" && w == "") {
                              if (t % 2 == 0) {
                                h8 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h8 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                      Expanded(
                          child: InkWell(
                        child: Container(
                          child: Text("$h9", style: TextStyle(fontSize: 50)),
                          alignment: Alignment.center,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        onTap: () {
                          setState(() {
                            if (h9 == "" && w == "") {
                              if (t % 2 == 0) {
                                h9 = x1;
                                X++;
                                turn = o1;
                              } else {
                                h9 = o1;
                                O++;
                                turn = x1;
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      )),
                    ],
                  )),
                ],
              )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$turn Turn",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              w == ""
                  ? Text(
                      "No one win",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  : Text(
                      "$w Win",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
              ElevatedButton(
                child: Text("Reset"),
                onPressed: () {
                  X = O = t = 0;
                  h1 = h2 = h3 = h4 = h5 = h6 = h7 = h8 = h9 = "";
                  turn = "X";
                  w = "";
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
