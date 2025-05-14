import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_formation/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_formation/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_formation/features/daily_news/presentation/widgets/article_widget.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily News",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
      builder: (context, state) {
        if (state is RemoteArticlesLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state is RemoteArticlesError) {
          return const Center(
            child: Icon(Icons.refresh),
          );
        }
        if (state is RemoteArticlesDone) {
          return ListView.builder(
            itemBuilder: (context, index) {
              // return ListTile(
              //   title: Text("$index"),
              // );

              return ArticleWidget(
                article: state.articles![index],
              );
            },
            itemCount: state.articles!.length,
          );
        }

        return const SizedBox();
      },
    );
  }
}
