import 'package:flutter/material.dart';

class ludo extends StatefulWidget {
  const ludo({Key? key}) : super(key: key);

  @override
  State<ludo> createState() => _ludoState();
}

class _ludoState extends State<ludo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ludo Box",style: TextStyle(color: Colors.black,fontSize: 30)),
      ),
      body: Container(
        height: 410,
        width: 410,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black,width: 2),
        ),
        child: UnconstrainedBox(
          child: Container(
            height: 260,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(color: Colors.black,width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.black),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.black),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.black),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.black),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
