import 'package:flutter/material.dart';
import 'DrawerTitleComp.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'horizantallist.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 170.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w1.jpeg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 3.0,
        dotColor: Colors.red,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
      ),
    );
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//            header
            UserAccountsDrawerHeader(
              accountName: Text("Mohammad Al Lababidi"),
              accountEmail: Text("mohammad999alhos10@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, color: Colors.deepOrangeAccent),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
//            Drawer App bar with component
            DrawerTiles(),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Categoties'),
          ),
          HorizzontalList(),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 4.0),
            child: Text('Recet Product'),
          ),

        ],
      ),
    );
  }
}
