

import 'package:Zoo_Project/repoaitories/modelanimals/animals_model.dart';
import 'package:dio/dio.dart';

class AnimalsRepository{
Future<List<ApiAnimals>> getAnimalsList() async{

  final response = await Dio().get('http://78.153.7.158/animals');
  final data = response.data;

  final animalsList = data.map((e) => ApiAnimals(id: e.value, name: e.value)).toList;
   return animalsList;
}
 
} 