import 'package:flutter/material.dart';
class DrawerTiles extends StatelessWidget {
  DrawerTiles({@required this.title,@required this.icons,@required this.onTap});
  final String title;
  final Icon icons;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title),
        leading: icons,
      ),
    );
  }
}
