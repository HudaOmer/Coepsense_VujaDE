import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/wather_state.dart';
import '../utils/apis.dart';

// Define the provider for weather data
final weatherProvider = FutureProvider<WeatherStateData>((ref) async {
  // Construct the API URL using variables
  const apiUrl = '$weatherApiBaseUrl?key=$weatherApiKey&days=2&q=$location';

  // Fetch the data from the API
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    // Parse the JSON response
    final jsonResponse = json.decode(response.body) as Map<String, dynamic>;

    // Extract relevant data from the JSON response
    final current = jsonResponse['current'];
    final forecastDay = jsonResponse['forecast']['forecastday'][0]['day'];

    // Create a WeatherState object
    final weatherState = WeatherStateData(
      temperature: '${current['temp_c']} °C',
      humidity: '${current['humidity']}%',
      windSpeed: '${current['wind_kph']} kph',
      moisture: '${forecastDay['totalprecip_mm']} mm',
    );

    return weatherState;
  } else {
    throw Exception('Failed to load weather data');
  }
});
