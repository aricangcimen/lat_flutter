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

       new CardSaya(icon: Icons.camera_alt, teks: "home",warnaIcon: Colors.white12,),
       new CardSaya(icon: Icons.cancel, teks: "home industry", warnaIcon: Colors.redAccent,),
       new CardSaya(icon: Icons.cast_connected , teks: "home connect", warnaIcon: Colors.yellow,),
       new CardSaya(icon: Icons.category , teks : "katagori" , warnaIcon: Colors.blueAccent,),

           
            ],


          ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {

  CardSaya({this.icon , this.teks  , this.warnaIcon} );
  final IconData icon ;
  final String teks ;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Card(
        child:new Column(
          children: <Widget>[
        new Icon(icon, size : 50.0 ,  color : warnaIcon , ),
        new Text(teks  ,style: new TextStyle(fontSize: 20.0),)
          ],
        )
        
                ) ,

      
    );
  }
}
