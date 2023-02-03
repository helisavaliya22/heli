import 'package:flutter/material.dart';

class TicTac extends StatefulWidget {
  const TicTac({Key? key}) : super(key: key);

  @override
  State<TicTac> createState() => _TicTacState();
}

class _TicTacState extends State<TicTac> {
  int X=0,O=0,t=0;
  String h1="",h2="",h3="",h4="",h5="",h6="",h7="",h8="",h9="",turn="X",w="";

  win() {
    if (h1 == "X" && h2 == "X" && h3 == "X")
    {
      w = "X";
    }
    else if(h4=="X" && h5=="X" && h6=="X")
    {
      w="X";
    }
    else if(h7=="X" && h8=="X" && h9=="X")
    {
      w="X";
    }
    else if(h1=="X" && h4=="X" && h7=="X")
    {
      w="X";
    }
    else if(h2=="X" && h5=="X" && h8=="X")
    {
      w="X";
    }
    else if(h3=="X" && h6=="X" && h9=="X")
    {
      w="X";
    }
    else if(h1=="X" && h5=="X" && h9=="X")
    {
      w="X";
    }
    else if(h3=="X" && h5=="X" && h7=="X")
    {
      w="X";
    }

    if (h1 == "O" && h2 == "O" && h3 == "O")
    {
      w = "O";
    }
    else if(h4=="O" && h5=="O" && h6=="O")
    {
      w="O";
    }
    else if(h7=="O" && h8=="O" && h9=="O")
    {
      w="O";
    }
    else if(h1=="O" && h4=="O" && h7=="O")
    {
      w="O";
    }
    else if(h2=="O" && h5=="O" && h8=="O")
    {
      w="O";
    }
    else if(h3=="O" && h6=="O" && h9=="O")
    {
      w="O";
    }
    else if(h1=="O" && h5=="O" && h9=="O")
    {
      w="O";
    }
    else if(h3=="O" && h5=="O" && h7=="O")
    {
      w="O";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic-Tac Game",style: TextStyle(
          fontSize: 30,
          letterSpacing: 0.5,
          fontStyle: FontStyle.italic),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.lightGreenAccent,
            ],
                begin: Alignment.topLeft
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("X=$X",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black
                ),),
                Text("O=$O",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black
                ),),
              ],
            ),
            Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.width,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h1",style: TextStyle(fontSize: 40,
                          fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h1=="")
                              {
                                if(t%2==0 && w=="")
                                  {
                                    h1="X";
                                    X++;
                                    turn="O";
                                  }
                                else
                                  {
                                    h1="O";
                                    O++;
                                    turn="X";
                                  }
                                t++;
                                win();
                              }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h2",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h2=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h2="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h2="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h3",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h3=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h3="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h3="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h4",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h4=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h4="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h4="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h5",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h5=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h5="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h5="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h6",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h6=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h6="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h6="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h7",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h7=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h7="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h7="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h8",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h8=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h8="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h8="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("$h9",style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold)),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.blueGrey,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(h9=="" && w=="")
                            {
                              if(t%2==0)
                              {
                                h9="X";
                                X++;
                                turn="O";
                              }
                              else
                              {
                                h9="O";
                                O++;
                                turn="X";
                              }
                              t++;
                              win();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("$turn Turn",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      )),

                      w == "" ? Text("No one win", style:
                      TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      ) : Text("$w Win", style:
                      TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
