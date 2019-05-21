import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
home: new Haldua(),
title: "Navigasi",
));
}

class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Mymusic"),),
      body: new Center(
child: new IconButton(
icon:  new Icon(Icons.change_history, size : 50.0 , ),
onPressed: ,


),



      ),
      
    );
  }
}