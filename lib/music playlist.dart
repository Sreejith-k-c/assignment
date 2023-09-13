import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: MusicPlay(),));
}
class MusicPlay extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child:Text("Musify")),
      ),
      body: ListView(
        children: [
          Text("Recommended for you",style: GoogleFonts.mukta(
              fontSize: 20,color: Colors.pinkAccent,fontWeight: FontWeight.bold),
          ),
          Card(
            child:ListTile(
              title: Text("Unholy",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold),),
              subtitle: Text("Sam Smith,Kim Petras"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/unholy.webp"))
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Hero",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold)),
              subtitle: Text("Tylor Swift"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tylor.webp"))
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Lift Me Up",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold)),
              subtitle: Text("Rihana"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/lift me up.jpg"))
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Depression",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold)),
              subtitle: Text("Dax"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage(""))
            ),
          ),
          Card(
            child:ListTile(
              title: Text("I'm Good",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold)),
              subtitle: Text("David Guetta & Bebe Rexa"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/depre.jpg"))
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Demons",style: GoogleFonts.mukta(color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold)),
              subtitle: Text("Imagine Dragons"),
              trailing: Icon(Icons.star_border),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/demons.jpeg"))
            ),
          ),
        ],
      ),
    );
  }
}