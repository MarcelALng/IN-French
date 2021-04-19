import 'package:flutter/foundation.dart';

class ArticleModel {
  String title;
  String date;
  String description;
  String imageUrl;

  ArticleModel({
    @required this.title,
    @required this.description,
    @required this.date,
    @required this.imageUrl,
  });
}
