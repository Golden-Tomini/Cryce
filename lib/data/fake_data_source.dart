import 'package:cryce/model/article.dart';
import 'package:cryce/model/articlecategory.dart';
import 'package:cryce/model/comunity.dart';
import 'package:cryce/model/food.dart';
import 'package:cryce/model/foodcategory.dart';
import 'package:cryce/model/store.dart';

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

  static List<Comunity> comunities = [
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

  static List<FoodCategory> foodCategories = [
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'Makanan Berat',
    ),
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/301',
      title: 'Roti & Kue',
    ),
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/302',
      title: 'Cemilan',
    ),
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/303',
      title: 'Minuman',
    ),
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/304',
      title: 'Buah & Sayur',
    ),
    FoodCategory(
      imageUrl: 'https://picsum.photos/200/305',
      title: 'Bahan Makanan',
    ),
  ];

  static List<Food> foods = [
    Food(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'Makanan Berat',
      price: 15000,
      timePosted: DateTime.now(),
      distance: 1.2,
    ),
    Food(
      imageUrl: 'https://picsum.photos/200/301',
      title: 'Makanan sedang',
      price: 15000,
      timePosted: DateTime.now().subtract(const Duration(days: 4)),
      distance: 0.2,
    ),
    Food(
      imageUrl: 'https://picsum.photos/200/302',
      title: 'Makanan ringan ',
      price: 15000,
      timePosted: DateTime.now().subtract(const Duration(days: 1)),
      distance: 1,
    ),
    Food(
      imageUrl: 'https://picsum.photos/200/303',
      title: 'Makanan enteng',
      price: 15000,
      timePosted: DateTime.now().subtract(const Duration(days: 3)),
      distance: 0.1,
    ),
  ];


  static List<Store> stores = [
    Store(
      imageUrl: 'https://picsum.photos/200/300',
      title: 'Toko naruto',
      distance: 1.2,
      storeCategory: 'makanan berat, minuman',
    ),
    Store(
      imageUrl: 'https://picsum.photos/200/301',
      title: 'Ichiraku ramen',
      distance: 0.2,
      storeCategory: 'makanan berat, minuman',
    ),
    Store(
      imageUrl: 'https://picsum.photos/200/302',
      title: 'Mawar sharon',
      distance: 1,
      storeCategory: 'makanan berat, minuman',
    ),
    Store(
      imageUrl: 'https://picsum.photos/200/303',
      title: 'Mak ude',
      distance: 0.1,
      storeCategory: 'makanan berat, minuman',
    ),
  ];

  static List<ArticleCategory> articleCategories = [
    ArticleCategory(title: 'Food wate'),
    ArticleCategory(title: 'Sisa makanan'),
    ArticleCategory(title: 'Miskin'),
    ArticleCategory(title: 'Programmer'),
  ];


}
