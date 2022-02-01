import 'package:bloc_pattern_full_code/bloc/article_bloc/article_bloc.dart';
import 'package:bloc_pattern_full_code/bloc/article_bloc/article_event.dart';
import 'package:bloc_pattern_full_code/bloc/article_bloc/article_state.dart';
import 'package:bloc_pattern_full_code/data/models/models.dart';
import 'package:bloc_pattern_full_code/data/repository/articles_repository.dart';
import 'package:bloc_pattern_full_code/pages_data/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (_) => ArticleBloc(
                articleRepository: ArticleRepositoryImp(),
              ),
          child: MyHomePage()),
    );
  }
}
