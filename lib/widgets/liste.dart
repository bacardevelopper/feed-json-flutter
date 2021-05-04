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


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: widget.listeDeMap.length,
      itemBuilder: (context, i) {
        return new ListTile(
          title : new Text("text $i", style : TextStyle(color : Colors.red)),
        );
      },
    );
  }
}
