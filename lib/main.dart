import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/custom_material_color.dart';
import 'package:weather/data/data/data_provider/remote_data_provider.dart';
import 'package:weather/data/data/repository/remote_data_repository.dart';
import 'package:weather/weather_app.dart';

void main() {
  RemoteDataProvider remoteData = RemoteDataProvider();
  remoteData.getWeatherData(18.6425, 73.7645);
  runApp(const WeatherApp());
}
