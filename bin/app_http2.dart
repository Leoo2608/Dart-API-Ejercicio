import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:app_http/classes/request_data2.dart';

void main(List<String> arguments) {
  final url = Uri.parse('http://localhost:3000/api/auth/user');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);
    for (var i = 0; i <= body.length - 1; i++) {
      print(
          'Usuario: ${body[i]['username']}\nContraseña: ${body[i]['password']}\n\n');
    }
    String json = (res.body).toString();
    final resp = usuarioFromJson(json);

    for (var i = 0; i < resp.length; i++) {
      print('\nJSON usando quickType: ${resp[i].username}');
    }
    
  });
}
