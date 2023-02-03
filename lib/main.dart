import 'package:flutter/material.dart';
import 'package:heli/BMI.dart';
import 'package:heli/Form2.dart';
import 'package:heli/Form3.dart';
import 'package:heli/Image.dart';
import 'package:heli/Puzzle.dart';
import 'package:heli/Tic-Tac%20Game2.dart';
import 'package:heli/Tic-Tac.dart';
import 'package:heli/day2.dart';
import 'package:heli/form1.dart';
import 'package:heli/ludo.dart';
import 'package:heli/student.dart';

import 'MyHomePage.dart';

void main(){
  runApp(day());
}

class day extends StatefulWidget {
  const day({Key? key}) : super(key: key);

  @override
  State<day> createState() => _dayState();
}

class _dayState extends State<day> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
        initialRoute: 'home',
      routes: {
        'day2':(context) => day2(),
        'BMI' :(context) => BMI(),
        'student' :(context) => student(),
        'home' :(context) => MyHomePage(),
        'form1':(context) => form1(),
        'ludo':(context) => ludo(),
        'Form2':(context) => Form2(),
        'Tic-Tac':(context) => TicTac(),
        'Tic-Tac2':(context) => TicTac2(),
        'Form3':(context) => Form3(),
        'Puzzle':(context) => Puzzle(),
        'Image':(context) => MyImage(),
      },
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
