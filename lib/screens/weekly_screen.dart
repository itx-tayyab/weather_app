import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/Components/weeklyforecast.dart';

class WeeklyScreen extends StatefulWidget {
  String city, country, sunrise, sunset, humidity,nextdays;
  int heat, feelslike, uv;
  WeeklyScreen({
    super.key,
    required this.city,
    required this.country,
    required this.sunrise,
    required this.sunset,
    required this.humidity,
    required this.uv,
    required this.heat,
    required this.feelslike,
    required this.nextdays,
  });

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}

class _WeeklyScreenState extends State<WeeklyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8f44ac),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff222a51),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff483b93),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.4),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff6d4dad),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      '${widget.city},',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.country,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WeeklyForecast(
                        title: 'Sunrise',
                        subtitle: widget.sunrise,
                      ),
                      WeeklyForecast(title: 'Sunset', subtitle: widget.sunset),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WeeklyForecast(
                          title: 'Humidity',
                          subtitle: widget.humidity,
                        ),
                        WeeklyForecast(
                          title: 'UV Index',
                          subtitle: widget.uv.toString(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WeeklyForecast(
                        title: 'Heat Index',
                        subtitle: '${widget.heat.toString()}°',
                      ),
                      WeeklyForecast(
                        title: 'Feelslike',
                        subtitle: '${widget.feelslike.toString()}°',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Next 7 days forecast',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Image.asset('partiallycloud.png'),
                            ),
                            title: Text(widget.nextdays), //working on this
                            subtitle: Text('sssssssssss'),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Previous 7 days forecast',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Image.asset('partiallycloud.png'),
                            ),
                            title: Text('hello'),
                            subtitle: Text('sssssssssss'),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
