import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridShrine(),));
}
class GridShrine extends StatelessWidget {
  var names=["Vagabond sack","Stella","Whitney belt","Garden strand","Strut earrings","Varsity socks"];
  var price=[120,58,35,98,34,12];
  var images=["assets/images/bag.jpg","assets/images/sunglass.jpg",
              "assets/images/belt.webp","assets/images/chain.webp",
              "assets/images/earrings.webp","assets/images/socks.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHRINE"),
          actions: [
          const Icon(Icons.search),
      const SizedBox(
        width: 20,
      ),
            const Icon(Icons.add_shopping_cart_outlined),
            const SizedBox(
              width: 20,
            ),
      ],
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
              List.generate(6,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image:  DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(images[index]),
                                    )),
                              ),
                               Text(names[index],
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                               Text("${price[index]}"),
                            ],
                          ),
                        ),
                      )))),
    );
  }
}