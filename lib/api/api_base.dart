import 'dart:convert';
import 'dart:io';

import 'package:cocktails_recipes/utils/app_constants.dart';
import 'package:cocktails_recipes/utils/customErrors.dart';
import 'package:http/http.dart' as http;

class ApiBaseHelper {
  final String _baseURL = urlBase;
  Future<dynamic> get(String url, Map<String, String> params) async {
    var responseJson;
    try {
      final response =
          await http.get(Uri.parse(_baseURL + url), headers: params);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet connection',
      );
    }
    return responseJson;
  }

  Future<dynamic> post(String url, Map<String, String> params, Map body) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(_baseURL + url),
          headers: params, body: jsonEncode(body));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet connection',
      );
    }
    return responseJson;
  }

  Future<dynamic> patch(
      String url, Map<String, String> params, Map body) async {
    var responseJson;
    try {
      final response = await http.patch(Uri.parse(_baseURL + url),
          headers: params, body: jsonEncode(body));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet connection',
      );
    }
    return responseJson;
  }

  Future<dynamic> delete(String url, Map<String, String> params) async {
    var responseJson;
    try {
      final response =
          await http.delete(Uri.parse(_baseURL + url), headers: params);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet connection',
      );
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body.toString());
        return responseJson;
      case 201:
        var responseJson = jsonDecode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());

      case 401:
        throw UnauthorisedException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw NotFoundException(response.body.toString());
      case 409:
        throw UnauthorisedException(response.body.toString());
      case 408:
        throw RequestTimeoutException(response.body.toString());
      case 500:
        throw InternalServerErrorException(response.body.toString());
      case 503:
        throw ServiceUnavailableException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
