import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fusion_api/src/fusion_api_client.dart';

/// Thrown if the getUser method fails to return
/// a user.
class GetUserException implements Exception {}

/// Thrown if the createUser method fails to create
/// a new user.
class CreateUserException implements Exception {}

/// Thrown if the getSquad method fails to return
/// a squad.
class GetSquadException implements Exception {}

/// {@template fusion_api}
/// Fusion API Library
/// {@endtemplate}
class RestFusionApiClient implements FusionApiClient {
  /// {@macro fusion_api}
  RestFusionApiClient({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  @override
  Future getSquad(String id) async {
    try {
      final response = await _dio.get('http://www.google.com');
      return response;
    } catch (e) {
      throw GetSquadException();
    }
  }

  @override
  Future createSquad(
    String memberId,
    double percentage,
    String paymentMethodId,
  ) {
    // TODO: implement createSplit
    throw UnimplementedError();
  }

  @override
  Future getUser(String email) async {
    try {
      final response = await _dio.get('http://www.google.com');
      return response;
    } catch (e) {
      throw GetUserException();
    }
  }

  @override
  Future createUser(String name, String email) async {
    try {
      final params = {
        'name': name,
        'email': email,
      };
      final response = await _dio.post(
        '127.0.0.1:3000',
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        ),
        data: jsonEncode(params),
      );
    } catch (e) {
      throw CreateUserException();
    }
  }
}
