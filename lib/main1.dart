import 'package:flutter/material.dart';


void main(){
runApp(new MaterialApp(
home: Halamansatu(),
));
}

class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color:Colors.blue[900],
        width: 200.0,
        height: 100.0,
        child: new Center(
          child: new Text("Idcorner Tutorial",style: new TextStyle(color: Colors.white,fontFamily: "Serif",fontSize: 20.0),),
        ),
      ),
      
    );
  }
}