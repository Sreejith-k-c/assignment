import 'package:assignment/profile%20ui1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Hotel(),));
}
class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/CROWN-PLAZZA-Kochi.jpg"),),
          Text("Crowne Plaza Kochi,Kerala"),
          Icon(Icons.hotel),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile_ui()));
          },
              child: Text("Book Now")),
          Text(
            "Ramada Plaza Palm Grove",
            style: GoogleFonts.cabinCondensed(
                fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
          ),
          Expanded(child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: const Text("""Ramada Plaza Palm Grove hotel on Juhu Beach is ideally located at the shores of the Arabian Sea and is a short distance from prime business districts, malls, and airports. Our clean and accommodating guest rooms were designed with your comfort in mind, featuring thoughtful amenities to brighten your stay.
            Work out in our fitness centre, with steam room, hot tub, and gym. Enjoy our outdoor pool, beauty salon, bookstore, three restaurants, and cyber café. Rooms come with coffee and tea maker, high-speed Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie jars. Suites, accessible rooms, and private meeting and conference rooms are available.  Enjoy our complimentary continental breakfast served daily. 
            Step outside our door and onto the beautiful sands of Juhu Beach where you can soak up the sun. Check out nearby landmarks, such as Versova Beach fishing community or Madh Island. See a show at Prithvi Theatre, learn something new at Nehru Science Center, or see the exhibits at the Jehangir Art Gallery. Other famous attractions in Mumbai include the Gateway of India monument, Mahalakshmi Temple, and Bollywood.
          """),
          ),
          ),
        ],
      ),
    );
  }
}