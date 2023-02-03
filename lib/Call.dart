import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Call",style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 30
      ),)),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.redAccent,
              Colors.blueGrey,
              Colors.grey
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topRight
          ),
        ),
        child: Column(
          children: [
            Text("Calling...",style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )),
            SizedBox(height: 50),
            Text("Siya Kholer",style: TextStyle(
              fontSize: 40,
              color: Colors.white
            )),
            SizedBox(height: 10),
            Text("Home +91 847389293",style: TextStyle(
                fontSize: 20,
                color: Colors.white
            )),
            SizedBox(height: 10),
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWvhXdCxvGbmaopbgNQn95ahbEnERySC2sg&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // CircleAvatar(
            //   child: ClipOval(
            //     child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWvhXdCxvGbmaopbgNQn95ahbEnERySC2sg&usqp=CAU",
            //         width: 170,
            //         height: 170,
            //         fit: BoxFit.cover,
            //     ),
            //   ),
            //   radius: 70,
            // ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add,size: 50,color: Colors.grey),
                Icon(Icons.videocam,size: 50,color: Colors.grey),
                Icon(Icons.bluetooth,size: 45,color: Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("  Add call",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
                )),
                Text(" Video call",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                )),
                Text("Bluetooth",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                )),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.volume_up,size: 50,color: Colors.green),
                Icon(Icons.keyboard_hide,size: 40,color: Colors.white),
                Icon(Icons.dialpad,size: 40,color: Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Speaker",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                )),
                Text("    Mute",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                )),
                Text("   Keypad",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                )),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: Icon(Icons.call,color: Colors.red,size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
