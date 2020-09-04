import 'package:flutter/material.dart';

void main(){
  runApp(Camera());
}

class Camera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
    );
  }
}