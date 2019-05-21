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
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
                new Card(
        child:new Column(
          children: <Widget>[
        new Icon(Icons.call_missed , size : 50.0 ,  color : Colors.white , ),
        new Text("Home",style: new TextStyle(fontSize: 20.0),)
          ],
        )
        
                ),

       new CardSaya(),
       new CardSaya(),
       new CardSaya(),
       new CardSaya(),

           
            ],


          ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {

  CardSaya({this.icon , this.teks } );
  final IconData icon ;
  final String teks ;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Card(
        child:new Column(
          children: <Widget>[
        new Icon(Icons.call_missed , size : 50.0 ,  color : Colors.white , ),
        new Text("Home",style: new TextStyle(fontSize: 20.0),)
          ],
        )
        
                ) ,

      
    );
  }
}
