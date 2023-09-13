import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home:WhatsappCommunity()));
}

class WhatsappCommunity extends StatelessWidget {
  var name=["New Community",
    "Groups",
    "Announcements",
    "News",
    "Sports World",
    "2023 Community"];
  var image=["assets/images/community new.jpg",
    "assets/images/groups.png",
    "assets/images/announcements.png",
    "assets/images/news.jpg",
    "assets/images/sports.png",
    "assets/images/community.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:List.generate(6, (index) => Card(
          child:ListTile(
            title: Text(name[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            trailing:Wrap(
                direction: Axis.vertical,
                children: [
                  Text("12.30"),SizedBox(width: 15,),
                  CircleAvatar(
                    minRadius: 20,
                    backgroundColor: Colors.teal,
                  )
                ]),
          ),
        )),
      ),
    );
  }
}