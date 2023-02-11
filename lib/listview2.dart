import 'package:flutter/material.dart';

class listview2 extends StatefulWidget {
  const listview2({Key? key}) : super(key: key);

  @override
  State<listview2> createState() => _listview2State();
}

class _listview2State extends State<listview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
          // //childAspectRatio: 1,
          // crossAxisSpacing: 5,
          // mainAxisSpacing: 5
        ),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     height: 125,
                     width: 125,
                     decoration: BoxDecoration(
                       color: Colors.lightGreen,
                       borderRadius: BorderRadius.circular(10),
                     ),
                   ),
                 ],
               ),
             ],
            );
          },),
    );
  }
}
