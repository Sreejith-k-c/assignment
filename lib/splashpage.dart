import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              image:
              DecorationImage(
                  fit:BoxFit.cover,image: AssetImage("assets/images/76bcad1c-034d-469b-b5c5-36712a9e22d9.jpeg"))),
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.fastfood_outlined,
                  size:80,
                  color:Colors.white,
                ),

                const Text(
                  "Fresh Foods Tasty & Healthy",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), //Text style
                ), //Text
              ],
            ),
          ),
        ));
  }
}
