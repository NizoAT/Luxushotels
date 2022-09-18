import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxushotels/widgets/myappbar.dart';
import 'package:luxushotels/widgets/searchsection.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:luxushotels/ressources/HotelSection.dart';
import 'package:luxushotels/widgets/bottomnavigationbar.dart';
 const Color d_green =  Color(0xFF54D3C2);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body:  SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              
              SearchSection(),
              //HotelSection(),
             
             
            ],
            
          ),
          ),
      ),
      bottomNavigationBar: const BottomNavBarSection(),
    );
  }
}
