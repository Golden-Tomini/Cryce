import 'package:cryce/model/article.dart';
import 'package:cryce/widgets/general_card.dart';
import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

final articles = <Article>[
  Article(
    imageUrl: 'https://picsum.photos/200/300',
    title: 'Food Waste dan Pemborosan Makanan',
    description: 'Food waste atau sampah makanan adalah makanan yang dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste dapat terjadi di rumah, restoran, hotel, supermarket, dan lain-lain. Food waste juga dapat terjadi di tingkat produksi, distribusi, dan konsumsi. Food waste dapat berupa makanan yang masih layak dimakan, namun dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste juga dapat berupa makanan yang sudah tidak layak dimakan, namun masih dapat dimanfaatkan untuk hal lain seperti pakan ternak, pupuk, dan lain-lain.'
  ),
  Article(
    imageUrl: 'https://picsum.photos/200/301',
    title: 'Kenapa Sih Hidup?',
    description: 'Pernah ngerasa gak sih hidup lo gitu-gitu aja? Lo bangun pagi, mandi, sarapan, kerja, pulang, tidur, terus besoknya lagi. Dan begitu seterusnya. Hidup lo itu monoton banget. Lo gak pernah merasa hidup lo itu berwarna. Lo gak pernah merasa hidup lo itu menyenangkan. Lo gak pernah merasa hidup lo itu berarti. Lo gak pernah merasa hidup lo itu bermakna.'
  ),
  Article(
    imageUrl: 'https://picsum.photos/200/302',
    title: 'Top 5 Makanan Kucing',
    description: 'Kucing adalah hewan yang sangat lucu dan menggemaskan.'
  ),
  Article(
    imageUrl: 'https://picsum.photos/200/303',
    title: 'Ini dia 5 tanda kamu sedang depresi',
    description: 'Depresi adalah gangguan suasana hati yang ditandai dengan perasaan sedih yang berkepanjangan dan hilangnya minat pada aktivitas yang biasa dilakukan. Depresi dapat memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat terjadi pada siapa saja, pada usia berapa pun, dan pada saat keadaan apa pun. Namun, depresi tidak sama dengan kesedihan yang biasa Anda rasakan dari waktu ke waktu. Depresi adalah penyakit yang memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat menyebabkan berbagai masalah fisik dan emosional. Anda mungkin kesulitan melakukan aktivitas sehari-hari, dan mungkin merasa bahwa hidup tidak lagi bermakna.'
  ),
];

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

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
                  child: SearchBarWidget(),
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