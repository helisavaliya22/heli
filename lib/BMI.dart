import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  double bmi=0,i=0,h=0,w=0,h1=0;
  String Result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Counting",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 15),
          TextField(controller: t1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter Weight",
              labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),),
          SizedBox(height: 15),
          TextField(controller: t2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter feet",
              labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),),

          ElevatedButton(onPressed: (){
            w=double.parse(t1.text);
            h=double.parse(t2.text);
            i=h/3.281;
            h1=i*i;
            bmi=w/h1;
            if(bmi < 18.5)
              {
                Result="Under Weight";
              }
            else if(bmi > 18.5 && bmi < 25)
              {
                Result="Normal";
              }
            else
              {
                Result="Over Weight";
              }
            setState(() {

            });
          }, child: Text("Submit")),
          Text("BMI=$bmi"),
          Text("$Result")
        ],
      ),
    );
  }
}
 