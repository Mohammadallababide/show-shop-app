import 'package:flutter/material.dart';
import 'pages/product_details.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old price": 120,
      "price": 85,
    },
    {
      "name": "red dress",
      "picture": "images/products/dress1.jpeg",
      "old price": 215,
      "price": 190,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // لتحديد عدد cards
        itemCount: product_list.length,
//        لتحديد عدد الcolumn في ال Grid view
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Singel_Prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Singel_Prod extends StatelessWidget {
  Singel_Prod(
      {this.prod_name,
      this.prod_old_price,
      this.prod_picture,
      this.prod_price});
  final prod_name;
  final prod_old_price;
  final prod_price;
  final prod_picture;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProductDetails(
                  detail_prod_name: prod_name,
                  detail_prod_price: prod_price,
                  detail_prod_old_price: prod_old_price,
                  detail_prod_pecture: prod_picture,
                );
              },),);
            },
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Text("\$$prod_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800
                    ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "\$$prod_old_price",
                          style: TextStyle(
                        color: Colors.black54,
                            decoration: TextDecoration.lineThrough

                    ),
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
