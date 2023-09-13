import 'package:assignment/todo/model/model%20task.dart';
import 'package:assignment/todo/model/task.g.dart';
import 'package:assignment/todo/view/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Task>(TaskAdapter());
  await Hive.openBox<Task>('tasksBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.cyan,
          useMaterial3: true,
          textTheme: TextTheme(
              displayLarge: GoogleFonts.dmSans(
                  fontSize: 32, fontWeight: FontWeight.bold, color: Colors.brown),
              displayMedium: GoogleFonts.dmSans(
                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown),
              titleLarge: GoogleFonts.dmSans(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
              titleMedium: GoogleFonts.dmSans(
                  fontSize: 20, fontWeight: FontWeight.w500, color: Colors.brown),
              bodyMedium: GoogleFonts.dmSans(
                  fontSize: 16, fontWeight: FontWeight.w500, color: Colors.brown),
              labelMedium:
              GoogleFonts.dmSans(fontSize: 14, color: Colors.lightBlue),
              labelSmall: GoogleFonts.dmSans(
                fontSize: 12,
              )),
          iconTheme: const IconThemeData(size: 28),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.cyan,
            disabledColor: Colors.cyan,
          ),
          bottomSheetTheme: BottomSheetThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}