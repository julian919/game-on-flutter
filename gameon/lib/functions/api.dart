import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Network {
  final String? _url = dotenv.env['API_URL'];
  final String? _key = '&key=' + dotenv.env['API_KEY']!;

  getData(apiUrl) async {
    var fullUrl = _url! + apiUrl + _key!;
    return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
