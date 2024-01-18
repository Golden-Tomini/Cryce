import 'package:cryce/data/repository.dart';
import 'package:cryce/model/article.dart';

class HomeViewModel {
  final Repository _repository;

  HomeViewModel({required Repository repository}) : _repository = repository;

  List<Article> getAllArticles() => _repository.getAllArticles();
}