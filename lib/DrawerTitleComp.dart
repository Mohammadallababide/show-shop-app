import 'package:flutter/material.dart';

class DrawerTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ComponentOfDrawer(
          title: "HomePage",
          icons: Icon(Icons.home, color: Colors.blue),
          function: () {},
        ),
        ComponentOfDrawer(
            title: "My acount",
            icons: Icon(Icons.account_circle, color: Colors.deepOrangeAccent),
            function: () {}),
        ComponentOfDrawer(
            title: "My orders",
            icons: Icon(Icons.shopping_basket, color: Colors.red),
            function: () {}),
        ComponentOfDrawer(
            title: "Categoris",
            icons: Icon(Icons.dashboard, color: Colors.greenAccent),
            function: () {}),
        ComponentOfDrawer(
            title: "Favourites",
            icons: Icon(Icons.favorite, color: Colors.red),
            function: () {}),
        Divider(),
        ComponentOfDrawer(
            title: "Settings", icons: Icon(Icons.settings), function: () {}),
        ComponentOfDrawer(
            title: "About", icons: Icon(Icons.help), function: () {}),
      ],
    );
  }
}

class ComponentOfDrawer extends StatelessWidget {
  ComponentOfDrawer({this.title, this.icons, this.function});
  final Function function;
  final String title;
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: ListTile(
        title: Text(title),
        leading: icons,
      ),
    );
  }
}

