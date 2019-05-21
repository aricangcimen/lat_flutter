import 'package:flutter/material.dart';



void main(){
runApp(MaterialApp(
title: "sidebar",
home: new Home1(),

));
}

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title:  new Text("Demo sidebar(DRAWER)"),backgroundColor: Colors.blueGrey[700],),
      drawer: new Drawer(
child: new ListView(
children: <Widget>[

new UserAccountsDrawerHeader(
accountName : new Text("Ari m r"),
accountEmail: new Text("antosan1234567@gmail.com"),
currentAccountPicture: new Image(image: new NetworkImage("http"),),



)

new ListTile(
title: new Text("Setting"),
trailing: new Icon(Icons.settings),
),
new ListTile(
title: new Text("Setting"),
trailing: new Icon(Icons.close),
),

],

),



      ),
body:  new Container(


      ),
    );
  }
}