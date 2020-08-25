import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Center(child: Text('On the product Page')),
    );
  }
}