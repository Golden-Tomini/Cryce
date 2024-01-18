import 'package:cryce/data/repository.dart';
import 'package:cryce/model/food.dart';
import 'package:cryce/model/foodcategory.dart';
import 'package:cryce/model/store.dart';

class MarketViewModel {
  final Repository _repository;

  MarketViewModel({required Repository repository}) : _repository = repository;

  List<FoodCategory> getAllFoodCategories() => _repository.getAllFoodCategories();
  List<Food> getNewestFoods() => _repository.getNewestFoods();
  List<Store> getNearestStores() => _repository.getNearestStores();
}