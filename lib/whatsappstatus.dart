import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home:WhatsappStatus()));
}

class WhatsappStatus extends StatelessWidget {
  var name=["Naruto",
    "Sasuke",
    "Itachi",
    "Obito",
    "Jiraiya",
    "Konohamaru",
    "Shikamaru"];
  var image=["assets/images/naruto.jpg",
    "assets/images/sasuke.jpg",
    "assets/images/iachi.jpeg",
    "assets/images/obito.webp",
    "assets/images/jiraiya.jpg",
    "assets/images/konohamaru.jpg",
    "assets/images/shikamaru.jpg",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: CircleAvatar(
        backgroundImage: NetworkImage("assets/images/narutodp.jpg")),
        backgroundColor:Colors.teal,
        title: Text("My Status"),

      ),
      body: ListView(
        children:List.generate(7, (index) => Card(
          child:ListTile(
            title: Text(name[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            trailing:Wrap(
                direction: Axis.vertical,
               ),
          ),
        )),
      ),
    );
  }
}