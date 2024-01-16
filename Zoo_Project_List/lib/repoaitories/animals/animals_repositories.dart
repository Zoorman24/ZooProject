import 'package:Zoo_Project/repoaitories/modelanimals/animals_model.dart';
import 'package:dio/dio.dart';

class AnimalsRepository{
Future<List<ApiAnimals>> getAnimalsList() async{

  final response = await Dio().get('');
  return response.data;
}

}