import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        DrawerHeader(
          // child: Center(child: Text("Flutter IN French ")),
          child: Image.asset('assets/logo_header.png'),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                  title: Text(
                "Accueil",
                style: GoogleFonts.robotoSlab(fontSize: 22.0),
              )),
              ListTile(
                  title: Text(
                "En savoir plus",
                style: GoogleFonts.robotoSlab(fontSize: 22.0),
              )),
            ],
          ),
        ),
        Container(
          child: Text(
            "Copyright 2021 - Tous droits réservés",
          ),
        )
      ]),
    );
  }
}
