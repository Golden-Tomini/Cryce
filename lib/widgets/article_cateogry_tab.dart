import 'package:cryce/di/injection.dart';
import 'package:cryce/model/articlecategory.dart';
import 'package:cryce/screen/article/article_view_model.dart';
import 'package:flutter/material.dart';

class ArticleCategoryTabs extends StatefulWidget {
  final viewModel = ArticleViewModel(repository: Injection.provideRepository());
  late final List<ArticleCategory> articleCategory;

  ArticleCategoryTabs({super.key}) {
    articleCategory = viewModel.getAllArticleCategories();
  }

  @override
  State<ArticleCategoryTabs> createState() => _ArticleCategoryTabsState();
}

class _ArticleCategoryTabsState extends State<ArticleCategoryTabs> {
  List<String> title = [
    'haha',
    'haha',
    'haha',
    'haha',
  ];
  int current = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView.builder(
              itemCount: widget.articleCategory.length,
              itemBuilder: (context, index) {
                final articleCategory = widget.articleCategory[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                        pageController.animateToPage(current,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.all(5),
                        width: 100,
                        height: 55,
                        decoration: BoxDecoration(
                          color: current == index
                              ? Colors.white70
                              : Colors.white54,
                          border: current == index
                              ? Border.all(color: Colors.lightGreen, width: 2.5)
                              : null,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                articleCategory.title,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 500,
            child: PageView.builder(
              itemCount: widget.articleCategory.length,
              controller: pageController,
              itemBuilder: (context, index) {
                return Text(title[current]);
              },
            ),
          )
        ],
      ),
    );
  }
}
