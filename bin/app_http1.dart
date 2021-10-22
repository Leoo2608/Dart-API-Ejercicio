import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('https://restcountries.com/v2/all');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);
    for (var i = 0; i <= body.length-1; i++) {
      print('${body[i]['subregion']}');
    }
  });
}
