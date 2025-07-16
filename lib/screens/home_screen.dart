import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/Components/dailyforecast.dart';
import 'package:weather_app/Modals/weatherdetails.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/screens/weekly_screen.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<Weatherdetails>? futureWeather;
  TextEditingController searchcontroller = TextEditingController();
  String city =  "Lahore";

  @override
  void initState() {
    super.initState();
    futureWeather = getweatherdetailsapi();
  }

  Future<Weatherdetails> getweatherdetailsapi() async {

    final String apiKey = "6f37c1f48f70449dbd0191843251007";
    String url =  "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$city&days=7&aqi=no&alerts=no";

    final response = await http.get(
      Uri.parse(url),
      headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp/1.0'},
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return Weatherdetails.fromJson(data);
    } else {
      throw Exception("Failed to load weather data");
    }
  }

  void onSearch() {
    setState(() {
      city = searchcontroller.text.trim().isEmpty ? "Lahore" : searchcontroller.text.trim();
      futureWeather = getweatherdetailsapi();
    });
  }


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
            child: FutureBuilder(
              future: futureWeather,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(

                        controller: searchcontroller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.10),
                          hintText: 'Search city here',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          prefixIcon: const Icon(Icons.search, color: Colors.blueAccent),
                          contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black, fontSize: 16),
                        onFieldSubmitted: (_) => onSearch(),
                      ),
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        SizedBox(width: 5),
                        Text(
                          snapshot.data!.location!.name.toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat(
                            'EEEE, dd MMMM yyyy • h:mm a',
                          ).format(
                            DateTime.parse(
                              snapshot.data!.location!.localtime
                                  .toString(),
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),*/
                    SizedBox(height: 5,),
                    Center(
                      child: SizedBox(
                        height: 200,
                        width: 210,
                        child: Image.network(
                          "https:${snapshot.data!.forecast!.forecastday![0].day!.condition!.icon}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '${snapshot.data!.current!.tempC?.toInt()}°',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        snapshot
                            .data!
                            .forecast!
                            .forecastday![0]
                            .day!
                            .condition!
                            .text
                            .toString(),
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Max: ${snapshot.data!.forecast!.forecastday![0].day!.maxtempC?.toInt()}°',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 18),
                        Text(
                          'Min: ${snapshot.data!.forecast!.forecastday![0].day!.mintempC?.toInt()}°',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: SizedBox(
                        height: 150,
                        width: 320,
                        child: Image.asset(
                          'assets/images/House.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xff222a51,), // dark blue (top in your image)
                            Color(0xff483b93), // purple
                            Color(0xff6d4dad),
                            Color(0xff8f44ac), // pinkish purple
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Today',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            WeeklyScreen(
                                              city: snapshot.data!.location!.name.toString(),
                                              country: snapshot.data!.location!.country.toString(),
                                              sunrise: snapshot.data!.forecast!.forecastday![0].astro!.sunrise.toString(),
                                              sunset: snapshot.data!.forecast!.forecastday![0].astro!.sunset.toString(),
                                              humidity: snapshot.data!.current!.humidity.toString(),
                                              uv: snapshot.data!.current!.uv!.toInt(),
                                              heat: snapshot.data!.current!.heatindexC!.toInt(),
                                              feelslike: snapshot.data!.current!.feelslikeC!.toInt(),
                                              nextdays: snapshot.data!.forecast!.forecastday!,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Weekly',
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(height: 10),
                          SizedBox(
                            height: 145,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 17,left: 27),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 7,
                                itemBuilder: (context, position) {
                                  return DailyForecast(
                                    title:
                                    '${snapshot.data!.forecast!.forecastday![0].hour![position].tempC?.toInt()}°',
                                    image:
                                    "https:${snapshot.data!.forecast!.forecastday![0].hour![position].condition!.icon}",
                                    subtitle: DateFormat('h:mm\n a')
                                        .format(
                                      DateTime.parse(
                                        snapshot
                                            .data!
                                            .forecast!
                                            .forecastday![0]
                                            .hour![position]
                                            .time!,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
                    },
                  ),
            ),
        ],
      ),
    );
  }
}
