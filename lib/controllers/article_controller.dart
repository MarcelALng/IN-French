import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrench2021_2/models/article_model.dart';
class ArticleController extends ChangeNotifier {
  final Firestore _firestore = Firestore.instance;

  Future  getArticles async { 
    QuerySnapshot _dataFirestore = await  _firestore
      .collection("articles")
      .orderBy("date", descending: true)
      .getDocuments();

      List<ArticleModel> articlesData =
      _dataFirestore
      .documents
      .map((article) => ArticleModel(
        title: article.data["name"],
       description: article.data["description"],
        date: article.data["date"],
         imageUrl: article.data["preview"]))
      .toList();

      
  }
}
