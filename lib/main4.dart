import 'package:flutter/material.dart';

void main()
{
runApp(new MaterialApp(
title : "card dan parsing",
home : new Halsatu(),
));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Card dan Parsing"),),      
      body: new Container(
          child: new Column(
            children: <Widget>[
                new Card(
        child:new Column(
          children: <Widget>[
        new Icon(Icons.call_missed , size : 50.0 ,  color : Colors.white , ),
        new Text("Home",style: new TextStyle(fontSize: 20.0),)




          ],
        )
        
                )


            ],


          ),
      ),
    );
  }
}
