import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(
      {this.detail_prod_name,
      this.detail_prod_old_price,
      this.detail_prod_pecture,
      this.detail_prod_price});
  final detail_prod_name;
  final detail_prod_price;
  final detail_prod_old_price;
  final detail_prod_pecture;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("FASH Show",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.detail_prod_pecture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.detail_prod_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.detail_prod_old_price}',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.detail_prod_price}',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
//          ============== first buttons ==============
          Row(
            children: <Widget>[
//                ======== size button ========
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("size"),
                                content: Text("choose the size"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              ));
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("size"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )),
              ),
              //                ======== color button ========
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("Color"),
                                content: Text("choose the color"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              ));
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("color"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )),
              ),
              //                ======== quantity button ========
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("Qauntity"),
                                content: Text("choose the qauntity"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              ));
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Qty"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {}),
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("product details"),
            subtitle: Text(" is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product name",style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.detail_prod_name),
              ),
            ],
          ),
//          todo remember create the product brand
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product brand",style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Brand X"),
              ),
            ],
          ),
//          todo add the product condition
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product condition",style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("New"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
