import 'package:cryce/data/repository.dart';

class Injection {
  static Repository provideRepository() => Repository.getInstance();
}