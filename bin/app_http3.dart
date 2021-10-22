import 'dart:convert' as convert;
import 'package:app_http/classes/request_data1.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('https://rickandmortyapi.com/api/character/1');
  http.get(url).then((res) {
    final resp = rickMortyFromJson(res.body);
    print('\nJSON usando quickType: ${resp.species}');
  });
}
