import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:koupag/host_provider.dart';

class HttpService {
  Future<List?> get(String path) async {
    try {
      http.Response response = await http.get(
        HostProvider.launchUrl(path),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          // HttpHeaders.authorizationHeader: 'Bearer $token'
        },
      );
      return jsonDecode(response.body);
    } catch (e) {
      return List.empty();
    }
  }
}
