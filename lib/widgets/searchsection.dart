import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxushotels/pages/calendar_page.dart';

 const Color d_green = Color(0xFF54D3C2);

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
         
        children: [
          Expanded(
              child:Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 3,
                 child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  
                  child:  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Ouagadougou',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                  
                ),
                ),
              
              const SizedBox(
                width: 10,
              ),
               
                
                Container(
                 height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalendarPage()
                        ),
                        
                      
                    );
                  },
                  
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10), 
                    backgroundColor: d_green,
                    shape: const CircleBorder(),
                    shadowColor: Colors.white,
                  ),
                ),
              ),
              
              
            ],
          ),
          ),
          Expanded(
              child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

                Expanded(
                  flex: 1,
                       child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                      'Choisissez la date',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    ),
               

                    const SizedBox(height: 8,),

                    Expanded(
                      flex: 2,
                       child: Text(
                      '12 Dec - 22 Dec',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 13,
                      ),

                    ),
                ),
               

                  ],
                ),
              ),
          ),
              

               Expanded(
                flex: 1,
                       child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Expanded(
                    flex: 2,
                       child: Text(
                      'Nombre de chambres',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    ),
                

                    const SizedBox(height: 8,),

                     Expanded(
                      flex: 2,
                       child: Text(
                      '1 Chambre - 2 Adultes',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 13,
                      )
                    ),
                    ),
                    

                  ],
                ),
              ),
      ),
              
            ],
          ),
          ),
        ],
      );
      
   
  }
}
