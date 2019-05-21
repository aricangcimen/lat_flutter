import 'package:flutter/material.dart';
import './hai_headset.dart' as headset;
import './hai_komputer.dart' as komputer;
import './hai_radio.dart' as radio;
import './hai_smartphone.dart' as semartphone;



void main()
{
runApp(new MaterialApp(
title: "Tab Bar",
home: new home(),

));
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  TabController controller;
  
   @override
  void initState() { 
    controller = new TabController(vsync: this , length: 4);
    super.initState();
    
  }

  void @override
  void dispose() { 
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        backgroundColor: Colors.cyanAccent,
        title: new Text("Daptar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
new Tab(icon: new Icon(Icons.computer),),
new Tab(icon: new Icon(Icons.headset),),
new Tab(icon: new Icon(Icons.radio),),
new Tab(icon: new Icon(Icons.smartphone),),


          ],



        ),


      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[



        ],

      ),
      
    );
  }
}