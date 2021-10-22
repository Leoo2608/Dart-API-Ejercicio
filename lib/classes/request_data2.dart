// To parse this JSON data, do
//
//     final usuario = usuarioFromJson(jsonString);

import 'dart:convert';

List<Usuario> usuarioFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

String usuarioToJson(List<Usuario> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Usuario {
    Usuario({
       required this.idusuario,
        required this.username,
        required this.password,
        required this.idpersona,
        required this.idrol,
        required this.fechaRegistro,
        required this.foto,
        required this.estado,
    });

    int idusuario;
    String username;
    String password;
    int idpersona;
    int idrol;
    DateTime fechaRegistro;
    String foto;
    String estado;

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        idusuario: json["idusuario"],
        username: json["username"],
        password: json["password"],
        idpersona: json["idpersona"],
        idrol: json["idrol"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
        foto: json["foto"],
        estado: json["estado"],
    );

    Map<String, dynamic> toJson() => {
        "idusuario": idusuario,
        "username": username,
        "password": password,
        "idpersona": idpersona,
        "idrol": idrol,
        "fecha_registro": fechaRegistro.toIso8601String(),
        "foto": foto,
        "estado": estado,
    };
}
