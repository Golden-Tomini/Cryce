import 'package:cryce/data/repository.dart';
import 'package:cryce/model/foodcategories.dart';

class MarketViewModel {
  final Repository _repository;

  MarketViewModel({required Repository repository}) : _repository = repository;

  List<FoodCategories> getAllFoodCategories() => _repository.getAllFoodCategories();
}