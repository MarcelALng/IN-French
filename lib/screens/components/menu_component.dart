import 'package:flutter/material.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        DrawerHeader(
          child: Center(child: Text("Flutter IN French")),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              Text("Accueil"),
              Text("En savoir plus"),
            ],
          ),
        )
      ]),
    );
  }
}
