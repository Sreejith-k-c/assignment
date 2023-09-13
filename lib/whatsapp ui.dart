import 'package:assignment/whatsapp%20community.dart';
import 'package:assignment/whatsappcall.dart';
import 'package:assignment/whatsappstatus.dart';
import 'package:assignment/whatschat.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: WhatsApp(),));
}
class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("WhatsApp"),
            actions:[
              const Icon(Icons.camera_alt),
              const SizedBox(width: 20,),
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(itemBuilder: (context){
                return [
                  const PopupMenuItem(child: Text("Settings")),
                  const PopupMenuItem(child: Text("Profile")),
                  const PopupMenuItem(child: Text("help")),
                ];
              })
            ],
            bottom:  TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                //isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.1,
                      child: FaIcon(FontAwesomeIcons.peopleGroup)),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Chat")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Call"))
                ]),
          ),
          body: TabBarView(
            children: [
              WhatsappCommunity(),
              WhatsappChat(),
              WhatsappStatus(),
              WhatsappCall(),

            ],
          ),
        ));
  }
}