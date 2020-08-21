import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  List<String> _products= ['Rajneesh'];

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: RaisedButton(
              onPressed:(){
                setState(() {
                  _products.add('Advanced');
                });
              },
              child:Text('Add Card')),
          ),
          Column(
            children: _products.map((element) => Card(
            child: Column(children: <Widget>[
            Image.asset('assets/front.jpg'),
            Text(element)
          ],
          ),
      )).toList()),
    ],
        ),
      ),
    );
  }
}