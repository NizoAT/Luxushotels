import 'package:flutter/material.dart';
import 'package:luxushotels/widgets/myappbar.dart';
import 'package:luxushotels/widgets/searchsection.dart';
import 'calendar_page.dart';
import 'package:luxushotels/ressources/hotels_json.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const Color d_green = const Color(0xFF54D3C2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchSection(),
              HotelSection(),
            ],
          ),
        ),
      ),
    );
  }
}
