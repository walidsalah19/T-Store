import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpClient {
  static String baseUrl = "";

  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endPoint'));

    return _handelResponse(response);
  }

  static Future<Map<String, dynamic>> post(String endPoint, dynamic data) async {
    final response = await http.post(Uri.parse('$baseUrl/$endPoint'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(data));
    return _handelResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(Uri.parse('$baseUrl/$endPoint'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(data));
    return _handelResponse(response);
  }

  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endPoint'));

    return _handelResponse(response);
  }
  static Map<String,dynamic> _handelResponse(http.Response response)
  {
    if(response.statusCode==200)
      {
        return json.decode(response.body);
      }else
        {
          throw Exception('failed to load data ${response.statusCode}');
        }
  }
}
