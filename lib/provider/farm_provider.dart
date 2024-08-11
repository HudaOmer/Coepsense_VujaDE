import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/farm.dart';

// Define the base URL for your API
const baseUrl =
    'http://192.168.100.77:8000/api'; // Adjust this to your API base URL

// Define a provider for the API token (replace with your token management strategy)
final apiTokenProvider = Provider<String>((ref) {
  return 'your-api-token-here'; // Replace with actual token or secure method
});

// Define a FutureProvider for fetching farms
final farmsProvider = FutureProvider<List<Farm>>((ref) async {
  // final token = ref.watch(apiTokenProvider);
  final response = await http.get(
    Uri.parse('$baseUrl/farms'), // Adjust endpoint as necessary
    // headers: {
    //   'Authorization': 'Bearer $token',
    // },
  );

  if (response.statusCode == 200) {
    print('Successss');
    print(response.body);
    final data = json.decode(response.body);
    final farmList = data['farms'] as List<dynamic>;
    return farmList.map((json) => Farm.fromJson(json)).toList();
  } else {
    print("fail");
    throw Exception('Failed to load farms');
  }
});
