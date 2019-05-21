import "package:flutter/material.dart";


void main(){
runApp(new MaterialApp(title: "Sumi Loundry",
home: new Halamansatu(),
));
}
class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("Sumi oye"),
        ),
      actions: <Widget>[new Icon(Icons.search)]

      ),
    body: new Container(
      child: new Row(
      children : <Widget>[



      ],

      )

    ),
    );
  }
}