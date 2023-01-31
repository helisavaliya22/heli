import 'package:flutter/material.dart';

class day2 extends StatefulWidget {
  const day2({Key? key}) : super(key: key);

  @override
  State<day2> createState() => _day2State();
}

class _day2State extends State<day2> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  int sum=0,a=0,b=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,onChanged: (v){
            if(v=="" && t2.text!="")
              {
                a=0;
                b=int.parse(t2.text);
              }
            else if(t2.text=="")
              {
                b=0;
                a=int.parse(v);
              }
            else
              {
                a=int.parse(v);
                b=int.parse(t2.text);
                sum=a+b;
              }
            sum=a+b;
            setState(() {

            });
          },),
          TextField(controller: t2,onChanged: (v){
            if(v=="" && t1.text!="")
              {
                b=0;
                a=int.parse(t1.text);
              }
            else if(t1.text=="")
              {
                a=0;
                b=int.parse(t2.text);
              }
            else
              {
                a=int.parse(t1.text);
                b=int.parse(v);
                sum=a+b;
              }
            sum=a+b;
            setState(() {

            });
          },),
          ElevatedButton(onPressed: (){
            a=int.parse(t1.text);
            b=int.parse(t2.text);
            sum=a+b;
            setState(() {

            });
          }, child: Text("Sum")),
          Text("Sum=$sum")
        ],
      ),
    );
  }
}

