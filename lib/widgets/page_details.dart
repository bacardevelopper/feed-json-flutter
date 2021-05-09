import 'package:flutter/material.dart';
import '../models/models.dart';

class PageDetails extends StatelessWidget {
  Map mapData;

  @override
  Widget build(BuildContext context) {
    return unePageDetails(mapData);
  }

  PageDetails(Map mapData) {
    this.mapData = mapData;
  }

  // mdt rendu vue
  Widget unePageDetails(Map data) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page détail"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            texteDarwin(mapData["name"]),
            texteDarwin(mapData["username"]),
            texteDarwin(mapData["address"]["street"]),
            texteDarwin(mapData["address"]["zipcode"]),
          ],
        ),
      ),
    );
  }
}

// mdt ext
Widget texteDarwin(String data, {couleur: Colors.black, taille: 20.1}) {
  return new Text(
    data,
    style: new TextStyle(
      color: couleur,
      fontSize: taille,
    ),
  );
}
