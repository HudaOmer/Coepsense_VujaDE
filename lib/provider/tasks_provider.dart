import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utils/apis.dart';
import 'auth.dart';

// TaskService class
class TaskService {
  final AuthService _authService;
  final String _baseUrl = '$baseURL/api/tasks';

  TaskService(this._authService);

  // Helper method to get authorization headers
  Future<Map<String, String>> _authHeaders() async {
    final token = await _authService.getToken();
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  // Fetch tasks assigned to the current user and tasks due today
  Future<Map<String, dynamic>> fetchTasks() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/'),
      headers: await _authHeaders(),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load tasks');
    }
  }

  // Update task status
  Future<void> updateStatus(String taskId, int status) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/update-status/$taskId'),
      headers: await _authHeaders(),
      body: jsonEncode({'status': status}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update task status');
    }
  }

  // Send revision request
  Future<void> sendRevisionRequest(String taskId) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/revisoin-request'),
      headers: await _authHeaders(),
      body: jsonEncode({'task_id': taskId}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send revision request');
    }
  }
}

// Provider for TaskService
final taskServiceProvider = Provider<TaskService>((ref) {
  final authService = ref.read(authProvider);
  return TaskService(authService);
});

// Providers for TaskService methods
final fetchTasksProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final taskService = ref.read(taskServiceProvider);
  return await taskService.fetchTasks();
});

final updateStatusProvider =
    FutureProvider.family<void, Map<String, dynamic>>((ref, data) async {
  final taskService = ref.read(taskServiceProvider);
  await taskService.updateStatus(data['taskId'], data['status']);
});

final sendRevisionRequestProvider =
    FutureProvider.family<void, String>((ref, taskId) async {
  final taskService = ref.read(taskServiceProvider);
  await taskService.sendRevisionRequest(taskId);
});