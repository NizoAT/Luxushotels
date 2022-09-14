

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxushotels/ressources/hotelsrecipe.dart';

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});
  
  static const Color d_green = Color(0xFF54D3C2);

  @override
  Widget build(BuildContext context){

    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '550 hôtels trouvés',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize:15,
                                      
                  ),

                ),
                Row(
                  children: [
                    Text(
                      'Filtres',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),

                ),

                const IconButton(
                  onPressed: null, 
                  icon: Icon(
                    Icons.filter_list_outlined,
                     color: d_green,
                    size: 25,

                  ),
                  ),

                  ],
                ),

                
              ],
            ),
          ),

          Column(
            children: HotelRecipe.map((hotel) {
              return Text(hotel['title']);
            }).toList(),
            
          )
        ],
      ),
    );
  }
  
}