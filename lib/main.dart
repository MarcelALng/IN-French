import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infrench2021_2/controllers/article_controller.dart';
import 'package:infrench2021_2/screens/article_screen.dart';
import 'package:infrench2021_2/screens/contact_screen.dart';
import 'package:infrench2021_2/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(FlutterINFrenchApp());

class FlutterINFrenchApp extends StatelessWidget {
  const FlutterINFrenchApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/logo_header.png"),
        context); // load image before show it
    return ChangeNotifierProvider(
      create: (context) => ArticleController(),
      child: MaterialApp(
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
      ),
    );
  }
}
