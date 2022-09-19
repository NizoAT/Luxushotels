import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxushotels/widgets/myappbar.dart';
import 'package:luxushotels/widgets/searchsection.dart';
import 'package:luxushotels/widgets/bottomnavigationbar.dart';
import 'package:luxushotels/ressources/hotelsrecipe.dart';
import 'package:luxushotels/widgets/hotelcard.dart';
import 'package:luxushotels/pages/DetailHotel.dart';

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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child:Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey[800],
              padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: const SearchSection(),
          ),
          ) ,
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
          height: 20,
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
        Flexible(
          fit: FlexFit.loose,
          child: SizedBox(
          height: 350,
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
            ),
            
            
          ],
          
        ),
        ),
        ),
         ]
      ),
     
      bottomNavigationBar: const BottomNavBarSection(),
    );
  }
}
