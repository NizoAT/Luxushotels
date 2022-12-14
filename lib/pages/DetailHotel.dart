import 'package:flutter/material.dart';
import 'package:luxushotels/ressources/hotelsrecipe.dart';
import 'package:luxushotels/widgets/myappbar.dart';
import 'package:google_fonts/google_fonts.dart';

const Color d_green = Color(0xFF54D3C2);

class DetailHotel extends StatefulWidget {

  final HotelRecipe hotelRecipe;
  const DetailHotel({Key? key, required this.hotelRecipe}) : super(key: key);

            @override
            _HotelDetailState createState() {
                  return _HotelDetailState();
            }
}

class _HotelDetailState extends State<DetailHotel> {

        @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
                title: Text(widget.hotelRecipe.title),
             ),
            body: SafeArea(
                 child: Expanded(
                  child:  Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  
                  widget.hotelRecipe.picture,
               ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: d_green,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.hotelRecipe.title,
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$ ${widget.hotelRecipe.price}' ,
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.hotelRecipe.place,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: d_green,
                      size: 14.0,
                    ),
                    Text(
                      '${widget.hotelRecipe.distance} km to city',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'per night',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: d_green,
                      size: 14.0,
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Text(
                  '${widget.hotelRecipe.review} reviews',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    ),
               
            ),
          );
        }
}

  //Column(
                //   children: <Widget>[
                //     SizedBox(
                //       height: 350,
                //       width: double.infinity,
                //       child: Image(image: AssetImage(widget.hotelRecipe.picture)),
                //     ),
                //     const SizedBox(
                //       height: 5,
                //     ),

                //   ],
                // ),