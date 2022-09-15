import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
          child: Column(
            children: const [
              SearchSection(),
              HotelSection(),
            ],
          ),
      ),
      bottomNavigationBar: const BottomNavBarSection(),
    )
    );
  }
}
