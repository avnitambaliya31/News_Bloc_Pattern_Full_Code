import 'package:bloc_pattern_full_code/bloc/article_bloc/article_event.dart';
import 'package:bloc_pattern_full_code/bloc/article_bloc/article_state.dart';
import 'package:bloc_pattern_full_code/data/models/models.dart';
import 'package:bloc_pattern_full_code/data/repository/articles_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository articleRepository;

  ArticleBloc({required this.articleRepository})
      : super(ArticleInitialState()) {
    // @override
    // ArticleState get initialState => ArticleInitialState();
    //  final sequentialTransformer = sequential<TestBlocEvent>();
    on<ArticleFetchedEvent>(
      (event, emit) async {
        await Future.delayed(Duration(seconds: 3));
        final activity = await articleRepository.getArticlesData();
        if (event is ArticleFetchedEvent) {
          emit(ArticlesLoaddingState());
          try {
            emit(ArticlesLoaddedState(articlesData: activity));
          } catch (e) {
            emit(ArticlesErrorState(messsageData: e.toString()));
          }
        }
      },
    );
  }

  // Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
  //   if (event is ArticleFetchedEvent) {
  //     yield ArticlesLoaddingState();
  //
  //     try {
  //
  //       List<Articles> articlesData = await articleRepository.getArticlesData();

  //       yield ArticlesLoaddedState(articlesData: articlesData);
  //     } catch (e) {
  //       yield ArticlesErrorState(messsageData: e.toString());
  //     }
  //   }
  // }
}
