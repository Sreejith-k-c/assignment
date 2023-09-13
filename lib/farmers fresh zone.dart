import 'package:flutter/material.dart';

import 'new widget.dart';

void main(){
  runApp(MaterialApp(home: FarmerZone(),));
}

class FarmerZone extends StatelessWidget {
  var name=["Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavours"];
  var image=["assets/images/vegetables.webp",
    "assets/images/fruitss.jpg",
    "assets/images/exotic veg.jpg",
    "assets/images/fresh cuts.webp",
    "assets/images/nutri.jpg",
    "assets/images/71KSWo4qMtL._AC_UF1000,1000_QL80_.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FARMERS FRESH ZONE"),
      ),
      body: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 6,
          itemBuilder: (context,index) {
            return NewWidget(
              myimage:AssetImage(image[index]),
              name:name[index],
            );
          }),
    );
  }
}
