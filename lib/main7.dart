import 'package:flutter/material.dart';

void main(){
runApp(new MaterialApp(title: "Input Text , Alret dan snackbar",
home: new Home(),
));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 String teks = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text( "Input Text , Alret dialog & snackbar"),
      backgroundColor: Colors.purple,),
      body: new Container(
        child: new Column(
          children: <Widget>[

            new TextField(
decoration: new InputDecoration(
  hintText: "tulislah disini",
),
onChanged: (String str){
  setState(() {
    teks = str;
  });
},
            ),
          new Text(teks , style : new TextStyle (fontSize : 20.0),)


          ],
        ),
      ),

    );
  }
}