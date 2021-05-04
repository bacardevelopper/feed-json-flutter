import 'package:flutter/material.dart';

class Chargement extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: AnimationLoad("Chargement en cours ...", couleur : Colors.white),
    );
  }
}

class AnimationLoad extends Text {
  AnimationLoad(String data,
      {couleur: Colors.white12, alignCentre: TextAlign.center})
      : super(
          data,
          textAlign: alignCentre,
          style: TextStyle(color: couleur, fontSize: 22.0),
        );
}
