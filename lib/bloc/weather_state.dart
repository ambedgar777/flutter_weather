part of 'weather_bloc.dart';

sealed class WeatherBlocState extends Equatable{
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState{}

//class foe weather loading state
final class WeatherBlocLoading extends WeatherBlocState{}

//class for weather failure state
final class WeatherBlocFailure extends WeatherBlocState{}

//class for weather success state
final class WeatherBlocSuccess extends WeatherBlocState{
  final Weather weather;
  const WeatherBlocSuccess(this.weather);
  @override
  List<Object> get props => [weather];
}