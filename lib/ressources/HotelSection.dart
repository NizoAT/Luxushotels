import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxushotels/ressources/hotelsrecipe.dart';
import 'package:luxushotels/widgets/hotelcard.dart';
import 'package:luxushotels/pages/DetailHotel.dart';

const Color d_green = Color(0xFF54D3C2);

class HotelSection extends StatelessWidget {
  
  const HotelSection({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '550 hôtels trouvés',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
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
          SizedBox(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: HotelRecipe.sample.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailHotel(
                            hotelRecipe: HotelRecipe.sample[index]
                            );
                      }
                      ),
                    );
                  },
                  child: HotelCard(
                    hotelData: HotelRecipe.sample[index],
                    ),
                  
                );
              }
              ),
              ),
          
        ],
      ),
    );
  }
}
