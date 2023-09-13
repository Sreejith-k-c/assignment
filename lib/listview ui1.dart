import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView2()));
}

class ListView2 extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  var name=["Name:Apple",
    "Name:Banana",
    "Name:Orange",
    "Name:Cherry",
    "Name:Grapes",
    "Name:strawberry",
    "Name:Mango",
    "Name:pineapple",
    "Name:Watermelon",
    "Name:Dragon fruit"];
  var image=["assets/images/apple.webp",
    "assets/images/banana.jpg",
    "assets/images/orange.jpg",
    "assets/images/cherry.jpeg",
    "assets/images/grapes1.jpeg",
    "assets/images/strawberry1.jpg",
    "assets/images/mango.jpg",
    "assets/images/pineapple.webp",
    "assets/images/watermelon.jpg",
    "assets/images/dragonfruit.jpg"];
 var unit=["kg","Doz","Doz","kg","pc",
            "Doz","kg","kg","pc","Doz"];
  var price=[80,50,60,90,70,100,60,60,50,120];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: Text("Product List"),
        actions: [
          const Icon(Icons.shopping_cart),
          const SizedBox(width: 40,),
        ],
      ),
      body: ListView(
        children:List.generate(10, (index) => Card(
            child:ListTile(
              title: Text(name[index]),
              subtitle: Text("price:${price[index]}"),
              trailing:  ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text("Add to Cart")),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
            )
        )),
      ),
    );
  }
}