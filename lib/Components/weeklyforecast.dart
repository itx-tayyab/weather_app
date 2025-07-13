import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyForecast extends StatelessWidget {
  String title, subtitle;

  WeeklyForecast({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xff222a51), // dark blue (top in your image)
            Color(0xff483b93), // purple
            Color(0xff6d4dad),
            Color(0xff8f44ac),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.openSans(fontSize: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
