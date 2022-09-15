class HotelRecipe {
  
  String title;
  String place;
  String picture;
  double distance;
  int review;
  String price;

 HotelRecipe(this.title, this.place, this.distance, this.review, this.picture, this.price);
 static List<HotelRecipe> sample = [

     HotelRecipe(
       'Hôtel Grand Royl',
      'Londres, wembley',
       2,
       36,
       'assets/Grand Royl.jpg',
       '180',
    ),
    
       HotelRecipe(
       'Queen Hotel',
       'Londres, wembley',
       3,
       13,
      'assets/Queen Hotel.jpg',
      '220'
    ),
    
      HotelRecipe( 
      'Grand Mal Hotel',
      'Londres, wembley',
      6,
      88,
       'assets/Grand Mal.jpg',
       '400'
    ),

    HotelRecipe(
       'Hilton',
      'Londres, wembley',
       11,
      33,
       'assets/Hilton.jpg',
       '910'
   ) ,
    
      HotelRecipe(
       'HOTEL LAÏCO',
      'ougadougou, ouaga 2000',
      4,
       26,
       'assets/HOTEL LAÏCO.jpg',
       '340'
    ),

      HotelRecipe(
       'PALACE HOTEL',
     'ougadougou, ouaga 2000',
       7,
       12,
       'assets/PALACE HOTEL.jpg',
       '280'
   ),

     HotelRecipe(
        'SPLENDID HOTEL',
       'Ouagadougou , Avenue Kwamé N’Krumah',
       9,
       46,
       'assets/SPLENDID HOTEL.jpg',
      '480'
    ),


     HotelRecipe(
       'RELAX HOTEL',
       'Ouagadougou , Av. de la Nation',
       12,
       66,
       'assets/RELAX HOTEL.jpg',
      '80',
    ),
    

     HotelRecipe(
       'Villabobo',
      'Bobo Dioulasso , Av. de la Trevolution',
       1,
       6,
      'assets/Villabobo.jpg',
       '190'
    ),

      HotelRecipe(
       'Collection München Bavaria',
       'Munich, Gare centrale de Munich',
       0.16,
       76,
      'assets/München Bavaria.jpg',
      '180'
    ),

     
      HotelRecipe( 
        'Collection Marseille',
       'Marseille, wembley',
       1.48,
       45,
       'assets/Collection Marseille.jpg',
      '480'),
    
     HotelRecipe( 
      'Marbella',
      'Marbella, Alameda Park',
       2.28,
       44,
       'assets/Marbella.jpg',
      '780'
   ),
     
    HotelRecipe(
      'San Pedro de Alcántara',
      'Marbella Alameda Park',
      11.52,
      65,
      'assets/San Pedro de Alcántara.jpg',
      '800'
    ),
      HotelRecipe(
      'Anantara',
      'Padierna, Basilique Vega del Mar',
      18.82,
      49,
      'assets/Anantara.jpg',
      '700'
    ),
      HotelRecipe(
      'Kollwitz Platz',
      'Berlin,  Coney Island',
      2.34,
      15,
      'assets/Kollwitz Platz.jpg',
      '380'
    ),
      HotelRecipe(
      'Cartagena Urban Royal',
      'Seville, Plaza de los coche',
      14.5,
      74,
      'assets/Cartagena Urban Royal.jpg',
      '430'
    ),
    

  ];
}
