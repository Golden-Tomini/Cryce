import 'package:cryce/data/fake_data_source.dart';
import 'package:cryce/model/article.dart';
import 'package:cryce/model/articlecategory.dart';
import 'package:cryce/model/comunity.dart';
import 'package:cryce/model/food.dart';
import 'package:cryce/model/foodcategory.dart';
import 'package:cryce/model/store.dart';

class Repository {
  final List<Article> _articles = List.empty(growable: true);
  final List<Comunity> _comunities = List.empty(growable: true);
  final List<FoodCategory> _foodCategories = List.empty(growable: true);
  final List<ArticleCategory> _articleCategories = List.empty(growable: true);
  final List<Food> _foods = List.empty(growable: true);
  final List<Store> _stores = List.empty(growable: true);

  Repository() {
    if (_articles.isEmpty) {
      _articles.insertAll(0, FakeDataSource.articles);
    }
    if (_comunities.isEmpty) {
      _comunities.insertAll(0, FakeDataSource.comunities);
    }
    if (_foodCategories.isEmpty) {
      _foodCategories.insertAll(0, FakeDataSource.foodCategories);
    }
    if (_foods.isEmpty) {
      _foods.insertAll(0, FakeDataSource.foods);
    }
    if (_stores.isEmpty) {
      _stores.insertAll(0, FakeDataSource.stores);
    }
    if (_articleCategories.isEmpty) {
      _articleCategories.insertAll(0, FakeDataSource.articleCategories);
    }
  }

  List<Article> getAllArticles() => _articles;
  List<FoodCategory> getAllFoodCategories() => _foodCategories;
  List<ArticleCategory> getAllArticleCategories() => _articleCategories;

  List<Comunity> getNearestComunities() {
    final shorted = _comunities.toList();
    shorted.sort((a, b) => a.distance.toInt() - b.distance.toInt());
    return shorted.take(2).toList();
  }

  List<Comunity> getMostPopularComunities() {
    final shorted = _comunities.toList();
    shorted.sort((a, b) => b.memberCount.toInt() - a.memberCount.toInt());
    return shorted.take(2).toList();
  }

  List<Food> getNewestFoods() {
    final shorted = _foods.toList();
    shorted.sort((a, b) => b.timePosted.compareTo(a.timePosted));
    return shorted.toList();
  }

  List<Store> getNearestStores() {
    final shorted = _stores.toList();
    shorted.sort((a, b) => a.distance.toInt() - b.distance.toInt());
    return shorted.take(4).toList();
  }

  static Repository? _instance;
  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }
}
