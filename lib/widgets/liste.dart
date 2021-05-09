import 'package:flutter/material.dart';
import '../widgets/page_details.dart';

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
    return Scaffold(
      body: listView(),
    );
  }

  // methode Widget GridView
  Widget gridView() {
    return Container(
        child: new GridView.builder(
      // nombre d'element sur une ligne
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: widget.listeDeMap.length,
      itemBuilder: (context, i) {
        return new Container(
          margin: EdgeInsets.all(7.5),
          child: new Card(
            elevation: 10.0,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text(widget.listeDeMap[i]["id"].toString()),
              ],
            ),
          ),
        );
      },
    ));
  }

  // methode Widget GridView
  Widget listView() {
    return new ListView.builder(
      itemCount: widget.listeDeMap.length,
      itemBuilder: (context, i) {
        return new Container(
          color: Colors.blueGrey,
          margin: EdgeInsets.all(5.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image.network(
                  "https://img.icons8.com/ios-glyphs/30/000000/administrator-male.png",
                  width: MediaQuery.of(context).size.width / 4),
              Container(
                height: MediaQuery.of(context).size.height / 3.8,
                child: Card(
                  color: Colors.yellowAccent,
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          widget.listeDeMap[i]["name"].toString(),
                          style: TextStyle(fontSize: 22.0),
                        ),
                        new Text(
                          widget.listeDeMap[i]["username"].toString(),
                          style:
                              TextStyle(fontSize: 21.0, color: Colors.blueGrey),
                        ),
                        new Text(
                          widget.listeDeMap[i]["email"].toString(),
                          style:
                              TextStyle(fontSize: 21.0, color: Colors.black45),
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                            ),
                            onPressed: () {
                              print(widget.listeDeMap[i]["email"].toString());
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return PageDetails(widget.listeDeMap[i]);
                                  },
                                ),
                              );
                            },
                            child:
                                texteDarwin("details", couleur: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
}
