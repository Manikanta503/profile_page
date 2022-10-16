import './audio.dart';
import './submit.dart';
import 'package:flutter/material.dart';
import './dob.dart';
// import 'package:bio/audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My second step'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(100, 9, 100, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 155, 129, 211),
                child: const Center(
                  child: Text(
                    "Bio",
                    style: TextStyle(fontSize: 36),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(200, 18, 36, 0),
              // padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Image(
                image: AssetImage("images/flutter.jpeg"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 9, 9, 0),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Your Name",
                    labelText: "Name",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            DateOfBirth(),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 9, 9, 0),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Your designation",
                    labelText: "Designation",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 9, 9, 0),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Your email",
                    labelText: "Email",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 9, 9, 0),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Your address",
                    labelText: "Address",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 9, 9, 9),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 390,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color.fromARGB(255, 233, 190, 190),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "About",
                    labelStyle:
                        TextStyle(fontSize: 24, color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            Krish(),
            AlertBox(),
          ],
        ),
      ),
    );
  }
}
