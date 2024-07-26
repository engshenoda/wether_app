class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? images;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weathercondition;

  WeatherModel({
    required this.cityName,
    required this.date,
    this.images,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.weathercondition,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      images: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated'],),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weathercondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
