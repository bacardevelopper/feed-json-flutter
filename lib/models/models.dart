import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
/* class modele qui recupere les données (model)*/
class GetDataModel {
  final String url = "https://jsonplaceholder.typicode.com/users";
  // methode qui retourne data
  Future chargerData() async {
    final reponse = await http.get(Uri.parse(url));
    if(reponse.statusCode == 200){
      print(reponse.statusCode.toString());
      List data = jsonDecode(reponse.body);
      return data;
    }else {
      print("erreur : "+reponse.statusCode.toString());
      return reponse.statusCode;
    }
  }
  
  // constructor
  GetDataModel();
}