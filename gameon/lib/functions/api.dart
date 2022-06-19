import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Network {
  final String? _url = dotenv.env['API_URL'];
  final String? _key = '&key=' + dotenv.env['API_KEY']!;

  // _getToken() async {
    // SharedPreferences sharedPref = await SharedPreferences.getInstance();
  //   token = sharedPref.getString("token") ?? "";
  // }

  postData(data, apiUrl) async {
    var fullUrl = _url! + apiUrl;
    // await _getToken();
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  putData(data, apiUrl) async {
    var fullUrl = _url! + apiUrl;
    // await _getToken();
    return await http.put(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  getData(apiUrl) async {
    var fullUrl = _url! + apiUrl + _key!;
    // await _getToken();
    return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token'
      };
}
