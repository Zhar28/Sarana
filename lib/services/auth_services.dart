import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class AuthService {
  final String baseUrl = 'https://d390-180-248-43-183.ngrok-free.app';

  Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrl/login');

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';

    final headers = {
      'Authorization': basicAuth,
      // Note: Jangan set Content-Type manual untuk MultipartRequest
    };

    final request = http.MultipartRequest('POST', url)
      ..headers.addAll(headers)
      ..fields['device_id'] = '4';

    if (kDebugMode) {
      print('[LOGIN REQUEST]');
      print('URL       : $url');
      print('Username  : $username');
      print('Password  : $password');
      print('Auth      : $basicAuth');
      print('Headers   : ${request.headers}');
      print('Fields    : ${request.fields}');
    }

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (kDebugMode) {
      print('[LOGIN RESPONSE]');
      print('StatusCode: ${response.statusCode}');
      print('Body      : ${response.body}');
    }

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Login gagal: ${response.statusCode} - ${response.body}');
    }
  }

  // Register Services
  Future<bool> register({
    required String name,
    required String email,
    required String password,
    required String role,
    required String username,
    required String subcompanyid,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/register_stan'),
        headers: {
          'Content-Type': 'application/json',
          'makerID': '47',
        },
        body: jsonEncode({
          'name': name,
          'email': email,
          'password': password,
          'role': role,
          'user_name': username,
          'sub_company_id': subcompanyid
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['status'] == true;
      }
      return false;
    } catch (e) {
      print('[ERROR] Gagal Registrasi: $e');
      return false;
    }
  }
}
