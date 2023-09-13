import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Hotelui(),));
}

class Hotelui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Type your location"),
        actions: [
          const Icon(Icons.card_travel),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Bouddha , Kathmandu",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
                ),
              ),
            Icon(Icons.hotel),
            SizedBox(width: 20,height: 20,),
            Icon(Icons.restaurant),
            SizedBox(width: 20,height: 20,),
            Icon(Icons.local_cafe),
            SizedBox(width: 20,height: 20,),
            Image(image: AssetImage("assets/images/hotel.jpeg")),
            SizedBox(height: 20,),
            Text("Awesom Room Near Bouddha")

          ],
        ),
      ),
    );
  }
}
