import 'package:flutter/material.dart';
import 'DrawerTitleComp.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Shop App",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
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
                  child: Icon(
                    Icons.person,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
             DrawerTiles(title: "HomePage",icons: Icon(Icons.home,color: Colors.blue),onTap:(){}),
            DrawerTiles(title: "My acount",icons: Icon(Icons.account_circle,color: Colors.deepOrangeAccent),onTap:(){}),
            DrawerTiles(title: "My orders",icons: Icon(Icons.shopping_basket,color: Colors.red),onTap:(){}),
            DrawerTiles(title: "Categoris",icons: Icon(Icons.dashboard,color: Colors.greenAccent),onTap:(){}),
            DrawerTiles(title: "Favourites",icons: Icon(Icons.favorite,color: Colors.red),onTap:(){}),
            Divider(),
            DrawerTiles(title: "Settings",icons: Icon(Icons.settings),onTap:(){}),
            DrawerTiles(title: "About",icons: Icon(Icons.help),onTap:(){}),
          ],
        ),
      ),
      body: Container(),
    );
  }
}

