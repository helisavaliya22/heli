import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrcolors = [
      Colors.blueAccent,
      Colors.pink,
      Colors.teal,
      Colors.amber,
      Colors.lightGreenAccent,
      Colors.red,
      Colors.blueAccent,
      Colors.pink,
      Colors.teal,
      Colors.amber,
      Colors.lightGreenAccent,
      Colors.red,
      Colors.blueAccent,
      Colors.pink,
      Colors.teal,
      Colors.amber,
      Colors.lightGreenAccent,
      Colors.red
    ];
    var arrPages = [
      'BMI',
      'day2',
      'student',
      'form1',
      'Form2',
      'Form3',
      'Tic-Tac',
      'Tic-Tac2',
      'Puzzle',
      'Image',
      'Box',
      'Call',
      'ludo',
      'listview'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style:
              TextStyle(color: Colors.black, fontSize: 30, letterSpacing: 0.5),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            color: arrcolors[index],
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, arrPages[index]);
              },
              child: FittedBox(
                child: Text(
                  arrPages[index],
                  style: TextStyle(fontSize: 55, color: Colors.black),
                ),
              ),
            ),
          );
        },
        itemCount: arrPages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue[200],items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.black),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp,color: Colors.black),
          label: "Search",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black),
          label: "Back",
          backgroundColor: Colors.black,
        ),
      ]
      ),
    );
  }
}
