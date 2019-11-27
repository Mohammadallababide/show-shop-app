import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "",
      "old price": 120,
      "price": 85,
    },
    {
      "name": "red dress",
      "picture": "",
      "old price": 215,
      "price": 190,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Singel_Prod extends StatelessWidget {
  Singel_Prod({this.prod_name,this.prod_old_price,this.prod_picture,this.prod_price});
  final prod_name;
  final prod_old_price;
  final prod_price;
  final prod_picture;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

