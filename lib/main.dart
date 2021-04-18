import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infrench2021_2/screens/article_screen.dart';
import 'package:infrench2021_2/screens/contact_screen.dart';
import 'package:infrench2021_2/screens/home_screen.dart';

void main() => runApp(FlutterINFrenchApp());

class FlutterINFrenchApp extends StatelessWidget {
  const FlutterINFrenchApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterINFrench",
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/contact": (context) => ContactScreen(),
        "/article": (context) => ArticleScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.blue[800],
            textTheme: TextTheme(
                headline6: GoogleFonts.robotoSlab(
              fontSize: 30.0,
            ))),
      ),
    );
  }
}
