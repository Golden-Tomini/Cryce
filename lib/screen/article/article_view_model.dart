import 'package:cryce/data/repository.dart';
import 'package:cryce/model/article.dart';
import 'package:cryce/model/articlecategory.dart';

class ArticleViewModel {
  final Repository _repository;

  ArticleViewModel({required Repository repository}) : _repository = repository;

  List<Article> getAllArticles() => _repository.getAllArticles();
  List<ArticleCategory> getAllArticleCategories() => _repository.getAllArticleCategories();
}