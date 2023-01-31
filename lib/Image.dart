import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Image",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        )),
      ),
      body: Column(
        children: [
          Image.asset('Images/image1.jpg'),
        ],
      ),
    );
  }
}
