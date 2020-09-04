import 'package:flutter/material.dart';
import './LoginPage.dart';
import 'package:shadow/shadow.dart';

void main(){
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Welcome to home screen',
      theme: new ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Body(),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: new Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        child: const Text('Bottom Button!', style: TextStyle(fontSize: 20)),
        color: Colors.deepOrangeAccent,
        textColor: Colors.white,
        elevation: 200,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20.0),
        ),
      ),

      ),
    );
  }
}