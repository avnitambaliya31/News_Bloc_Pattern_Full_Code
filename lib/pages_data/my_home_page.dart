import 'package:bloc_pattern_full_code/bloc/article_bloc/article_bloc.dart';
import 'package:bloc_pattern_full_code/bloc/article_bloc/article_event.dart';
import 'package:bloc_pattern_full_code/bloc/article_bloc/article_state.dart';
import 'package:bloc_pattern_full_code/data/models/models.dart';
import 'package:bloc_pattern_full_code/pages_data/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ArticleBloc? articleBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    articleBloc = BlocProvider.of<ArticleBloc>(context);
    articleBloc!.add(ArticleFetchedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Block Pattran Data"),
      ),
      body: Container(
        child:
            BlocBuilder<ArticleBloc, ArticleState>(builder: (context, state) {
          if (state is ArticleInitialState) {
            print("this dtaa is Aericleinitialixing daa");
            return buildLoading();
          } else if (state is ArticlesLoaddingState) {
            print("this tis is loading datya");
            return buildLoading();
          } else if (state is ArticlesLoaddedState) {
            return buildArticlesList(state.articlesData);
          } else if (state is ArticlesErrorState) {
            return buildError(state.messsageData);
          }
          return Center(
            child: Text("datat initializing nathi thata"),
          );
        }),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildError(String string) {
    return Center(
      child: Text(
        string,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget buildArticlesList(List<Articles> article) {
    return ListView.builder(
        itemCount: article.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (_) => DetailsPage(articlesData: article[index])));
              },
              child: ListTile(
                leading: Image.network(
                  article[index].urlToImage!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  article[index].title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  article[index].description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        });
  }
}
