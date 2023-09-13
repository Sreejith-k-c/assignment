import 'package:flutter/material.dart';
import 'package:assignment/login%20assignment.dart';
import 'package:assignment/signup.dart';


void main() {
  runApp(MaterialApp(home: open(),));
}

class open extends StatefulWidget {
  @override
  State<open> createState() => _openState();
}

class _openState extends State<open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Form(
        child: Column(
          children: [
            const Text(
              "",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            const Text(
              "Hello There!",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            const Text(
              "",
              style: TextStyle(fontSize: 5, color: Colors.grey),
            ),
            const Text(
              "Automatic identity verification which enable you to verify your identity",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Image.asset(
              "assets/images/ae3ed760-a157-4cea-a0d5-17d74b7157e4.jpeg",
              height: 300,
              width: 1200,
            ),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2()));
            },
                child: Text("Login")),
            TextButton(
                onPressed: () {}, child: Text("")),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
            },
                child: Text("Sign Up")),
            TextButton(
                onPressed: () {}, child: Text(""))
          ],
        ),
      ),
    );
  }
}