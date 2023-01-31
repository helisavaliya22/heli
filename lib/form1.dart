import 'dart:ui';

import 'package:flutter/material.dart';

class form1 extends StatefulWidget {
  const form1({Key? key}) : super(key: key);

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title:
            Text("Let's Register", style: TextStyle(
                fontSize: 30,
                letterSpacing: 0.5,
                color: Colors.white,
            fontStyle: FontStyle.italic)),
      ),
      body:
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  Colors.grey
                ]
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 50
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    color: Colors.transparent,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                        labelText: "Name",
                        labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.account_circle,color: Colors.black,),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    color: Colors.transparent,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        prefixIcon: Icon(Icons.email_outlined,color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    color: Colors.transparent,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.password,color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(onPressed: (){
                  },
                      child: Text("Submit"),),
                  SizedBox(height: 50),
                  Text("By clicking Submit you accept all T&C",style: TextStyle(color: Colors.black,fontSize: 12),),
                  SizedBox(height: 30),
                  Icon(Icons.facebook_sharp,color: Colors.blue,size: 50),
                ],
              ),
            ),
      ),
    );
  }
}
