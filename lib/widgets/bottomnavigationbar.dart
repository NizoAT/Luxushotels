import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarSection extends StatelessWidget {

  const BottomNavBarSection({super.key});

  static const Color d_green = Color(0xFF54D3C2);

  @override
  Widget build(BuildContext context){

    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600], 
      items:const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: d_green,
          ),
          label: "Explore",
        ),

         BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: d_green,
          ),
          label: "Tips",
        ),

         BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: d_green,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
