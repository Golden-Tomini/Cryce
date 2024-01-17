import 'package:cryce/data/repository.dart';
import 'package:cryce/model/comunity.dart';

class ComunityViewModel {
  final Repository _repository;

  ComunityViewModel({required Repository repository}) : _repository = repository;

  List<Comunity> getNearestComunity() => _repository.getNearestComunity();
  List<Comunity> getMostPopularComunity() => _repository.getMostPopularComunity();
}