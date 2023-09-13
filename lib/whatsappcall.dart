import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home:WhatsappCall()));
}

class WhatsappCall extends StatelessWidget {
  var name=["Naruto",
    "Sasuke",
    "Itachi",
    "Obito",
    "Jiraiya",
    "Kakashi",
    "Konohamaru",
    "Shikamaru",
    "Gaara",
    "Minato"];
  var image=["assets/images/naruto.jpg",
    "assets/images/sasuke.jpg",
    "assets/images/iachi.jpeg",
    "assets/images/obito.webp",
    "assets/images/jiraiya.jpg",
    "assets/images/kakashi.jpg",
    "assets/images/konohamaru.jpg",
    "assets/images/shikamaru.jpg",
    "assets/images/gaara.jpg",
    "assets/images/minato.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:List.generate(10, (index) => Card(
          child:ListTile(
            title: Text(name[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            trailing:Wrap(
                direction: Axis.vertical,
                children: [
                  Icon(Icons.phone)
                ]),
          ),
        )),
      ),
    );
  }
}