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
  void _alretdialog(String str){
if(str.isEmpty)return;
AlertDialog alertDialog = new AlertDialog(
content: new Text(str , style : new TextStyle(fontSize : 20.0),),

);
showDialog(context: context , child: alertDialog );



  }
 String teks = "";
 TextEditingController controller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text( "Input Text , Alret dialog & snackbar"),
      backgroundColor: Colors.purple,),
      body: new Container(
        child: new Column(
          children: <Widget>[

            new TextField(
              controller: controller,
decoration: new InputDecoration(
  hintText: "tulislah disini",
),
onChanged: (String str){
  setState(() {
    teks = str +  '/n' +teks ;
    controller.text = "";
  });
},
            ),
             new Text(teks , style : new TextStyle (fontSize : 20.0),),
            new TextField(
              controller: controller,
decoration: new InputDecoration(
  hintText: "tulislah untuk alret",
),
onSubmitted: (String str){
_alretdialog(str);


},
            ),

         


          ],
        ),
      ),

    );
  }
}