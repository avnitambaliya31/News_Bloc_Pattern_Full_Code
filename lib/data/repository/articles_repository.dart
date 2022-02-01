import 'dart:convert';

import 'package:bloc_pattern_full_code/data/models/models.dart';

import 'package:http/http.dart' as http;

abstract class ArticleRepository {
  Future<List<Articles>> getArticlesData();
}

class ArticleRepositoryImp extends ArticleRepository {
  @override
  Future<List<Articles>> getArticlesData() async {
    Uri url = Uri.parse(
        "http://newsapi.org/v2/everything?domains=wsj.com&language=en");

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Articles> articleReturn = ArticleApiModel.fromJson(data).articles!;
      return articleReturn;
    } else {
      throw Exception();
    }
  }
}
