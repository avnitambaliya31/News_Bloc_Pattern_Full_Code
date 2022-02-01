import 'package:bloc_pattern_full_code/data/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class ArticleState extends Equatable {}

class ArticleInitialState extends ArticleState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ArticlesLoaddingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ArticlesLoaddedState extends ArticleState {
  List<Articles> articlesData;

  ArticlesLoaddedState({required this.articlesData});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ArticlesErrorState extends ArticleState {
  String messsageData;
  ArticlesErrorState({required this.messsageData});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
