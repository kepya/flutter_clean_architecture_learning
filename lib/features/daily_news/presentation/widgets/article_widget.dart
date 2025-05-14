import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_formation/features/daily_news/domain/entities/article.dart';

class ArticleWidget extends StatelessWidget {
  final ArticleEntity article;
  const ArticleWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 16,
      ),
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          Image.network(
            article.urlToImage!,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.4,
            height: 250,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title!,
                  maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  article.content!,
                  maxLines: 6,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
