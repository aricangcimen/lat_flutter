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
void _snackbar(String str){
if(str.isEmpty ) return ;
_scaffoldState.currentState.showSnackBar(new SnackBar(
content: new Text(str , style : new TextStyle(fontSize: 20.0), ),
duration: new Duration(seconds: 3),
));



}



  
  
void _alretdialog(String str){
if(str.isEmpty)return;
AlertDialog alertDialog = new AlertDialog(
content: new Text(str , style : new TextStyle(fontSize : 20.0),),
actions: <Widget>[
new RaisedButton(
color: Colors.purple,
child: new Text("OK"),
onPressed: (){
Navigator.pop(context);


},

),

],

);
showDialog(context: context , child: alertDialog );



  }
 String teks = "";
 TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerAllert = new TextEditingController();
TextEditingController controllerSnackbar = new TextEditingController();

final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(title: new Text( "Input Text , Alret dialog & snackbar"),
      backgroundColor: Colors.purple,),
      body: new Container(
        child: new Column(
          children: <Widget>[

            new TextField(
              controller: controllerInput,
decoration: new InputDecoration(
  hintText: "tulislah disini",
),
onChanged: (String str){
  setState(() {
    teks = str +  '/n' +teks ;
    controllerInput.text = "";
  });
},
            ),
             new Text(teks , style : new TextStyle (fontSize : 20.0),),
            new TextField(
              controller: controllerAllert,
decoration: new InputDecoration(
  hintText: "tulislah untuk alret",
),
onSubmitted: (String str){
_alretdialog(str);
controllerAllert.text="";


},
            ),
 new TextField(
              controller: controllerSnackbar,
decoration: new InputDecoration(
  hintText: "tulislah untuk Snackbar....",
),
onSubmitted: (String str){
_snackbar(str);
controllerSnackbar.text="";


},
            ),
         


          ],
        ),
      ),

    );
  }
}