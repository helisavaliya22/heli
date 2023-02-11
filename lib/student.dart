
import 'package:flutter/material.dart';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  State<student> createState() => _studentState();
}

class _studentState extends State<student> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();
  int a=0,b=0,c=0,d=0,sum=0,max=0,min=0;
  double per=0;
  String Grade='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Student Marksheet",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
          fontStyle: FontStyle.italic
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            TextField(controller: t1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter Marks of English",
                labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),),

            SizedBox(height: 15),
            TextField(controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              labelText: "Enter Marks of Gujarati",
              labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),),

            SizedBox(height: 15),
            TextField(controller: t3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              labelText: "Enter Marks of Maths",
              labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),),

            SizedBox(height: 15),
            TextField(controller: t4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              labelText: "Enter Marks of Science",
              labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),),

            ElevatedButton(style: ButtonStyle(),onPressed: (){
              a=int.parse(t1.text);
              b=int.parse(t2.text);
              c=int.parse(t3.text);
              d=int.parse(t4.text);
              sum=a+b+c+d;
              per=sum/4;
              List marks = [a,b,c,d];
              max=marks.reduce((curr,next) => curr > next ? curr : next);
              min=marks.reduce((curr,next) => curr < next ? curr : next);
              if(per>=90)
                {
                  Grade='A';
                }
              else if(per>=80)
                {
                  Grade='B';
                }
              else if(per>=70)
                {
                  Grade='C';
                }
              else
                {
                  Grade='D';
                }
              setState(() {

              });
            }, child: Text("Submit")),
            Text("Sum=$sum"),
            Text("Percentage=$per"),
            Text("Maximum=$max"),
            Text("Minimum=$min"),
            Text("Grade:$Grade"),
          ],
        ),
      ),
    );
  }
}
