import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  String apikey = 'JKFX4Y9CITFBPGYF7J1J211YF7J1J';
  Future<dynamic> get() async {
    http.Response response = await http.get(
        Uri.parse(
            'https://api.metals.dev/v1/metal/spot?api_key=$apikey&metal=gold&currency=USD&unit=toz'),
        headers: {'Accept': 'application/json'});

    Map<String, dynamic> data = jsonDecode(response.body);
    return (data['rate']['price']);
  }
}
