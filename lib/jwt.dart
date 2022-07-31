import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

getWebtoken() async {
  const storage = FlutterSecureStorage();

  final response =
      await http.get(Uri.parse('https://api.bee.tust.at/debuglogin'));

  if (response.statusCode == 201) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    await storage.write(
        key: 'token', value: json.decode(response.body)['token']);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to get webtoken');
  }
}
