import 'package:weather_app/model/weathermodel.dart';

class WeatherState {}

class WeatherinitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState( this.weatherModel);
  }

class WeatherFailureState extends WeatherState {
  var errmasseage;
}
