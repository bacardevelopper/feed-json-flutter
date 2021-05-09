import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

/* class modele qui recupere les données (model)*/
class GetDataModel {
  final String url = "https://jsonplaceholder.typicode.com/users";
  // methode qui retourne data
  Future chargerData() async {
    final reponse = await http.get(Uri.parse(url));
    if (reponse.statusCode == 200) {
      print(reponse.statusCode.toString());
      List data = jsonDecode(reponse.body);
      print(data);
      return data;
    } else {
      print("erreur : " + reponse.statusCode.toString());
      return reponse.statusCode;
    }
  }

  // data détails
  Future dataDetails(int id) async {
    String urlDetail = "https://jsonplaceholder.typicode.com/users/"+id.toString();
    final reponse = await http.get(Uri.parse(urlDetail));
    if (reponse.statusCode == 200) {
      print(reponse.statusCode.toString());
      var data = jsonDecode(reponse.body);
      print(data);
      return data;
    } else {
      print("erreur : " + reponse.statusCode.toString());
      return reponse.statusCode;
    }
  }

  // constructor
  GetDataModel();
}
