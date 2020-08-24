import "package:flutter/material.dart";

class Products extends StatelessWidget{
  List<String> products;
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return  ListView(
          children: products.map((element) => Card(
            child: Column(children: <Widget>[
              Image.asset('assets/front.jpg'),
              Text(element)
            ],
            ),
          )).toList());
  }
}