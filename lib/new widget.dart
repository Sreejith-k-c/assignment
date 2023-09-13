import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final ImageProvider myimage;
  final String name;

  NewWidget({super.key, required this.myimage,required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: myimage,width: 100,height: 100,),
          Text(name),

        ],
      ),
    );
  }
}
