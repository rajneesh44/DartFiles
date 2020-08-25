import "package:flutter/material.dart";

import './pages/product.dart';

class Products extends StatelessWidget{
  List<String> products;
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return  ListView(
          children: products.map((element) => Card(
            child: Column(children: <Widget>[
              Image.asset('assets/front.jpg'),
              Text(element),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                  children: <Widget> [FlatButton(
                      child:Text('Details'),
                      onPressed:()=> Navigator.push(
                          context, MaterialPageRoute(
                          builder:(BuildContext context) => Product(),
                      ),)
                    ,)
                  ])
            ],
            ),
          )).toList());
  }
}