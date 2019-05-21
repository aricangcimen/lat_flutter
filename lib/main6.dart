import 'package:flutter/material.dart';


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
new Tab()




          ],



        ),


      ),
      
    );
  }
}