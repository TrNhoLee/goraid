// ignore_for_file: file_names
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:go_raid/Commons/Constants/ApiConsts.dart';
import 'package:go_raid/Commons/Services/CommonApiRequest.dart';

abstract class CommonApiServices<T> {
  // -------------------------------------------------------
  // Field defined
  // -------------------------------------------------------
  static var httpClient = HttpClient();

  // -------------------------------------------------------
  // Common functions. Continue...
  // -------------------------------------------------------

  // Post
  Future<T?> postEnforcement(CommonApiRequest apiRequest) async {
    try {
      await InternetAddress.lookup(Uri.parse(BASE_URL).host);
      var response = await http.post(
        Uri.parse(apiRequest.uri),
        headers: apiRequest.requestHeaders,
        body: apiRequest.body,
      );

      if (response.statusCode == 200) {
        return fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (exception) {
      rethrow;
    }
  }

  // Get
  Future<T?> getEnforcement(CommonApiRequest apiRequest) async {
    try {
      await InternetAddress.lookup(Uri.parse(BASE_URL).host);
      var response = await http.get(
        Uri.parse(apiRequest.uri),
        headers: apiRequest.requestHeaders,
      );

      if (response.statusCode == 200) {
        return fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (exception) {
      rethrow;
    }
  }

  // Put
  Future<T?> putEnforcement(CommonApiRequest apiRequest) async {
    try {
      await InternetAddress.lookup(Uri.parse(BASE_URL).host);
      var response = await http.put(
        Uri.parse(apiRequest.uri),
        headers: apiRequest.requestHeaders,
        body: apiRequest.body,
      );

      if (response.statusCode == 200) {
        return fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (exception) {
      rethrow;
    }
  }

  T fromJson(json);
}
