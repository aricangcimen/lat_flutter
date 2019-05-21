import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
home: new Haldua(),
title: "Navigasi",
routes: <String ,WidgetBuilder>{
'/Halsatu' : (BuildContext context) => new Halsatu(),
'/Haldua' : (BuildContext context) => new Haldua(),


},
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
onPressed: (){Navigator.pushNamed(context, '/Halsatu'); },
),
      ),
      
    );
  }
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title:  new Text("Speaker"),),
      body: new Center(
child: new IconButton(
  icon: new Icon(Icons.chat, size: 50.0 , color : Colors.blueGrey,),
  onPressed: (){Navigator.pushNamed(context, '/Haldua');},


),


      )

      
    );
  }
}