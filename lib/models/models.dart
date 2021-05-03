import 'package:http/http.dart' as http;
import 'dart:async';

/* class modele qui recupere les données (model)*/
class GetDataModel {
  final String url = "https://jsonplaceholder.typicode.com/users";

  Future chargerData() async {
    final reponse = await http.get(Uri.parse(url));
    if(reponse.statusCode == 200){
      print(reponse.statusCode.toString());
      print(reponse.body);
      return reponse.body;
    }else {
      print("erreur : "+reponse.statusCode.toString());
      return reponse.statusCode;
    }
  }
  // constructor
  GetDataModel();
}