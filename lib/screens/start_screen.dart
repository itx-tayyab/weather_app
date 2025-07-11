import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8f44ac),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
              child: Container(height: MediaQuery.of(context).size.height * 0.2, width: MediaQuery.of(context).size.width, color: Color(0xff222a51))),
          Align(
            alignment: AlignmentDirectional(0, -0.5),
              child: Container(height: MediaQuery.of(context).size.height * 0.2, width: MediaQuery.of(context).size.width, color: Color(0xff483b93))),
          Align(
            alignment: AlignmentDirectional(0, 0.4),
              child: Container(height: MediaQuery.of(context).size.height * 0.4, width: MediaQuery.of(context).size.width, color: Color(0xff6d4dad))),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 350,
                    width: 250,
                    child: Image.asset('assets/images/partiallycloud.png'),
                  ),
                ),
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('WEATHER', style: GoogleFonts.poppins(
                          fontSize: 58,
                          color: Colors.white,
                        )),
                        Text('ForeCasts',style: GoogleFonts.poppins(
                          fontSize: 64,
                          color: Color(0xffDDB130),
                        )),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));
                  },
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffDDB130),
                      ),
                      child: Center(child: Text('Get Start',style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff362a84)
                      ),)),
                    ),
                  ),
                )
              ],
            ),
          ),

          
        ],
      ),
    );
  }
}
