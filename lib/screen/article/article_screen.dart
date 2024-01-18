import 'package:cryce/di/injection.dart';
import 'package:cryce/model/article.dart';
import 'package:cryce/screen/article/article_view_model.dart';
import 'package:cryce/widgets/article_cateogry_tab.dart';
import 'package:cryce/widgets/general_card.dart';
import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  final viewModel = ArticleViewModel(repository: Injection.provideRepository());
  late final List<Article> articles;

  ArticleScreen({super.key}) {
    articles = viewModel.getAllArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.all(24.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Artikel',
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightGreen)),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/kucing.png'),
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: const SearchBarWidget(textPlaceholder: 'Cari artikel'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0)
                    .copyWith(top: 24.0),
                child: Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Artikel Populer",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500)),
                      Text(
                        "lihat semua",
                        style: TextStyle(
                          fontSize: 14.0,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 210,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 12.0,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: articles.length,
                      itemBuilder: (context, i) {
                        final article = articles[i];
                        return GeneralCard(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(article.title)));
                            },
                            imageUrl: article.imageUrl,
                            title: article.title,
                            description: article.description);
                      },
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
