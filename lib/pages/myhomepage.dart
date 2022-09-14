import 'package:flutter/material.dart';
import 'package:luxushotels/widgets/myappbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  const d_green = const Color(0xFF54D3C2);

      @override
      Widget build(BuildContext context){

        return Scaffold(

          appBar: const MyAppBar(),

          body: SafeArea(

            child: Container(),

            ),

            
            

        );

      }
}
