import 'package:flutter/material.dart';

import './products_manager.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context){
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
        ),
        body:ProductManager('rajjo'),
      ),
    );
  }
}