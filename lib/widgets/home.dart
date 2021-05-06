import 'package:feed_json_flutter/widgets/load.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/liste.dart';

/* BLOC : 1 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Tp feed json'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/* FIN BLOC : 1 */

// BLOC State<>
class _MyHomePageState extends State<MyHomePage> {
  var dataTraitement;
  @override
  void initState() {
    super.initState();
    dataAttente();
  }

  /* override build */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colorConvert("#AED6F1"),
        centerTitle: true,
        title: new Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: ecoutonLoad(),
    );
  }

  /* fonction (attente de modele) */
  Future dataAttente() async {
    var data = await new GetDataModel().chargerData();
    if (data != null) {
      print(data);
      setState(() {
        dataTraitement = data;
      });
      
    }
  }

  // ---
  Color colorConvert(String color) {
    color = color.replaceAll("#", "");
    if (color.length == 6) {
      return Color(int.parse("0xFF" + color));
    } else if (color.length == 8) {
      return Color(int.parse("0x" + color));
    } else {
      return Colors.black;
    }
  }

  // --- : écouter dataTraitement
  Widget ecoutonLoad() {
    if (dataTraitement != null) {
      // class Liste (objet appeler)
      return new Liste(dataTraitement);
    } else {
      return Chargement();
    }
  }


}
