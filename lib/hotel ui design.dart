import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Profile_ui(),));
}

class Profile_ui extends StatelessWidget {
  const Profile_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName: Text("Crowne Plaza Kochi,Kerala",
                style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.black),),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
              ),),
            ListTile(
              leading: Icon(Icons.access_time_rounded),
              trailing: Icon(Icons.chevron_right),
              title: Text("Purchase History"),
            ),

          ],
        ),
      ),
    );
  }
}