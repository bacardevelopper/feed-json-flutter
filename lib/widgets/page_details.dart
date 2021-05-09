import 'package:flutter/material.dart';
import '../models/models.dart';



class PageDetails extends StatelessWidget {
  int mapData;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page détail"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            texteDarwin(mapData.toString())
          ],
        ),
      ),
    );
  }

  PageDetails(int mapData) {
    this.mapData = mapData;
  }

    Future dataDteails(int id) async {
    var data = await new GetDataModel().dataDetails(id);
    if (data != null) {
      print(data);
    }
  }
}

Widget texteDarwin(String data, {couleur: Colors.black, taille: 20.1}) {
  return new Text(
    data,
    style: new TextStyle(
      color: couleur,
      fontSize: taille,
    ),
  );
}

Widget UnePageDetails(int d){
  return new Container();
}