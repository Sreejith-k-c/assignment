import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Whatschat()));
}

class Whatschat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: CircleAvatar(
            backgroundImage: NetworkImage("assets/images/narutodp.jpg")),

        title: Text("Naruto"),
        actions: [
          const Icon(Icons.videocam),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.phone),
          const SizedBox(
            width: 10,
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("View contact")),
              const PopupMenuItem(child: Text("Media,Links,and docs")),
              const PopupMenuItem(child: Text("Search")),
              const PopupMenuItem(child: Text("Mute notifications")),
              const PopupMenuItem(child: Text("Disappearing messages")),
              const PopupMenuItem(child: Text("Wallpaper")),
              const PopupMenuItem(child: Text("more")),
            ];
          })
        ],
      ),
      body: Form(
        child: Column(
          children: [
            Image.asset("assets/images/chat.jpg",
              height:450,
              width: 1000,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Message",
                    prefixIcon: Icon(Icons.emoji_emotions),
                    suffixIcon: Icon(Icons.keyboard_voice),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),

            ),

          ],
        ),
      ),
    );

  }
}
