import 'dart:convert' as convert;
import 'package:app_http/classes/request_data.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);
    for (var i = 0; i <= body.length-1; i++) {
      print('${body['data'][i]['email']}');
    }

    final resp = welcomeFromJson(res.body);
    print('\nTotal de páginas del JSON usando quickType: ${resp.total}');
  });
}
