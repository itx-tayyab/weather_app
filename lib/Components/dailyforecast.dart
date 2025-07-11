import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyForecast extends StatelessWidget {
  String title, image, subtitle;
  DailyForecast({super.key, required this.title, required this.image, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title,style: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),),
      SizedBox(
        height: 50,
          width: 50,
          child: Image.network(image)),
      Text(subtitle,style: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),),
    ]);
  }
}
