import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleController extends ChangeNotifier {
  final Firestore _firestore = Firestore.instance;

  get getArticles => _firestore
      .collection("articles")
      .orderBy("date", descending: true)
      .getDocuments();
}
