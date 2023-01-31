import 'package:flutter/material.dart';

class Form2 extends StatefulWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("Login Page"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.purple
            ]
          ),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 170, 20, 0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: ("Enter name"),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                  labelText: ("Name"),
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                  icon: Icon(Icons.account_circle,color: Colors.black,size: 30),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: ("Enter Contact Number"),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                  labelText: ("Contact Number"),
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                  icon: Icon(Icons.numbers_outlined,color: Colors.black,size: 30),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: ("Enter Password"),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                  labelText: ("Password"),
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                  icon: Icon(Icons.password_rounded,color: Colors.black,size: 30),
                ),
              ),
              TextField(

                decoration: InputDecoration(
                  hintText: ("Submit"),
                  hintStyle: TextStyle(color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
