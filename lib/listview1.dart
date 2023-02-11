import 'package:flutter/material.dart';

class listview1 extends StatefulWidget {
  const listview1({Key? key}) : super(key: key);

  @override
  State<listview1> createState() => _listview1State();
}
    List a=["Orange","Cherry","Banana","Apple","Kiwi","Pear","Strawberry","Lemon","Peach","Apricot","Mango"];
    List a1=["47 Calories","50 Calories","89 Calories","52 Calories","61 Calories","57 Calories","33 Calories","29 Calories","39 Calories","48 Calories","60 Calories"];
    List a2=["orange.jpg","cherry.jpg","banana.jpg","apple.jpg","kiwi.jpg","pear.jpg","strawberry.jpg","lemon.jpg","peach.jpg","apricot.jpg","mango.jpg"];
class _listview1State extends State<listview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Calory Chart",style: TextStyle(
            color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 25,
      ),)),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView.separated(itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("Images/${a2[index]}"),
                radius: 35,
              ),
              title: Text("${a[index]}",style: TextStyle(color: Colors.black,fontSize: 20)),
              trailing: Text("${a1[index]}",style: TextStyle(color: Colors.black)),
            );
        }), separatorBuilder: (context, index) {
          return Divider(color: Colors.grey);
        }, itemCount: a.length),
      ),
    );
  }
}
