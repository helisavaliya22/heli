import 'package:flutter/material.dart';

class Form3 extends StatefulWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.teal,
                Colors.deepPurple
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                      children: [
                        TextSpan(text: "Let's"),
                        TextSpan(text: "  Register",style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      hintStyle: TextStyle(fontSize: 15,
                          color: Colors.black),
                      prefixIcon: Icon(Icons.account_circle,color: Colors.black),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 3),
                        borderRadius: BorderRadius.only
                          (bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(fontSize: 15,
                          color: Colors.black),
                      prefixIcon: Icon(Icons.email_rounded,color: Colors.black),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 3),
                        borderRadius: BorderRadius.only
                          (bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(fontSize: 15,
                          color: Colors.black),
                      prefixIcon: Icon(Icons.lock,color: Colors.black),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 3),
                        borderRadius: BorderRadius.only
                          (bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(fontSize: 15,
                          color: Colors.black),
                      prefixIcon: Icon(Icons.lock,color: Colors.black),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 3),
                        borderRadius: BorderRadius.only
                          (bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  height: 60,
                  width: 400,
                  alignment: Alignment.center,
                  child: Text("Sign Up",style: TextStyle(
                    fontSize: 20,color: Colors.white)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 20),
                Text("Already have an account?",style: TextStyle(
                  color: Colors.black,
                  fontSize: 10
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  height: 60,
                  width: 400,
                  alignment: Alignment.center,
                  child: Text("Sign In",style: TextStyle(
                      fontSize: 20,color: Colors.white)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}