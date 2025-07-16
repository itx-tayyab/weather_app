
class Previousforecast {
  Previousforecast({
      Location? location, 
      Forecast? forecast,}){
    _location = location;
    _forecast = forecast;
}

  Previousforecast.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
  Location? _location;
  Forecast? _forecast;
Previousforecast copyWith({  Location? location,
  Forecast? forecast,
}) => Previousforecast(  location: location ?? _location,
  forecast: forecast ?? _forecast,
);
  Location? get location => _location;
  Forecast? get forecast => _forecast;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    return map;
  }

}


class Forecast {
  Forecast({
      List<Forecastday>? forecastday,}){
    _forecastday = forecastday;
}

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      _forecastday = [];
      json['forecastday'].forEach((v) {
        _forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
  List<Forecastday>? _forecastday;
Forecast copyWith({  List<Forecastday>? forecastday,
}) => Forecast(  forecastday: forecastday ?? _forecastday,
);
  List<Forecastday>? get forecastday => _forecastday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forecastday != null) {
      map['forecastday'] = _forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "2025-07-09"
/// date_epoch : 1752019200
/// day : {"maxtemp_c":25.7,"maxtemp_f":78.2,"mintemp_c":14.1,"mintemp_f":57.3,"avgtemp_c":20.3,"avgtemp_f":68.6,"maxwind_mph":7.4,"maxwind_kph":11.9,"totalprecip_mm":0.54,"totalprecip_in":0.02,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":54,"daily_will_it_rain":1,"daily_chance_of_rain":100,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Light rain shower","icon":"//cdn.weatherapi.com/weather/64x64/day/353.png","code":1240},"uv":6.0}
/// astro : {"sunrise":"04:54 AM","sunset":"09:17 PM","moonrise":"09:06 PM","moonset":"02:41 AM","moon_phase":"Waxing Gibbous","moon_illumination":96}
/// hour : [{"time_epoch":1752015600,"time":"2025-07-09 00:00","temp_c":16.5,"temp_f":61.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":304,"wind_dir":"NW","pressure_mb":1020.0,"pressure_in":30.12,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":56,"cloud":3,"feelslike_c":16.5,"feelslike_f":61.8,"windchill_c":16.5,"windchill_f":61.8,"heatindex_c":16.5,"heatindex_f":61.8,"dewpoint_c":7.8,"dewpoint_f":46.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.5,"gust_kph":8.9,"uv":0.0},{"time_epoch":1752019200,"time":"2025-07-09 01:00","temp_c":15.8,"temp_f":60.5,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":324,"wind_dir":"NW","pressure_mb":1020.0,"pressure_in":30.13,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":60,"cloud":32,"feelslike_c":15.8,"feelslike_f":60.5,"windchill_c":15.8,"windchill_f":60.5,"heatindex_c":15.8,"heatindex_f":60.5,"dewpoint_c":8.1,"dewpoint_f":46.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":0.0},{"time_epoch":1752022800,"time":"2025-07-09 02:00","temp_c":15.1,"temp_f":59.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":339,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.14,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":64,"cloud":8,"feelslike_c":15.1,"feelslike_f":59.2,"windchill_c":15.1,"windchill_f":59.2,"heatindex_c":15.1,"heatindex_f":59.2,"dewpoint_c":8.4,"dewpoint_f":47.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.7,"gust_kph":10.8,"uv":0.0},{"time_epoch":1752026400,"time":"2025-07-09 03:00","temp_c":14.5,"temp_f":58.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":344,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.14,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":67,"cloud":5,"feelslike_c":14.6,"feelslike_f":58.4,"windchill_c":14.6,"windchill_f":58.4,"heatindex_c":14.5,"heatindex_f":58.1,"dewpoint_c":8.4,"dewpoint_f":47.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.1,"gust_kph":9.9,"uv":0.0},{"time_epoch":1752030000,"time":"2025-07-09 04:00","temp_c":14.1,"temp_f":57.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":334,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.14,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":67,"cloud":4,"feelslike_c":14.4,"feelslike_f":57.8,"windchill_c":14.4,"windchill_f":57.8,"heatindex_c":14.1,"heatindex_f":57.3,"dewpoint_c":8.1,"dewpoint_f":46.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.2,"gust_kph":8.4,"uv":0.0},{"time_epoch":1752033600,"time":"2025-07-09 05:00","temp_c":14.4,"temp_f":57.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":329,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.15,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":63,"cloud":6,"feelslike_c":14.5,"feelslike_f":58.2,"windchill_c":14.5,"windchill_f":58.2,"heatindex_c":14.4,"heatindex_f":57.9,"dewpoint_c":7.4,"dewpoint_f":45.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.5,"gust_kph":8.9,"uv":4.0},{"time_epoch":1752037200,"time":"2025-07-09 06:00","temp_c":15.6,"temp_f":60.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":325,"wind_dir":"NW","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":53,"cloud":11,"feelslike_c":15.6,"feelslike_f":60.2,"windchill_c":15.6,"windchill_f":60.2,"heatindex_c":15.6,"heatindex_f":60.2,"dewpoint_c":6.2,"dewpoint_f":43.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.0,"gust_kph":8.1,"uv":5.0},{"time_epoch":1752040800,"time":"2025-07-09 07:00","temp_c":17.3,"temp_f":63.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":319,"wind_dir":"NW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":46,"cloud":12,"feelslike_c":17.3,"feelslike_f":63.2,"windchill_c":17.3,"windchill_f":63.2,"heatindex_c":17.3,"heatindex_f":63.2,"dewpoint_c":5.7,"dewpoint_f":42.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.3,"gust_kph":8.5,"uv":5.0},{"time_epoch":1752044400,"time":"2025-07-09 08:00","temp_c":19.0,"temp_f":66.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":320,"wind_dir":"NW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":46,"cloud":12,"feelslike_c":19.0,"feelslike_f":66.2,"windchill_c":19.0,"windchill_f":66.2,"heatindex_c":19.0,"heatindex_f":66.2,"dewpoint_c":7.3,"dewpoint_f":45.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":5.0},{"time_epoch":1752048000,"time":"2025-07-09 09:00","temp_c":20.6,"temp_f":69.2,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":324,"wind_dir":"NW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":53,"cloud":42,"feelslike_c":20.7,"feelslike_f":69.2,"windchill_c":20.7,"windchill_f":69.2,"heatindex_c":20.7,"heatindex_f":69.2,"dewpoint_c":10.7,"dewpoint_f":51.3,"will_it_rain":0,"chance_of_rain":45,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":6.0},{"time_epoch":1752051600,"time":"2025-07-09 10:00","temp_c":22.3,"temp_f":72.1,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":324,"wind_dir":"NW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":52,"cloud":64,"feelslike_c":24.5,"feelslike_f":76.2,"windchill_c":22.3,"windchill_f":72.1,"heatindex_c":24.5,"heatindex_f":76.2,"dewpoint_c":11.9,"dewpoint_f":53.5,"will_it_rain":0,"chance_of_rain":45,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.7,"gust_kph":10.8,"uv":5.0},{"time_epoch":1752055200,"time":"2025-07-09 11:00","temp_c":23.1,"temp_f":73.5,"is_day":1,"condition":{"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":327,"wind_dir":"NNW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.08,"precip_in":0.0,"snow_cm":0.0,"humidity":51,"cloud":100,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":23.1,"windchill_f":73.5,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":45,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.5,"gust_kph":12.0,"uv":5.0},{"time_epoch":1752058800,"time":"2025-07-09 12:00","temp_c":22.1,"temp_f":71.7,"is_day":1,"condition":{"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063},"wind_mph":7.4,"wind_kph":11.9,"wind_degree":336,"wind_dir":"NNW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.11,"precip_in":0.0,"snow_cm":0.0,"humidity":58,"cloud":89,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":22.1,"windchill_f":71.7,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":13.4,"dewpoint_f":56.2,"will_it_rain":1,"chance_of_rain":100,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.9,"gust_kph":14.3,"uv":5.0},{"time_epoch":1752062400,"time":"2025-07-09 13:00","temp_c":23.0,"temp_f":73.3,"is_day":1,"condition":{"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":339,"wind_dir":"NNW","pressure_mb":1022.0,"pressure_in":30.17,"precip_mm":0.13,"precip_in":0.01,"snow_cm":0.0,"humidity":55,"cloud":76,"feelslike_c":24.8,"feelslike_f":76.7,"windchill_c":23.0,"windchill_f":73.3,"heatindex_c":24.8,"heatindex_f":76.7,"dewpoint_c":13.4,"dewpoint_f":56.1,"will_it_rain":1,"chance_of_rain":100,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.6,"uv":5.0},{"time_epoch":1752066000,"time":"2025-07-09 14:00","temp_c":24.6,"temp_f":76.2,"is_day":1,"condition":{"text":"Light rain shower","icon":"//cdn.weatherapi.com/weather/64x64/day/353.png","code":1240},"wind_mph":6.3,"wind_kph":10.1,"wind_degree":339,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.19,"precip_in":0.01,"snow_cm":0.0,"humidity":48,"cloud":83,"feelslike_c":25.5,"feelslike_f":77.8,"windchill_c":24.6,"windchill_f":76.2,"heatindex_c":25.5,"heatindex_f":77.8,"dewpoint_c":12.9,"dewpoint_f":55.2,"will_it_rain":1,"chance_of_rain":100,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.3,"gust_kph":11.7,"uv":5.0},{"time_epoch":1752069600,"time":"2025-07-09 15:00","temp_c":25.5,"temp_f":77.9,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":346,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":44,"cloud":67,"feelslike_c":25.9,"feelslike_f":78.6,"windchill_c":25.5,"windchill_f":77.9,"heatindex_c":25.9,"heatindex_f":78.6,"dewpoint_c":12.3,"dewpoint_f":54.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.5,"gust_kph":12.1,"uv":6.0},{"time_epoch":1752073200,"time":"2025-07-09 16:00","temp_c":25.7,"temp_f":78.2,"is_day":1,"condition":{"text":"Patchy rain possible","icon":"//cdn.weatherapi.com/weather/64x64/day/176.png","code":1063},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":348,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.15,"precip_mm":0.03,"precip_in":0.0,"snow_cm":0.0,"humidity":43,"cloud":65,"feelslike_c":26.0,"feelslike_f":78.8,"windchill_c":25.7,"windchill_f":78.2,"heatindex_c":26.0,"heatindex_f":78.8,"dewpoint_c":12.1,"dewpoint_f":53.7,"will_it_rain":0,"chance_of_rain":45,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.5,"gust_kph":12.1,"uv":6.0},{"time_epoch":1752076800,"time":"2025-07-09 17:00","temp_c":24.7,"temp_f":76.4,"is_day":1,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/day/122.png","code":1009},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":350,"wind_dir":"N","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":46,"cloud":100,"feelslike_c":25.4,"feelslike_f":77.8,"windchill_c":24.7,"windchill_f":76.4,"heatindex_c":25.4,"heatindex_f":77.8,"dewpoint_c":12.3,"dewpoint_f":54.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.8,"gust_kph":12.5,"uv":5.0},{"time_epoch":1752080400,"time":"2025-07-09 18:00","temp_c":24.1,"temp_f":75.5,"is_day":1,"condition":{"text":"Cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/119.png","code":1006},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":342,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":47,"cloud":80,"feelslike_c":25.2,"feelslike_f":77.3,"windchill_c":24.1,"windchill_f":75.5,"heatindex_c":25.2,"heatindex_f":77.3,"dewpoint_c":12.2,"dewpoint_f":54.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.9,"gust_kph":7.8,"uv":5.0},{"time_epoch":1752084000,"time":"2025-07-09 19:00","temp_c":23.8,"temp_f":74.9,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":332,"wind_dir":"NNW","pressure_mb":1021.0,"pressure_in":30.16,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":48,"cloud":58,"feelslike_c":25.0,"feelslike_f":77.1,"windchill_c":23.8,"windchill_f":74.9,"heatindex_c":25.0,"heatindex_f":77.1,"dewpoint_c":12.2,"dewpoint_f":54.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.1,"gust_kph":8.2,"uv":6.0},{"time_epoch":1752087600,"time":"2025-07-09 20:00","temp_c":22.8,"temp_f":73.0,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":359,"wind_dir":"N","pressure_mb":1022.0,"pressure_in":30.18,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":52,"cloud":45,"feelslike_c":24.7,"feelslike_f":76.4,"windchill_c":22.8,"windchill_f":73.0,"heatindex_c":24.7,"heatindex_f":76.4,"dewpoint_c":12.4,"dewpoint_f":54.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.5,"gust_kph":12.1,"uv":6.0},{"time_epoch":1752091200,"time":"2025-07-09 21:00","temp_c":21.4,"temp_f":70.6,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":24,"wind_dir":"NNE","pressure_mb":1022.0,"pressure_in":30.19,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":58,"cloud":47,"feelslike_c":21.4,"feelslike_f":70.6,"windchill_c":21.4,"windchill_f":70.6,"heatindex_c":24.5,"heatindex_f":76.0,"dewpoint_c":12.9,"dewpoint_f":55.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.8,"gust_kph":10.9,"uv":6.0},{"time_epoch":1752094800,"time":"2025-07-09 22:00","temp_c":20.8,"temp_f":69.4,"is_day":0,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/night/122.png","code":1009},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":37,"wind_dir":"NE","pressure_mb":1022.0,"pressure_in":30.19,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":61,"cloud":100,"feelslike_c":20.8,"feelslike_f":69.4,"windchill_c":20.8,"windchill_f":69.4,"heatindex_c":20.8,"heatindex_f":69.4,"dewpoint_c":13.1,"dewpoint_f":55.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.2,"gust_kph":8.4,"uv":0.0},{"time_epoch":1752098400,"time":"2025-07-09 23:00","temp_c":21.0,"temp_f":69.9,"is_day":0,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/night/116.png","code":1003},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":23,"wind_dir":"NNE","pressure_mb":1023.0,"pressure_in":30.2,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":61,"cloud":54,"feelslike_c":21.0,"feelslike_f":69.9,"windchill_c":21.0,"windchill_f":69.9,"heatindex_c":24.4,"heatindex_f":76.0,"dewpoint_c":13.3,"dewpoint_f":55.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.7,"gust_kph":7.5,"uv":0.0}]

class Forecastday {
  Forecastday({
      String? date, 
      num? dateEpoch, 
      Day? day, 
      Astro? astro, 
      List<Hour>? hour,}){
    _date = date;
    _dateEpoch = dateEpoch;
    _day = day;
    _astro = astro;
    _hour = hour;
}

  Forecastday.fromJson(dynamic json) {
    _date = json['date'];
    _dateEpoch = json['date_epoch'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
    _astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      _hour = [];
      json['hour'].forEach((v) {
        _hour?.add(Hour.fromJson(v));
      });
    }
  }
  String? _date;
  num? _dateEpoch;
  Day? _day;
  Astro? _astro;
  List<Hour>? _hour;
Forecastday copyWith({  String? date,
  num? dateEpoch,
  Day? day,
  Astro? astro,
  List<Hour>? hour,
}) => Forecastday(  date: date ?? _date,
  dateEpoch: dateEpoch ?? _dateEpoch,
  day: day ?? _day,
  astro: astro ?? _astro,
  hour: hour ?? _hour,
);
  String? get date => _date;
  num? get dateEpoch => _dateEpoch;
  Day? get day => _day;
  Astro? get astro => _astro;
  List<Hour>? get hour => _hour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['date_epoch'] = _dateEpoch;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    if (_astro != null) {
      map['astro'] = _astro?.toJson();
    }
    if (_hour != null) {
      map['hour'] = _hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// time_epoch : 1752015600
/// time : "2025-07-09 00:00"
/// temp_c : 16.5
/// temp_f : 61.8
/// is_day : 0
/// condition : {"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000}
/// wind_mph : 3.4
/// wind_kph : 5.4
/// wind_degree : 304
/// wind_dir : "NW"
/// pressure_mb : 1020.0
/// pressure_in : 30.12
/// precip_mm : 0.0
/// precip_in : 0.0
/// snow_cm : 0.0
/// humidity : 56
/// cloud : 3
/// feelslike_c : 16.5
/// feelslike_f : 61.8
/// windchill_c : 16.5
/// windchill_f : 61.8
/// heatindex_c : 16.5
/// heatindex_f : 61.8
/// dewpoint_c : 7.8
/// dewpoint_f : 46.0
/// will_it_rain : 0
/// chance_of_rain : 0
/// will_it_snow : 0
/// chance_of_snow : 0
/// vis_km : 10.0
/// vis_miles : 6.0
/// gust_mph : 5.5
/// gust_kph : 8.9
/// uv : 0.0

class Hour {
  Hour({
      num? timeEpoch, 
      String? time, 
      num? tempC, 
      num? tempF, 
      num? isDay, 
      Condition? condition, 
      num? windMph, 
      num? windKph, 
      num? windDegree, 
      String? windDir, 
      num? pressureMb, 
      num? pressureIn, 
      num? precipMm, 
      num? precipIn, 
      num? snowCm, 
      num? humidity, 
      num? cloud, 
      num? feelslikeC, 
      num? feelslikeF, 
      num? windchillC, 
      num? windchillF, 
      num? heatindexC, 
      num? heatindexF, 
      num? dewpointC, 
      num? dewpointF, 
      num? willItRain, 
      num? chanceOfRain, 
      num? willItSnow, 
      num? chanceOfSnow, 
      num? visKm, 
      num? visMiles, 
      num? gustMph, 
      num? gustKph, 
      num? uv,}){
    _timeEpoch = timeEpoch;
    _time = time;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _snowCm = snowCm;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _willItRain = willItRain;
    _chanceOfRain = chanceOfRain;
    _willItSnow = willItSnow;
    _chanceOfSnow = chanceOfSnow;
    _visKm = visKm;
    _visMiles = visMiles;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _uv = uv;
}

  Hour.fromJson(dynamic json) {
    _timeEpoch = json['time_epoch'];
    _time = json['time'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _snowCm = json['snow_cm'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _willItRain = json['will_it_rain'];
    _chanceOfRain = json['chance_of_rain'];
    _willItSnow = json['will_it_snow'];
    _chanceOfSnow = json['chance_of_snow'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _uv = json['uv'];
  }
  num? _timeEpoch;
  String? _time;
  num? _tempC;
  num? _tempF;
  num? _isDay;
  Condition? _condition;
  num? _windMph;
  num? _windKph;
  num? _windDegree;
  String? _windDir;
  num? _pressureMb;
  num? _pressureIn;
  num? _precipMm;
  num? _precipIn;
  num? _snowCm;
  num? _humidity;
  num? _cloud;
  num? _feelslikeC;
  num? _feelslikeF;
  num? _windchillC;
  num? _windchillF;
  num? _heatindexC;
  num? _heatindexF;
  num? _dewpointC;
  num? _dewpointF;
  num? _willItRain;
  num? _chanceOfRain;
  num? _willItSnow;
  num? _chanceOfSnow;
  num? _visKm;
  num? _visMiles;
  num? _gustMph;
  num? _gustKph;
  num? _uv;
Hour copyWith({  num? timeEpoch,
  String? time,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? snowCm,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? windchillC,
  num? windchillF,
  num? heatindexC,
  num? heatindexF,
  num? dewpointC,
  num? dewpointF,
  num? willItRain,
  num? chanceOfRain,
  num? willItSnow,
  num? chanceOfSnow,
  num? visKm,
  num? visMiles,
  num? gustMph,
  num? gustKph,
  num? uv,
}) => Hour(  timeEpoch: timeEpoch ?? _timeEpoch,
  time: time ?? _time,
  tempC: tempC ?? _tempC,
  tempF: tempF ?? _tempF,
  isDay: isDay ?? _isDay,
  condition: condition ?? _condition,
  windMph: windMph ?? _windMph,
  windKph: windKph ?? _windKph,
  windDegree: windDegree ?? _windDegree,
  windDir: windDir ?? _windDir,
  pressureMb: pressureMb ?? _pressureMb,
  pressureIn: pressureIn ?? _pressureIn,
  precipMm: precipMm ?? _precipMm,
  precipIn: precipIn ?? _precipIn,
  snowCm: snowCm ?? _snowCm,
  humidity: humidity ?? _humidity,
  cloud: cloud ?? _cloud,
  feelslikeC: feelslikeC ?? _feelslikeC,
  feelslikeF: feelslikeF ?? _feelslikeF,
  windchillC: windchillC ?? _windchillC,
  windchillF: windchillF ?? _windchillF,
  heatindexC: heatindexC ?? _heatindexC,
  heatindexF: heatindexF ?? _heatindexF,
  dewpointC: dewpointC ?? _dewpointC,
  dewpointF: dewpointF ?? _dewpointF,
  willItRain: willItRain ?? _willItRain,
  chanceOfRain: chanceOfRain ?? _chanceOfRain,
  willItSnow: willItSnow ?? _willItSnow,
  chanceOfSnow: chanceOfSnow ?? _chanceOfSnow,
  visKm: visKm ?? _visKm,
  visMiles: visMiles ?? _visMiles,
  gustMph: gustMph ?? _gustMph,
  gustKph: gustKph ?? _gustKph,
  uv: uv ?? _uv,
);
  num? get timeEpoch => _timeEpoch;
  String? get time => _time;
  num? get tempC => _tempC;
  num? get tempF => _tempF;
  num? get isDay => _isDay;
  Condition? get condition => _condition;
  num? get windMph => _windMph;
  num? get windKph => _windKph;
  num? get windDegree => _windDegree;
  String? get windDir => _windDir;
  num? get pressureMb => _pressureMb;
  num? get pressureIn => _pressureIn;
  num? get precipMm => _precipMm;
  num? get precipIn => _precipIn;
  num? get snowCm => _snowCm;
  num? get humidity => _humidity;
  num? get cloud => _cloud;
  num? get feelslikeC => _feelslikeC;
  num? get feelslikeF => _feelslikeF;
  num? get windchillC => _windchillC;
  num? get windchillF => _windchillF;
  num? get heatindexC => _heatindexC;
  num? get heatindexF => _heatindexF;
  num? get dewpointC => _dewpointC;
  num? get dewpointF => _dewpointF;
  num? get willItRain => _willItRain;
  num? get chanceOfRain => _chanceOfRain;
  num? get willItSnow => _willItSnow;
  num? get chanceOfSnow => _chanceOfSnow;
  num? get visKm => _visKm;
  num? get visMiles => _visMiles;
  num? get gustMph => _gustMph;
  num? get gustKph => _gustKph;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = _timeEpoch;
    map['time'] = _time;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['snow_cm'] = _snowCm;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['will_it_rain'] = _willItRain;
    map['chance_of_rain'] = _chanceOfRain;
    map['will_it_snow'] = _willItSnow;
    map['chance_of_snow'] = _chanceOfSnow;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    map['uv'] = _uv;
    return map;
  }

}

/// text : "Clear"
/// icon : "//cdn.weatherapi.com/weather/64x64/night/113.png"
/// code : 1000

class Condition {
  Condition({
      String? text, 
      String? icon, 
      num? code,}){
    _text = text;
    _icon = icon;
    _code = code;
}

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }
  String? _text;
  String? _icon;
  num? _code;
Condition copyWith({  String? text,
  String? icon,
  num? code,
}) => Condition(  text: text ?? _text,
  icon: icon ?? _icon,
  code: code ?? _code,
);
  String? get text => _text;
  String? get icon => _icon;
  num? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }

}

/// sunrise : "04:54 AM"
/// sunset : "09:17 PM"
/// moonrise : "09:06 PM"
/// moonset : "02:41 AM"
/// moon_phase : "Waxing Gibbous"
/// moon_illumination : 96

class Astro {
  Astro({
      String? sunrise, 
      String? sunset, 
      String? moonrise, 
      String? moonset, 
      String? moonPhase, 
      num? moonIllumination,}){
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _moonIllumination = moonIllumination;
}

  Astro.fromJson(dynamic json) {
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _moonIllumination = json['moon_illumination'];
  }
  String? _sunrise;
  String? _sunset;
  String? _moonrise;
  String? _moonset;
  String? _moonPhase;
  num? _moonIllumination;
Astro copyWith({  String? sunrise,
  String? sunset,
  String? moonrise,
  String? moonset,
  String? moonPhase,
  num? moonIllumination,
}) => Astro(  sunrise: sunrise ?? _sunrise,
  sunset: sunset ?? _sunset,
  moonrise: moonrise ?? _moonrise,
  moonset: moonset ?? _moonset,
  moonPhase: moonPhase ?? _moonPhase,
  moonIllumination: moonIllumination ?? _moonIllumination,
);
  String? get sunrise => _sunrise;
  String? get sunset => _sunset;
  String? get moonrise => _moonrise;
  String? get moonset => _moonset;
  String? get moonPhase => _moonPhase;
  num? get moonIllumination => _moonIllumination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['moon_illumination'] = _moonIllumination;
    return map;
  }

}

/// maxtemp_c : 25.7
/// maxtemp_f : 78.2
/// mintemp_c : 14.1
/// mintemp_f : 57.3
/// avgtemp_c : 20.3
/// avgtemp_f : 68.6
/// maxwind_mph : 7.4
/// maxwind_kph : 11.9
/// totalprecip_mm : 0.54
/// totalprecip_in : 0.02
/// totalsnow_cm : 0.0
/// avgvis_km : 10.0
/// avgvis_miles : 6.0
/// avghumidity : 54
/// daily_will_it_rain : 1
/// daily_chance_of_rain : 100
/// daily_will_it_snow : 0
/// daily_chance_of_snow : 0
/// condition : {"text":"Light rain shower","icon":"//cdn.weatherapi.com/weather/64x64/day/353.png","code":1240}
/// uv : 6.0

class Day {
  Day({
      num? maxtempC, 
      num? maxtempF, 
      num? mintempC, 
      num? mintempF, 
      num? avgtempC, 
      num? avgtempF, 
      num? maxwindMph, 
      num? maxwindKph, 
      num? totalprecipMm, 
      num? totalprecipIn, 
      num? totalsnowCm, 
      num? avgvisKm, 
      num? avgvisMiles, 
      num? avghumidity, 
      num? dailyWillItRain, 
      num? dailyChanceOfRain, 
      num? dailyWillItSnow, 
      num? dailyChanceOfSnow, 
      Condition? condition, 
      num? uv,}){
    _maxtempC = maxtempC;
    _maxtempF = maxtempF;
    _mintempC = mintempC;
    _mintempF = mintempF;
    _avgtempC = avgtempC;
    _avgtempF = avgtempF;
    _maxwindMph = maxwindMph;
    _maxwindKph = maxwindKph;
    _totalprecipMm = totalprecipMm;
    _totalprecipIn = totalprecipIn;
    _totalsnowCm = totalsnowCm;
    _avgvisKm = avgvisKm;
    _avgvisMiles = avgvisMiles;
    _avghumidity = avghumidity;
    _dailyWillItRain = dailyWillItRain;
    _dailyChanceOfRain = dailyChanceOfRain;
    _dailyWillItSnow = dailyWillItSnow;
    _dailyChanceOfSnow = dailyChanceOfSnow;
    _condition = condition;
    _uv = uv;
}

  Day.fromJson(dynamic json) {
    _maxtempC = json['maxtemp_c'];
    _maxtempF = json['maxtemp_f'];
    _mintempC = json['mintemp_c'];
    _mintempF = json['mintemp_f'];
    _avgtempC = json['avgtemp_c'];
    _avgtempF = json['avgtemp_f'];
    _maxwindMph = json['maxwind_mph'];
    _maxwindKph = json['maxwind_kph'];
    _totalprecipMm = json['totalprecip_mm'];
    _totalprecipIn = json['totalprecip_in'];
    _totalsnowCm = json['totalsnow_cm'];
    _avgvisKm = json['avgvis_km'];
    _avgvisMiles = json['avgvis_miles'];
    _avghumidity = json['avghumidity'];
    _dailyWillItRain = json['daily_will_it_rain'];
    _dailyChanceOfRain = json['daily_chance_of_rain'];
    _dailyWillItSnow = json['daily_will_it_snow'];
    _dailyChanceOfSnow = json['daily_chance_of_snow'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _uv = json['uv'];
  }
  num? _maxtempC;
  num? _maxtempF;
  num? _mintempC;
  num? _mintempF;
  num? _avgtempC;
  num? _avgtempF;
  num? _maxwindMph;
  num? _maxwindKph;
  num? _totalprecipMm;
  num? _totalprecipIn;
  num? _totalsnowCm;
  num? _avgvisKm;
  num? _avgvisMiles;
  num? _avghumidity;
  num? _dailyWillItRain;
  num? _dailyChanceOfRain;
  num? _dailyWillItSnow;
  num? _dailyChanceOfSnow;
  Condition? _condition;
  num? _uv;
Day copyWith({  num? maxtempC,
  num? maxtempF,
  num? mintempC,
  num? mintempF,
  num? avgtempC,
  num? avgtempF,
  num? maxwindMph,
  num? maxwindKph,
  num? totalprecipMm,
  num? totalprecipIn,
  num? totalsnowCm,
  num? avgvisKm,
  num? avgvisMiles,
  num? avghumidity,
  num? dailyWillItRain,
  num? dailyChanceOfRain,
  num? dailyWillItSnow,
  num? dailyChanceOfSnow,
  Condition? condition,
  num? uv,
}) => Day(  maxtempC: maxtempC ?? _maxtempC,
  maxtempF: maxtempF ?? _maxtempF,
  mintempC: mintempC ?? _mintempC,
  mintempF: mintempF ?? _mintempF,
  avgtempC: avgtempC ?? _avgtempC,
  avgtempF: avgtempF ?? _avgtempF,
  maxwindMph: maxwindMph ?? _maxwindMph,
  maxwindKph: maxwindKph ?? _maxwindKph,
  totalprecipMm: totalprecipMm ?? _totalprecipMm,
  totalprecipIn: totalprecipIn ?? _totalprecipIn,
  totalsnowCm: totalsnowCm ?? _totalsnowCm,
  avgvisKm: avgvisKm ?? _avgvisKm,
  avgvisMiles: avgvisMiles ?? _avgvisMiles,
  avghumidity: avghumidity ?? _avghumidity,
  dailyWillItRain: dailyWillItRain ?? _dailyWillItRain,
  dailyChanceOfRain: dailyChanceOfRain ?? _dailyChanceOfRain,
  dailyWillItSnow: dailyWillItSnow ?? _dailyWillItSnow,
  dailyChanceOfSnow: dailyChanceOfSnow ?? _dailyChanceOfSnow,
  condition: condition ?? _condition,
  uv: uv ?? _uv,
);
  num? get maxtempC => _maxtempC;
  num? get maxtempF => _maxtempF;
  num? get mintempC => _mintempC;
  num? get mintempF => _mintempF;
  num? get avgtempC => _avgtempC;
  num? get avgtempF => _avgtempF;
  num? get maxwindMph => _maxwindMph;
  num? get maxwindKph => _maxwindKph;
  num? get totalprecipMm => _totalprecipMm;
  num? get totalprecipIn => _totalprecipIn;
  num? get totalsnowCm => _totalsnowCm;
  num? get avgvisKm => _avgvisKm;
  num? get avgvisMiles => _avgvisMiles;
  num? get avghumidity => _avghumidity;
  num? get dailyWillItRain => _dailyWillItRain;
  num? get dailyChanceOfRain => _dailyChanceOfRain;
  num? get dailyWillItSnow => _dailyWillItSnow;
  num? get dailyChanceOfSnow => _dailyChanceOfSnow;
  Condition? get condition => _condition;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = _maxtempC;
    map['maxtemp_f'] = _maxtempF;
    map['mintemp_c'] = _mintempC;
    map['mintemp_f'] = _mintempF;
    map['avgtemp_c'] = _avgtempC;
    map['avgtemp_f'] = _avgtempF;
    map['maxwind_mph'] = _maxwindMph;
    map['maxwind_kph'] = _maxwindKph;
    map['totalprecip_mm'] = _totalprecipMm;
    map['totalprecip_in'] = _totalprecipIn;
    map['totalsnow_cm'] = _totalsnowCm;
    map['avgvis_km'] = _avgvisKm;
    map['avgvis_miles'] = _avgvisMiles;
    map['avghumidity'] = _avghumidity;
    map['daily_will_it_rain'] = _dailyWillItRain;
    map['daily_chance_of_rain'] = _dailyChanceOfRain;
    map['daily_will_it_snow'] = _dailyWillItSnow;
    map['daily_chance_of_snow'] = _dailyChanceOfSnow;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['uv'] = _uv;
    return map;
  }

}

/// text : "Light rain shower"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/353.png"
/// code : 1240


/// name : "London"
/// region : "City of London, Greater London"
/// country : "United Kingdom"
/// lat : 51.5171
/// lon : -0.1062
/// tz_id : "Europe/London"
/// localtime_epoch : 1752657799
/// localtime : "2025-07-16 10:23"

class Location {
  Location({
      String? name, 
      String? region, 
      String? country, 
      num? lat, 
      num? lon, 
      String? tzId, 
      num? localtimeEpoch, 
      String? localtime,}){
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }
  String? _name;
  String? _region;
  String? _country;
  num? _lat;
  num? _lon;
  String? _tzId;
  num? _localtimeEpoch;
  String? _localtime;
Location copyWith({  String? name,
  String? region,
  String? country,
  num? lat,
  num? lon,
  String? tzId,
  num? localtimeEpoch,
  String? localtime,
}) => Location(  name: name ?? _name,
  region: region ?? _region,
  country: country ?? _country,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  tzId: tzId ?? _tzId,
  localtimeEpoch: localtimeEpoch ?? _localtimeEpoch,
  localtime: localtime ?? _localtime,
);
  String? get name => _name;
  String? get region => _region;
  String? get country => _country;
  num? get lat => _lat;
  num? get lon => _lon;
  String? get tzId => _tzId;
  num? get localtimeEpoch => _localtimeEpoch;
  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }

}