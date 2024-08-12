import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/farm.dart';
import 'auth.dart';

// Define a FutureProvider for fetching farms
final farmsProvider = FutureProvider<List<Farm>>((ref) async {
  // Retrieve the AuthService instance from the provider
  final authService = ref.watch(authProvider);

  // Retrieve the API token asynchronously using AuthService
  final token = await authService.getToken();

  // Check if the token is null or empty
  if (token == null || token.isEmpty) {
    throw Exception('Token not found or is empty');
  }

  // Make the HTTP GET request with the Authorization header
  final response = await http.get(
    Uri.parse(
        'http://192.168.100.77:8000/api/farms'), // Endpoint to fetch farms
    headers: {
      'Authorization':
          'Bearer $token', // Include the Bearer token for authentication
    },
  );

  // Check for a successful response
  if (response.statusCode == 200) {
    print('Successss'); // Debug: print success message
    print(response.body); // Debug: print the raw response body

    // Decode the JSON response
    final data = json.decode(response.body);

    // Extract the list of farms from the JSON data
    final farmList = data['farms'] as List<dynamic>;

    // Convert the JSON list to a list of Farm objects
    return farmList.map((json) => Farm.fromJson(json)).toList();
  } else {
    print("fail"); // Debug: print failure message
    throw Exception(
        'Failed to load farms'); // Handle errors by throwing an exception
  }
});
