import 'package:cryce/data/fake_data_source.dart';
import 'package:cryce/model/article.dart';
import 'package:cryce/model/comunity.dart';
import 'package:cryce/model/foodcategories.dart';


class Repository {
  final List<Article> _articles = List.empty(growable: true);
  final List<Comunity> _comunities = List.empty(growable: true);
  final List<FoodCategories> _foodCategories = List.empty(growable: true);

  Repository() {
    if (_articles.isEmpty) {
      _articles.insertAll(0, FakeDataSource.articles);
    } 
    if (_comunities.isEmpty) {
      _comunities.insertAll(0, FakeDataSource.comunity);
    }
    if (_foodCategories.isEmpty) {
      _foodCategories.insertAll(0, FakeDataSource.foodCategories);
    }
  }

  List<Article> getAllArticles() => _articles;
  List<FoodCategories> getAllFoodCategories() => _foodCategories;

  List<Comunity> getNearestComunity() {
    final shorted =  _comunities.toList();
    shorted.sort((a,b) => a.distance.toInt() - b.distance.toInt());
    return shorted.take(2).toList();
  }

  List<Comunity> getMostPopularComunity() {
    final shorted = _comunities.toList();
    shorted.sort((a,b) => b.memberCount.toInt() - a.memberCount.toInt());
    return shorted.take(2).toList();
  }

  static Repository? _instance;
  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }
}
