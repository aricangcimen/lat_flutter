import 'package:flutter/material.dart';


void main()
{
runApp(new MaterialApp(
  home: new Halamansatu(),
));

}

class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home ),
        title: new Center(child: new Text("Suminar ok"),),
        actions: <Widget>[

          new Icon(Icons.search)
        ],


      ),
      
    );
  }
}