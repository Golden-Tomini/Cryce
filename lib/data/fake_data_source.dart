import 'package:cryce/model/article.dart';
import 'package:cryce/model/comunity.dart';
import 'package:cryce/model/foodcategories.dart';

class FakeDataSource {
  static List<Article> articles = [
    Article(
        imageUrl: 'https://picsum.photos/200/300',
        title: 'Food Waste dan Pemborosan Makanan',
        description:
            'Food waste atau sampah makanan adalah makanan yang dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste dapat terjadi di rumah, restoran, hotel, supermarket, dan lain-lain. Food waste juga dapat terjadi di tingkat produksi, distribusi, dan konsumsi. Food waste dapat berupa makanan yang masih layak dimakan, namun dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste juga dapat berupa makanan yang sudah tidak layak dimakan, namun masih dapat dimanfaatkan untuk hal lain seperti pakan ternak, pupuk, dan lain-lain.'),
    Article(
        imageUrl: 'https://picsum.photos/200/301',
        title: 'Kenapa sih kamu hidup?',
        description:
            'Pernah ngerasa gak sih hidup lo gitu-gitu aja? Lo bangun pagi, mandi, sarapan, kerja, pulang, tidur, terus besoknya lagi. Dan begitu seterusnya. Hidup lo itu monoton banget. Lo gak pernah merasa hidup lo itu berwarna. Lo gak pernah merasa hidup lo itu menyenangkan. Lo gak pernah merasa hidup lo itu berarti. Lo gak pernah merasa hidup lo itu bermakna.'),
    Article(
        imageUrl: 'https://picsum.photos/200/302',
        title: 'Top 5 Makanan Kucing',
        description: 'Kucing adalah hewan yang sangat lucu dan menggemaskan.'),
    Article(
        imageUrl: 'https://picsum.photos/200/303',
        title: 'Ini dia 5 tanda kamu sedang depresi',
        description:
            'Depresi adalah gangguan suasana hati yang ditandai dengan perasaan sedih yang berkepanjangan dan hilangnya minat pada aktivitas yang biasa dilakukan. Depresi dapat memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat terjadi pada siapa saja, pada usia berapa pun, dan pada saat keadaan apa pun. Namun, depresi tidak sama dengan kesedihan yang biasa Anda rasakan dari waktu ke waktu. Depresi adalah penyakit yang memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat menyebabkan berbagai masalah fisik dan emosional. Anda mungkin kesulitan melakukan aktivitas sehari-hari, dan mungkin merasa bahwa hidup tidak lagi bermakna.'),
  ];

  static List<Comunity> comunity = [
    Comunity(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'Food Waste dan Pemborosan Makanan',
      description:
          'Food waste atau sampah makanan adalah makanan yang dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste dapat terjadi di rumah, restoran, hotel, supermarket, dan lain-lain. Food waste juga dapat terjadi di tingkat produksi, distribusi, dan konsumsi. Food waste dapat berupa makanan yang masih layak dimakan, namun dibuang karena tidak dimakan atau tidak dimanfaatkan. Food waste juga dapat berupa makanan yang sudah tidak layak dimakan, namun masih dapat dimanfaatkan untuk hal lain seperti pakan ternak, pupuk, dan lain-lain.',
      distance: 120,
      memberCount: 45,
    ),
    Comunity(
      imageUrl: 'https://picsum.photos/200/301',
      title: 'Kenapa sih kamu hidup?',
      description:
          'Pernah ngerasa gak sih hidup lo gitu-gitu aja? Lo bangun pagi, mandi, sarapan, kerja, pulang, tidur, terus besoknya lagi. Dan begitu seterusnya. Hidup lo itu monoton banget. Lo gak pernah merasa hidup lo itu berwarna. Lo gak pernah merasa hidup lo itu menyenangkan. Lo gak pernah merasa hidup lo itu berarti. Lo gak pernah merasa hidup lo itu bermakna.',
      distance: 12,
      memberCount: 13,
    ),
    Comunity(
      imageUrl: 'https://picsum.photos/200/302',
      title: 'Top 5 Makanan Kucing',
      description: 'Kucing adalah hewan yang sangat lucu dan menggemaskan.',
      distance: 0.95,
      memberCount: 40,
    ),
    Comunity(
      imageUrl: 'https://picsum.photos/200/303',
      title: 'Ini dia 5 tanda kamu sedang depresi',
      description:
          'Depresi adalah gangguan suasana hati yang ditandai dengan perasaan sedih yang berkepanjangan dan hilangnya minat pada aktivitas yang biasa dilakukan. Depresi dapat memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat terjadi pada siapa saja, pada usia berapa pun, dan pada saat keadaan apa pun. Namun, depresi tidak sama dengan kesedihan yang biasa Anda rasakan dari waktu ke waktu. Depresi adalah penyakit yang memengaruhi cara Anda berpikir, merasa, dan berperilaku. Depresi dapat menyebabkan berbagai masalah fisik dan emosional. Anda mungkin kesulitan melakukan aktivitas sehari-hari, dan mungkin merasa bahwa hidup tidak lagi bermakna.',
      distance: 1.2,
      memberCount: 12,
    ),
  ];

  static List<FoodCategories> foodCategories = [
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'Makanan Berat',
    ),
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/301',
      title: 'Roti & Kue',
    ),
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/302',
      title: 'Cemilan',
    ),
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/303',
      title: 'Minuman',
    ),
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/304',
      title: 'Buah & Sayur',
    ),
    FoodCategories(
      imageUrl: 'https://picsum.photos/200/305',
      title: 'Bahan Makanan',
    ),
  ];
}
