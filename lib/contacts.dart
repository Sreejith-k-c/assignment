import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contacts(),
  ));
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleContactList"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Akaza"),
              subtitle: Text("9078563421"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/akaza.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Luffy"),
              subtitle: Text("9874563420"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/luffy.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Naruto"),
              subtitle: Text("90785875431"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/naruto.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rengoku"),
              subtitle: Text("9078563421"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.wikia.nocookie.net/af987468-49da-4ba2-b140-9a088a2caca8")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Sasuke"),
              subtitle: Text("8096434231"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/sasuke.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Gojo"),
              subtitle: Text("8075085683"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/gojo.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
