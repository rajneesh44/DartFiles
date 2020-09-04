import 'package:flutter/material.dart';
import './LoginPage.dart';
import './splash.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home : SplashScreen(),
    );
  }
}