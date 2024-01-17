import 'package:cryce/data/fake_data_source.dart';
import 'package:cryce/model/article.dart';

class Repository {
  final List<Article> _articles = List.empty(growable: true);

  Repository() {
    if (_articles.isEmpty) {
      _articles.insertAll(0, FakeDataSource.articles);
    }
  }

  List<Article> getAllArticles() => _articles;

  static Repository? _instance;
  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }
}