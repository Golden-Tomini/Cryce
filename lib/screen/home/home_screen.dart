import 'package:cryce/data/repository.dart';
import 'package:cryce/di/injection.dart';
import 'package:cryce/model/article.dart';
import 'package:cryce/screen/home/home_view_model.dart';
import 'package:cryce/widgets/general_card.dart';
import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final viewModel = HomeViewModel(repository: Injection.provideRepository());
  late final List<Article> articles;

  HomeScreen({super.key}) {
    articles = viewModel.getAllArticles();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(24.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Cryce',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightGreen
                  )
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/kucing.png'),
                )
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                 Image.asset(
                    'images/bannerhome.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                ),
                const Positioned(
                  top: -20,
                  left: 24,
                  right: 24,
                  child: SearchBarWidget(textPlaceholder: 'Cari Makanan, Artikel, dan Komunitas'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0).copyWith(top: 24.0),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Artikel Populer",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: articles.map((article) => GeneralCard(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(article.title)));
                    },
                    imageUrl: article.imageUrl,
                    title: article.title,
                    description: article.description
                  )).toList(),
                ),
              )
            ]),
          )
        ],
      )
    );
  }
}