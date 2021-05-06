import 'package:flutter/material.dart';

// class appeler dans home
// ignore: must_be_immutable
class Liste extends StatefulWidget {
  List<dynamic> listeDeMap;
  @override
  _Liste createState() => new _Liste();

  Liste(listeDeMap) {
    this.listeDeMap = listeDeMap;
  }
}

class _Liste extends State<Liste> {
  List dataReq;
  @override
  void initState() {
    super.initState();
    setState(() {
      dataReq = widget.listeDeMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: widget.listeDeMap.length,
      itemBuilder: (context, i) {
        return new Center(
          child: Card(
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    widget.listeDeMap[i]["name"].toString(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    widget.listeDeMap[i]["username"].toString(),
                    style: TextStyle(fontSize: 20.0, color: Colors.black26),
                  ),
                ],
              ),
            ),
          ),

          /*
          child: new Card(

            color: Colors.yellowAccent,
            child: new ListTile(
              title: new Text(
                "email : " + widget.listeDeMap[i]["name"].toString(),
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
          ),*/
        );
      },
    );
  }

  // methode

}
