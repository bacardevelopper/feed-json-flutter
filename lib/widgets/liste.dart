import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Liste extends StatefulWidget {
  List listeDeMap;
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
        return new Container(
          color : Colors.white,
          width : MediaQuery.of(context).size.width / 1.2,
          height : MediaQuery.of(context).size.height / 2.9,
          margin:  EdgeInsets.all(8.0),
        );
      },
    );
  }
}
