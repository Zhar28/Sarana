import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class AuthService {
  final String baseUrl = 'https://5d75-180-248-27-231.ngrok-free.app';

  Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrl/login');

    String basicAuth = 'Basic ${base64Encode(utf8.encode('$username:$password'))}';

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
}
