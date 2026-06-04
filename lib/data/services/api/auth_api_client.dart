import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../../utils/result.dart';
import 'model/login_request/login_request.dart';
import 'model/login_response/login_api_response.dart';

class AuthApiClient {
  AuthApiClient({String? host, int? port, HttpClient Function()? clientFactory})
     : _host = host ?? '10.0.2.2',
        _port = port ?? 5072,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  Future<Result<LoginApiResponse>> login(LoginRequest loginRequest) async {
    final client = _clientFactory();
    try {
      final request = await client.post(_host, _port, '/api/users/login');
       request.headers.contentType = ContentType.json;
       request.headers.set(HttpHeaders.acceptHeader, 'application/json');
      request.write(jsonEncode(loginRequest));
      final response = await request.close();
    debugPrint('HTTP status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        debugPrint('Response body: $stringData');
        return Result.ok(LoginApiResponse.fromJson(jsonDecode(stringData)));
      } else {
        return const Result.error(HttpException("Login error"));
      }
    } on Exception catch (error) {
       debugPrint('Login exception');
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}